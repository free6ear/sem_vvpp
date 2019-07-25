package sem_vvpp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import sem_vvpp.bean.Carousel;
import sem_vvpp.util.DBUtil;
import sem_vvpp.util.DateUtil;

public class CarouselDAO {
	
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
		
		String sql = "update carousel set title = ?, path = ? where id = ?";
		try (Connection c = DBUtil.getConnection(); PreparedStatement ps = c.prepareStatement(sql);) {
			
			ps.setString(1, bean.getTitle());
			ps.setString(2, bean.getPath());
			ps.setInt(3, bean.getId());
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
	
	public List<Carousel> list(int start, int count) {
		List<Carousel> beans = new ArrayList<Carousel>();
		
		String sql = "select * from carousel limit ?,? ";
		
		try (Connection c = DBUtil.getConnection(); PreparedStatement ps = c.prepareStatement(sql);) {
			
			ps.setInt(1, start);
			ps.setInt(2, count);
			
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
