/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.util.List;
import java.util.Map;
import util.DBUtil;
public class Jip {
	private String aflightnumber;
	private String aseat;
	private String price;
	private DBUtil db;
	public Jip(){
		db = new DBUtil();	}
        public String getAflightnumber() {
		return aflightnumber;	}
	public void setAflightnumber(String aflightnumber) {
		this.aflightnumber = aflightnumber;	}
        
	public String getAseat() {
		return aseat;	}
	public void setAseat(String aseat) {
		this.aseat = aseat;	}
        
	public String getPrice() {
		return price;	}
       public void setPrice(String price) {
		this.price = price;}
       
	public List getAllJips(){
		List jips = null;
		String sql = "select * from airticket";
		jips = db.getList(sql, null);
		return jips;     	}

	public int addJip(){
		int result = 0;
		String sql = "insert into airticket values(?,?,?)";
		String[] params = {aflightnumber,aseat,price};
		result = db.update(sql, params);
		return result;}

	public Map getJip(){
		Map jip = null;
		String sql = "select * from airticket where aflightnumber=?";
		String[] params={aflightnumber};
		jip = db.getMap(sql, params);
		return jip;
	}

	public int updateJip(){
		int result = 0;
		String sql = "update airticket set aseat=?,price=? where aflightnumber=?";
		String[] params = {aseat,price,aflightnumber};
		result = db.update(sql, params);
		return result;
	}

	public int delJip(){
		int result = 0;
		String sql = "delete from airticket where aflightnumber=? and aseat=?";
		String[] params = {aflightnumber,aseat};
		result = db.update(sql, params);
		return result;
	}


}
