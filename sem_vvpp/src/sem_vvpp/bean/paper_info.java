package sem_vvpp.bean;

import java.util.Date;

public class paper_info {
	private int id;
	private String title;
	private String author;
	private Date createDate;
	private String paperFile;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getPaperFile() {
		return paperFile;
	}
	public void setPaperFile(String paperFile) {
		this.paperFile = paperFile;
	}
}
