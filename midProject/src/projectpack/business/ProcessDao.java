package projectpack.business;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import projectpack.mybatis.SqlMapConfig;



public class ProcessDao {
	private static ProcessDao dao = new ProcessDao();
	public static ProcessDao getInstance(){
		return dao;
	}
	private SqlSessionFactory factory = SqlMapConfig.getSqlSession();
	//캘린더인서트
	public boolean insertCalendar(CalendarDto dto){
		SqlSession sqlSession = factory.openSession();
		boolean b = false;
		try {
			int re = sqlSession.insert("insertCalendar", dto);
			if(re > 0) b = true;
			sqlSession.commit();
			
		} catch (Exception e) {
			sqlSession.rollback();
		}finally {
			if(sqlSession != null) sqlSession.close();
		}
			return b;	
	}
	
	//고객 로그인	
	public boolean c_login(HashMap<String, String> map){
		boolean b = false;
		SqlSession sqlSession = factory.openSession();
		try {
			CustomerDto dto = sqlSession.selectOne("loginCustomer", map);
			if(dto != null) b = true;
		} catch (Exception e) {
			System.out.println(e);
		}finally {
			if(sqlSession != null) sqlSession.close();
		}
		return b;
	}
	
	//관리자 로그인	
	public boolean a_login(HashMap<String, String> map){
		
		boolean b = false;
		SqlSession sqlSession = factory.openSession();
		try {
			AdminDto dto = sqlSession.selectOne("loginAdmin", map);
			if(dto != null) b = true;
		} catch (Exception e) {
			System.out.println(e);
		}finally {
			if(sqlSession != null) sqlSession.close();
		}
		return b;
	}
	//우편번호  sql
	public List zipcodeRead(String area3){
		SqlSession sqlSession = factory.openSession();
		List list = sqlSession.selectList("selectZiptab", area3 + "%");
		sqlSession.close();
				return list;
	}
	//손님 sql
	public List selectcustomerAll() throws SQLException{
		SqlSession sqlSession = factory.openSession();
		List list = sqlSession.selectList("selectCustomerAll");	//DataMapper의 id를 읽기
		sqlSession.close();
		return list;
	}
	
	//고객 일부정보
	public CustomerDto selectcustomerPart(String arg) throws SQLException{
		
		SqlSession sqlSession = factory.openSession();
		CustomerDto dto = sqlSession.selectOne("selectCustomerById",arg);
		
		sqlSession.close();
		return dto;
	}
	
	//고객정보 삽입
	public boolean insertCustomer(CustomerDto dto){
		SqlSession sqlSession = factory.openSession();
		boolean b = false;
		try {
			int re = sqlSession.insert("insertCustomer", dto);
			if(re > 0) b = true;
			sqlSession.commit();
			
		} catch (Exception e) {
			sqlSession.rollback();
		}finally {
			if(sqlSession != null) sqlSession.close();
		}
			return b;	
	}
	
	//고객정보 수정
	public boolean updateCustomer(CustomerDto dto){
		SqlSession sqlSession = factory.openSession();
		boolean b = false;
		try {
			int cou = sqlSession.insert("updateCustomer", dto);
			if(cou > 0)  b = true;
			sqlSession.commit();
		} catch (Exception e) {
			sqlSession.rollback();
		}finally {
			if(sqlSession != null) sqlSession.close();	
		}
			return b;
	}
	
	//고객정보 삭제
	public boolean deleteCustomer(int arg){
		SqlSession sqlSession = factory.openSession();//자동
		boolean b = false;
		try {
			int cou = sqlSession.delete("deleteCustomer",arg);
			if(cou > 0)  b = true;
			sqlSession.commit();
		} catch (Exception e) {
			sqlSession.rollback();
		}finally {
			if(sqlSession != null) sqlSession.close();	
		}
		
		return b;
	}
	
	//모든 보험정보
	public List selectInsuranceAll() throws SQLException{
		SqlSession sqlSession = factory.openSession();
		List list = sqlSession.selectList("selectInsuranceAll");	//DataMapper의 id를 읽기
		sqlSession.close();
		return list;
	}
	
	public InsuranceDto selectInsurancePart(String arg) throws SQLException{
		SqlSession sqlSession = factory.openSession();
		InsuranceDto dto = sqlSession.selectOne("selectInsuranceById",arg);
		sqlSession.close();
		return dto;
	}
	public boolean insertInsurance(InsuranceDto dto){
		SqlSession sqlSession = factory.openSession();
		boolean b = false;
		try {
			int re = sqlSession.insert("insertInsurance", dto);
			if(re > 0) b = true;
			sqlSession.commit();
			
		} catch (Exception e) {
			sqlSession.rollback();
		}finally {
			if(sqlSession != null) sqlSession.close();
		}
		return b;		
	}
	public boolean updateInsurance(InsuranceDto dto){
		SqlSession sqlSession = factory.openSession();
		boolean b = false;
		try {
			int cou = sqlSession.insert("updateInsurance", dto);
			if(cou > 0)  b = true;
			sqlSession.commit();
		} catch (Exception e) {
			sqlSession.rollback();
		}finally {
			if(sqlSession != null) sqlSession.close();	
		}
			return b;
	}
	public boolean deleteInsurance(int arg){
		SqlSession sqlSession = factory.openSession();//자동
		boolean b = false;
		try {
			int cou = sqlSession.delete("deleteInsurance",arg);
			if(cou > 0)  b = true;
			sqlSession.commit();
		} catch (Exception e) {
			sqlSession.rollback();
		}finally {
			if(sqlSession != null) sqlSession.close();	
		}
		
		return b;
	}
	
	//모든 예약
	public List selectReservationAll() throws SQLException{
		SqlSession sqlSession = factory.openSession();
		List list = sqlSession.selectList("selectReservationAll");	//DataMapper의 id를 읽기
		sqlSession.close();
		return list;
	}
	
	//일부 예약
	public ReservationDto selectReservationPart(String arg) throws SQLException{
		SqlSession sqlSession = factory.openSession();
		ReservationDto dto = sqlSession.selectOne("selectReservationById",arg);
		sqlSession.close();
		return dto;
	}
	
	//예약 삽입
	public boolean insertReservation(ReservationDto dto){
		SqlSession sqlSession = factory.openSession();
		boolean b = false;
		try {
			int re = sqlSession.insert("insertReservation", dto);
			if(re > 0) b = true;
			sqlSession.commit();
			
		} catch (Exception e) {
			sqlSession.rollback();
		}finally {
			if(sqlSession != null) sqlSession.close();
		}
		return b;		
	}
	
	//예약 수정
	public boolean updateReservation(ReservationDto dto){
		SqlSession sqlSession = factory.openSession();
		boolean b = false;
		try {
			int cou = sqlSession.insert("updateReservation", dto);
			if(cou > 0)  b = true;
			sqlSession.commit();
		} catch (Exception e) {
			sqlSession.rollback();
		}finally {
			if(sqlSession != null) sqlSession.close();	
		}
			return b;
	}
	
	//예약 삭제
	public boolean deleteReservation(int arg){
		SqlSession sqlSession = factory.openSession();//자동
		boolean b = false;
		try {
			int cou = sqlSession.delete("deleteReservation",arg);
			if(cou > 0)  b = true;
			sqlSession.commit();
		} catch (Exception e) {
			sqlSession.rollback();
		}finally {
			if(sqlSession != null) sqlSession.close();	
		}
		
		return b;
	}
	
	//자동차 목록보기
	public List selectVehicleAll() throws SQLException{
		SqlSession sqlSession = factory.openSession();
		List list = sqlSession.selectList("selectVehicleAll");
		sqlSession.close();
		return list;
	}
	
	//자동차 일부정보 보기
	public VehicleDto selectVehiclePart(String arg) throws SQLException{
		SqlSession sqlSession = factory.openSession();
		VehicleDto dto = sqlSession.selectOne("selectVehicleById",arg);
		sqlSession.close();
		return dto;
	}
	
	//자동차 새정보 삽입
	public boolean insertVehicle(VehicleDto dto){
		SqlSession sqlSession = factory.openSession();
		boolean b = false;
		try {
			int re = sqlSession.insert("insertVehicle", dto);
			if(re > 0) b = true;
			sqlSession.commit();
			
		} catch (Exception e) {
			sqlSession.rollback();
		}finally {
			if(sqlSession != null) sqlSession.close();
		}
		return b;		
	}
	
	//자동차 정보 업데이트 
	public boolean updateVehicle(VehicleDto dto){
		SqlSession sqlSession = factory.openSession();
		boolean b = false;
		try {
			int cou = sqlSession.insert("updateVehicle", dto);
			if(cou > 0)  b = true;
			sqlSession.commit();
		} catch (Exception e) {
			sqlSession.rollback();
		}finally {
			if(sqlSession != null) sqlSession.close();	
		}
			return b;
	}
	
	//자동차 정보 삭제
	public boolean deleteVehicle(int arg){
		SqlSession sqlSession = factory.openSession();//자동
		boolean b = false;
		try {
			int cou = sqlSession.delete("deleteVehicle",arg);
			if(cou > 0)  b = true;
			sqlSession.commit();
		} catch (Exception e) {
			sqlSession.rollback();
		}finally {
			if(sqlSession != null) sqlSession.close();	
		}
		
		return b;
	}
}
