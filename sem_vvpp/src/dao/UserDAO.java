package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import java.sql.Connection;
import java.sql.SQLException;

import bean.User;
import util.DBUtil;;

public class UserDAO {
	
	public void add(User bean) {
		
		String sql = "insert into user values(null, ?, ?)";
		try (Connection c = DBUtil.getConnection(); PreparedStatement ps = c.prepareStatement(sql);) {
			
			ps.setString(1, bean.getName());
			ps.setString(2, bean.getPassword());
			
			ps.execute();
			
			ResultSet rs = ps.getGeneratedKeys();
			if(rs.next()) {
				int id = rs.getInt(1);
				bean.setId(id);
			} 
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
	
	public void update(User bean) {
		
		String sql = "update user set name= ?, password = ? where id = ?";
		try (Connection c = DBUtil.getConnection(); PreparedStatement ps = c.prepareStatement(sql);) {
			
			ps.setString(1, bean.getName());
			ps.setString(2, bean.getPassword());
			ps.setInt(3, bean.getId());
			
			ps.execute();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
	
	public void delete(int id) {
		try (Connection c= DBUtil.getConnection(); Statement s = c.createStatement();) {
			
			String sql = "delete from user where id = " + id;
			
			s.execute(sql);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
	
	public User get(int id) {
		User bean = null;
		
		try (Connection connection = DBUtil.getConnection(); Statement s = connection.createStatement();) {
			
			String sql = "select * from user where id = " + id;
			
			ResultSet rs = s.executeQuery(sql);
			
			if (rs.next()) {
				bean = new User();
				String name = rs.getString("name");
				bean.setName(name);
				String password = rs.getString("password");
				bean.setPassword(password);
				bean.setId(id);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return bean;
	}
	
	public User get(String name) {
		User bean = null;
		
		String sql = "select * from user where name = ?";
		try (Connection c = DBUtil.getConnection(); PreparedStatement ps = c.prepareStatement(sql);){
			
			ps.setString(1, name);
			ResultSet rs = ps.executeQuery();
			
			if (rs.next()) {
				bean = new User();
				int id = rs.getInt("id");
				bean.setName(name);
				String password = rs.getString("password");
				bean.setPassword(password);
				bean.setId(id);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return bean;
	}
	
	public User get(String name, String password) {
		User bean = null;
		
		String sql = "select * from user where name = ? and password = ?";
		
		try (Connection c = DBUtil.getConnection(); PreparedStatement ps = c.prepareStatement(sql);) {
			
			ps.setString(1, name);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			
			if (rs.next()) {
				bean = new User();
				int id = rs.getInt("id");
				bean.setName(name);
				bean.setPassword(password);
				bean.setId(id);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return bean;
	}
}
