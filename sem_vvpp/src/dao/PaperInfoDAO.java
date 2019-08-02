package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import bean.PaperInfo;
import util.DBUtil;
import util.DateUtil;

public class PaperInfoDAO {

	public int getTotal() {
		int total = 0;

		try (Connection c = DBUtil.getConnection(); Statement s = c.createStatement();) {

			String sql = "select count(*) from paper_info";

			ResultSet rs = s.executeQuery(sql);

			while (rs.next()) {
				total = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return total;
	}

    public static PaperInfo get(int id) {

		PaperInfo bean = new PaperInfo();

		String sql = "select * from paper_info where id = ?";

		try (Connection c = DBUtil.getConnection(); PreparedStatement ps = c.prepareStatement(sql);) {

			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				id = rs.getInt(1);
				String title = rs.getString("title");
				String author = rs.getString("author");
				String path = rs.getString("path");
				Date createDate = DateUtil.t2d(rs.getTimestamp("create_date"));
				String type = rs.getString("type");

				bean.setTitle(title);
				bean.setAuthor(author);
				bean.setPath(path);
				bean.setCreateDate(createDate);
				bean.setId(id);
				bean.setType(type);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return bean;
    }

    public void add(PaperInfo bean) {

		String sql = "insert into paper_info values(null, ?, ?, ?, ?, ?)";

		try (Connection c = DBUtil.getConnection(); PreparedStatement ps = c.prepareStatement(sql);) {

			ps.setString(1, bean.getTitle());
			ps.setString(2, bean.getAuthor());
			ps.setTimestamp(3, DateUtil.d2t(bean.getCreateDate()));
			ps.setString(4, bean.getPath());
			ps.setString(5, bean.getType());
			ps.execute();
			
			ResultSet rs = ps.getGeneratedKeys();
			
			if (rs.next()) {
				int id = rs.getInt(1);
				bean.setId(id);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
	public static void update(PaperInfo bean) {

		String sql = "update paper_info set title = ?, author = ?, type = ? where id = ?";
		try (Connection c = DBUtil.getConnection(); PreparedStatement ps = c.prepareStatement(sql);) {

			ps.setString(1, bean.getTitle());
			ps.setString(2, bean.getAuthor());
			ps.setString(3, bean.getType());
			ps.setInt(4, bean.getId());
			ps.execute();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void delete(int id) {
		
		try (Connection c = DBUtil.getConnection(); Statement s = c.createStatement();) {
			
			String sql = "delete from paper_info where id = " + id;
			
			s.execute(sql);
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}

	public List<PaperInfo> list(int start, int count) {

		List<PaperInfo> beans = new ArrayList<PaperInfo>();

		String sql = "select * from paper_info limit ?,?";

		try (Connection c = DBUtil.getConnection(); PreparedStatement ps = c.prepareStatement(sql);) {

			ps.setInt(1, start);
			ps.setInt(2, count);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				PaperInfo bean = new PaperInfo();
				int id = rs.getInt(1);
				String title = rs.getString("title");
				String author = rs.getString("author");
				String path = rs.getString("path");
				Date createDate = DateUtil.t2d(rs.getTimestamp("create_date"));
				String type = rs.getString("type");

				bean.setTitle(title);
				bean.setAuthor(author);
				bean.setPath(path);
				bean.setCreateDate(createDate);
				bean.setId(id);
				bean.setType(type);
				beans.add(bean);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return beans;
	}

	public List<PaperInfo> listLatest(int count) {

		List<PaperInfo> beans = new ArrayList<PaperInfo>();

		String sql = "select * from paper_info order by id desc limit " + count;

		try (Connection c = DBUtil.getConnection(); PreparedStatement ps = c.prepareStatement(sql);) {

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				PaperInfo bean = new PaperInfo();
				int id = rs.getInt(1);
				String title = rs.getString("title");
				String author = rs.getString("author");
				String path = rs.getString("path");
				Date createDate = DateUtil.t2d(rs.getTimestamp("create_date"));
				String type = rs.getString("type");

				bean.setTitle(title);
				bean.setAuthor(author);
				bean.setPath(path);
				bean.setCreateDate(createDate);
				bean.setId(id);
				bean.setType(type);
				beans.add(bean);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return beans;
	}
	
	public List<PaperInfo> search(String keyword, int start, int count) {
		
		List<PaperInfo> beans = new ArrayList<PaperInfo>();
		
		if (null == keyword || 0 == keyword.trim().length())
			return beans;
		
		String sql = "select * from paper_info where title like ? limit ?,?";
		
		try (Connection c = DBUtil.getConnection(); PreparedStatement ps = c.prepareStatement(sql);) {
			
			ps.setString(1, "%"+keyword.trim()+"%");
			ps.setInt(2, start);
			ps.setInt(3, count);
			
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				PaperInfo bean = new PaperInfo();
				int id = rs.getInt(1);
				String title = rs.getString("title");
				String author = rs.getString("author");
				Date createDate = DateUtil.t2d(rs.getTimestamp("create_date"));
				String path = rs.getString("path");
				String type = rs.getString("type");
				
				bean.setTitle(title);
				bean.setAuthor(author);
				bean.setCreateDate(createDate);
				bean.setPath(path);
				bean.setId(id);
				bean.setType(type);
				beans.add(bean);
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return beans;
	}
}
