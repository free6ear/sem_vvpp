package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import bean.Carousel;
import util.DBUtil;
import util.DateUtil;

public class CarouselDAO {

	public static Carousel get(int id) {

		Carousel bean = new Carousel();

		String sql = "select * from carousel where id = ?";

		try (Connection c = DBUtil.getConnection(); PreparedStatement ps = c.prepareStatement(sql);) {

			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				id = rs.getInt(1);
				String title = rs.getString("title");
				String path = rs.getString("path");
				Date createDate = DateUtil.t2d(rs.getTimestamp("create_date"));

				bean.setTitle(title);
				bean.setPath(path);
				bean.setCreateDate(createDate);
				bean.setId(id);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return bean;
	}


	public int getTotal(int id) {
		int total = 0;
		try (Connection c = DBUtil.getConnection(); Statement s = c.createStatement();) {
			
			String sql = "select count(*) from carousel where id = " + id;
			
			ResultSet rs = s.executeQuery(sql);
			
			while (rs.next()) {
				total = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return total;
	}
	
	public void add(Carousel bean) {
		
		String sql = "insert into carousel values(null, ?, ?, ?)";
		try (Connection c = DBUtil.getConnection(); PreparedStatement ps = c.prepareStatement(sql);) {
			
			ps.setString(1, bean.getTitle());
			ps.setString(2, bean.getPath());
			ps.setTimestamp(3, DateUtil.d2t(bean.getCreateDate()));
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
	
	public void update(Carousel bean) {
		
		String sql = "update carousel set title = ? where id = ?";
		try (Connection c = DBUtil.getConnection(); PreparedStatement ps = c.prepareStatement(sql);) {
			
			ps.setString(1, bean.getTitle());
			ps.setInt(2, bean.getId());
			ps.execute();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
	
	public void delete(int id) {
		
		try (Connection c = DBUtil.getConnection(); Statement s = c.createStatement();) {
			
			String sql = "delete from carousel where id = " + id;
			
			s.execute(sql);
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
	
	public List<Carousel> list() {
		List<Carousel> beans = new ArrayList<Carousel>();
		
		String sql = "select * from carousel";
		
		try (Connection c = DBUtil.getConnection(); PreparedStatement ps = c.prepareStatement(sql);) {
			

			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				Carousel bean = new Carousel();
				int id = rs.getInt(1);
				String title = rs.getString("title");
				String path = rs.getString("path");
				Date createDate = DateUtil.t2d(rs.getTimestamp("create_date"));
				
				bean.setTitle(title);
				bean.setPath(path);
				bean.setId(id);
				bean.setCreateDate(createDate);
				
				beans.add(bean);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return beans;
	}
}
