package bean;
import java.util.List;
import java.util.Map;
import util.DBUtil;
public class Air {
	private String flightnumber;
	private String start;
	private String finish;
	private String starttime;
	private String finishtime;
        private int price;//商品价格
	private int kucun;//商品库存

	private DBUtil db;
	public Air(){
		db = new DBUtil();	}
        public String getFlightnumber() {
		return flightnumber;	}
	public void setFlightnumber(String flightnumber) {
		this.flightnumber = flightnumber;	}
	public String getStart() {
		return start;	}
	public void setStart(String start) {
		this.start = start;	}
	public String getFinish() {
		return finish;	}
	public void setFinish(String finish) {
		this.finish = finish;	}
	public String getStarttime() {
		return starttime;	}
	public void setStarttime(String starttime) {
		this.starttime = starttime;	}
	public String getFinishtime() {
		return finishtime;	}
	public void setFinishtime(String finishtime) {
		this.finishtime = finishtime;	}
        public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
        public int getKucun() {
		return kucun;
	}
	public void setKucun(int kucun) {
		this.kucun = kucun;
	}
        
	public List getAllAirs(){
		List airs = null;
		String sql = "select * from flight";
		airs = db.getList(sql, null);
		return airs;     	}

	public int addAir(){
		int result = 0;
		String sql = "insert into flight values(?,?,?,?,?)";
		String[] params = {flightnumber,start,finish,starttime,finishtime};
		result = db.update(sql, params);
		return result;}

	public Map getAir(){
		Map air = null;
		String sql = "select * from flight where flightnumber=?";
		String[] params={flightnumber};
		air = db.getMap(sql, params);
		return air;
	}

	public int updateAir(){
		int result = 0;
		String sql = "update flight set start=?,finish=?,starttime=?,finishtime=? where flightnumber=?";
		String[] params = {start,finish,starttime,finishtime,flightnumber};
		result = db.update(sql, params);
		return result;
	}

	public int delAir(){
		int result = 0;
		String sql = "delete from flight where flightnumber=?";
		String[] params = {flightnumber};
		result = db.update(sql, params);
		return result;
	}
}
