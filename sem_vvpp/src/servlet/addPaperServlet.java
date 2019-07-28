package servlet;

import bean.PaperInfo;
import dao.PaperInfoDAO;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class addPaperServlet extends HttpServlet {

    ArrayList formInfo = new ArrayList();
    String title = null;
    String author = null;
    String path = null;
    
    PaperInfo bean = new PaperInfo();
    PaperInfoDAO dao = new PaperInfoDAO();
    
    //上传文件存储路径
    protected static final String UPLOAD_DIRECTORY = "papers_upload";

    //上传配置
    private static final int MEMORY_THRESHOLD = 1024 * 1024 * 3;
    private static final int MAX_FILE_SIZE = 1024 * 1024 * 40;
    private static final int MAX_REQUEST_SIZE = 1024 * 1024 * 50;

    /*
    *上传数据及保存文件
    */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        PaperInfo paper_info = new PaperInfo();
        PaperInfoDAO pdao = new PaperInfoDAO();


        //检测是否为多媒体上传
        if (!ServletFileUpload.isMultipartContent(request)) {
             //如果不是则停止
            PrintWriter writer = response.getWriter();
            writer.println("Error: 表单必须包含enctype=multipart/form-data");
            writer.flush();
            return;
        }

        //配置上传参数
        DiskFileItemFactory factory = new DiskFileItemFactory();

        //设置上传参数
        factory.setSizeThreshold(MEMORY_THRESHOLD);

        //设置内存临界值——超过后将产生临时文件并存储于临时目录中
        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));

        //设置临时存储目录
        ServletFileUpload upload = new ServletFileUpload(factory);

        //设置最大文件上传值
        upload.setFileSizeMax(MAX_FILE_SIZE);

        //设置最大请求值（包含文件和表单数据）
        upload.setFileSizeMax(MAX_REQUEST_SIZE);

        //中文处理
        upload.setHeaderEncoding("utf-8");

        //构造临时路径来存储上传的文件
        //该路径相对当前应用的目录
        String uploadPath = request.getServletContext().getRealPath("./") + File.separator + UPLOAD_DIRECTORY;

        //如果目录不存在则创建
        File uploadDir = new File(uploadPath);
        if(!uploadDir.exists()){
            uploadDir.mkdir();
        }

        try {
            //解析请求的内容提取文件数据
            @SuppressWarnings("unchecked")
            List<FileItem> formItems = upload.parseRequest(request);

            if (formItems != null && formItems.size() > 0) {

                //迭代表单数据
                for (FileItem item : formItems) {

                    if (item.isFormField()) {

                        String formFieldInfo = item.getString();
                        formFieldInfo = new String(formFieldInfo.getBytes("ISO-8859-1"), "UTF-8");
                        formInfo.add(formFieldInfo);
                    }

                    //处理不在表单中的字段
                    if (!item.isFormField()) {
                        String fileName = new File(item.getName()).getName();
                        String path = uploadPath + File.separator + fileName;
                        File StoreFile = new File(path);

                        bean.setPath(path);
                        
                        item.write(StoreFile);
                        response.getWriter().write("<script>alert(\"上传成功!\");</script>");
                    }
                }
            }

            bean.setTitle(formInfo.get(0).toString());
            bean.setAuthor(formInfo.get(1).toString());

            dao.add(bean);

        } catch (Exception ex) {
            request.setAttribute("message", "错误信息：" + ex.getMessage());
        }

        request.getServletContext().getRequestDispatcher("/message.jsp").forward(request, response);
    }
}
