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

	public static ProcessDao getInstance() {
		return dao;
	}

	private SqlSessionFactory factory = SqlMapConfig.getSqlSession();

	// 캘린더인서트
	public boolean insertCalendar(CalendarDto dto) {
		SqlSession sqlSession = factory.openSession();
		boolean b = false;
		try {
			int re = sqlSession.insert("insertCalendar", dto);
			if (re > 0)
				b = true;
			sqlSession.commit();

		} catch (Exception e) {
			sqlSession.rollback();
		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}
		return b;
	}

	// 고객 로그인
	public boolean c_login(HashMap<String, String> map) {
		boolean b = false;
		SqlSession sqlSession = factory.openSession();
		try {
			CustomerDto dto = sqlSession.selectOne("loginCustomer", map);
			if (dto != null) b = true;
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}
		// System.out.println("processDao에서 boolean이" + b);
		return b;
	}

	// 관리자 로그인
	public boolean a_login(HashMap<String, String> map) {

		boolean b = false;
		SqlSession sqlSession = factory.openSession();
		try {
			AdminDto dto = sqlSession.selectOne("loginAdmin", map);
			if (dto != null)
				b = true;
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}
		return b;
	}
	
	//관리자정보 읽어오기
	   public List selectadminAll() throws SQLException{
	      SqlSession sqlSession = factory.openSession();
	      List list = sqlSession.selectList("selectAdminAll");   //DataMapper의 id를 읽기
	      sqlSession.close();
	      return list;
	   }
	   
	   //관리자정보 삽입
	   public boolean insertAdmin(AdminDto dto){
	      SqlSession sqlSession = factory.openSession();
	      boolean b = false;
	      try {
	         int re = sqlSession.insert("insertAdmin", dto);
	         if(re > 0) b = true;
	         sqlSession.commit();
	         
	      } catch (Exception e) {
	         sqlSession.rollback();
	      }finally {
	         if(sqlSession != null) sqlSession.close();
	      }
	         return b;   
	   }
	   
	   //관리자정보 수정
	   public boolean updateAdmin(AdminDto dto){
	      SqlSession sqlSession = factory.openSession();
	      boolean b = false;
	      try {
	         int cou = sqlSession.insert("updateAdmin", dto);
	         if(cou > 0)  b = true;
	         sqlSession.commit();
	      } catch (Exception e) {
	         sqlSession.rollback();
	      }finally {
	         if(sqlSession != null) sqlSession.close();   
	      }
	         return b;
	   }
	   
	   //관리자정보 삭제
	   public boolean deleteAdmin(String no){
	      SqlSession sqlSession = factory.openSession();//자동
	      
	      boolean b = false;
	      try {
	    	 System.out.println(no);
	         int cou = sqlSession.delete("deleteAdmin", no);
	         System.out.println(cou);
	         if(cou > 0){
	    
	        	 b = true;
	         }
	         sqlSession.commit();
	      } catch (Exception e) {
	         sqlSession.rollback();
	      }finally {
	         if(sqlSession != null) sqlSession.close();   
	      }
	      return b;
	   }
	   
	
	
	
	

	// 우편번호 sql
	public List zipcodeRead(String area3) {
		SqlSession sqlSession = factory.openSession();
		List list = sqlSession.selectList("selectZiptab", area3 + "%");
		sqlSession.close();
		return list;
	}

	// 고객정보 읽어오기
	public List selectcustomerAll() throws SQLException {
		SqlSession sqlSession = factory.openSession();
		List list = sqlSession.selectList("selectCustomerAll"); // DataMapper의
																// id를 읽기
		sqlSession.close();
		return list;
	}

	// 고객 일부정보 ID로 검색
	public CustomerDto selectcustomerPartId(String arg) throws SQLException {

		SqlSession sqlSession = factory.openSession();
		CustomerDto dto = sqlSession.selectOne("selectCustomerById", arg);

		sqlSession.close();
		return dto;
	}

	// 고객일부 정보 (고객번호)로 검색
	public CustomerDto selectcustomerPartNo(String arg) throws SQLException {

		SqlSession sqlSession = factory.openSession();
		CustomerDto dto = sqlSession.selectOne("selectCustomerByNo", arg);

		sqlSession.close();
		return dto;
	}

	// 고객정보 삽입
	public boolean insertCustomer(CustomerDto dto) {
		SqlSession sqlSession = factory.openSession();
		boolean b = false;
		try {
			int re = sqlSession.insert("insertCustomer", dto);
			if (re > 0)
				b = true;
			sqlSession.commit();

		} catch (Exception e) {
			sqlSession.rollback();
		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}
		return b;
	}

	// 고객정보 수정
	public boolean updateCustomer(CustomerDto dto) {
		SqlSession sqlSession = factory.openSession();
		boolean b = false;
		try {
			int cou = sqlSession.insert("updateCustomer", dto);
			if (cou > 0)
				b = true;
			sqlSession.commit();
		} catch (Exception e) {
			sqlSession.rollback();
		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}
		return b;
	}

	// 고객정보 삭제
	public boolean deleteCustomer(int arg) {
		SqlSession sqlSession = factory.openSession();// 자동
		boolean b = false;
		try {
			int cou = sqlSession.delete("deleteCustomer", arg);
			if (cou > 0)
				b = true;
			sqlSession.commit();
		} catch (Exception e) {
			sqlSession.rollback();
		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}

		return b;
	}

	// 모든 보험정보
	public List selectInsuranceAll() throws SQLException {
		SqlSession sqlSession = factory.openSession();
		List list = sqlSession.selectList("selectInsuranceAll"); // DataMapper의
																	// id를 읽기
		sqlSession.close();
		return list;
	}

	public InsuranceDto selectInsurancePart(String arg) throws SQLException {
		SqlSession sqlSession = factory.openSession();
		InsuranceDto dto = sqlSession.selectOne("selectInsuranceById", arg);
		sqlSession.close();
		return dto;
	}

	public boolean insertInsurance(InsuranceDto dto) {
		SqlSession sqlSession = factory.openSession();
		boolean b = false;
		try {
			int re = sqlSession.insert("insertInsurance", dto);
			if (re > 0)
				b = true;
			sqlSession.commit();

		} catch (Exception e) {
			sqlSession.rollback();
		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}
		return b;
	}

	public boolean updateInsurance(InsuranceDto dto) {
		SqlSession sqlSession = factory.openSession();
		boolean b = false;
		try {
			int cou = sqlSession.insert("updateInsurance", dto);
			if (cou > 0)
				b = true;
			sqlSession.commit();
		} catch (Exception e) {
			sqlSession.rollback();
		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}
		return b;
	}

	public boolean deleteInsurance(int arg) {
		SqlSession sqlSession = factory.openSession();// 자동
		boolean b = false;
		try {
			int cou = sqlSession.delete("deleteInsurance", arg);
			if (cou > 0)
				b = true;
			sqlSession.commit();
		} catch (Exception e) {
			sqlSession.rollback();
		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}

		return b;
	}

	// 모든 예약
	public List selectReservationAll() throws SQLException {
		SqlSession sqlSession = factory.openSession();
		List list = sqlSession.selectList("selectReservationAll"); // DataMapper의
																	// id를 읽기
		sqlSession.close();
		return list;
	}

	// 일부 예약
	public ReservationDto selectReservationPart(String arg) throws SQLException {
		SqlSession sqlSession = factory.openSession();
		ReservationDto dto = sqlSession.selectOne("selectReservationById", arg);
		sqlSession.close();
		return dto;
	}

	// 예약 삽입
	public boolean insertReservation(ReservationDto dto) {
		SqlSession sqlSession = factory.openSession();
		boolean b = false;
		try {
			int re = sqlSession.insert("insertReservation", dto);
			if (re > 0)
				b = true;
			sqlSession.commit();

		} catch (Exception e) {
			sqlSession.rollback();
		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}
		return b;
	}

	// 예약 수정
	public boolean updateReservation(ReservationDto dto) {
		SqlSession sqlSession = factory.openSession();
		boolean b = false;
		try {
			int cou = sqlSession.insert("updateReservation", dto);
			if (cou > 0)
				b = true;
			sqlSession.commit();
		} catch (Exception e) {
			sqlSession.rollback();
		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}
		return b;
	}

	// 예약 삭제
	public boolean deleteReservation(String arg) {
		SqlSession sqlSession = factory.openSession();// 자동
		boolean b = false;
		try {
			int cou = sqlSession.delete("deleteReservation", arg);
			if (cou > 0)
				b = true;
			sqlSession.commit();
		} catch (Exception e) {
			sqlSession.rollback();
		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}

		return b;
	}

	// 자동차 목록보기
	public List selectVehicleAll() throws SQLException {
		SqlSession sqlSession = factory.openSession();
		List list = sqlSession.selectList("selectVehicleAll");
		sqlSession.close();
		return list;
	}

	// 자동차 브랜드보기
	public List selectVehicleBrand() throws SQLException {
		SqlSession sqlSession = factory.openSession();
		List list = sqlSession.selectList("selectVehicleBrand");
		sqlSession.close();
		return list;
	}

	// 차종 브랜드별로 뽑기
	public List selectVehiclebyBrand(String arg) throws SQLException {
		SqlSession sqlSession = factory.openSession();
		List list = sqlSession.selectList("selectVehiclebyBrand", arg);
		System.out.println(arg);
		sqlSession.close();
		return list;
	}

	// 자동차 일부정보 보기
	public VehicleDto selectVehiclePart(String arg) throws SQLException {
		SqlSession sqlSession = factory.openSession();
		VehicleDto dto = sqlSession.selectOne("selectVehicleById", arg);
		sqlSession.close();
		return dto;
	}

	// 자동차 새정보 삽입
	public boolean insertVehicle(VehicleDto dto) {
		SqlSession sqlSession = factory.openSession();
		boolean b = false;
		try {
			System.out.println(dto.getV_brand());
			int re = sqlSession.insert("insertVehicle", dto);
			if (re > 0)
				b = true;
			sqlSession.commit();

		} catch (Exception e) {
			sqlSession.rollback();
		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}
		return b;
	}

	// 자동차 정보 업데이트
	public boolean updateVehicle(VehicleDto dto) {
		SqlSession sqlSession = factory.openSession();
		boolean b = false;
		try {
			int cou = sqlSession.insert("updateVehicle", dto);
			if (cou > 0)
				b = true;
			sqlSession.commit();
		} catch (Exception e) {
			sqlSession.rollback();
		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}
		return b;
	}

	// 자동차 정보 삭제
	public boolean deleteVehicle(String id) {
		SqlSession sqlSession = factory.openSession();// 자동
		boolean b = false;
		try {
			int cou = sqlSession.delete("deleteVehicle", id);
			if (cou > 0)
				b = true;
			sqlSession.commit();
		} catch (Exception e) {
			sqlSession.rollback();
		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}

		return b;
	}

	public VehicleDto vehiclePrice(String arg) throws SQLException {

		SqlSession sqlSession = factory.openSession();

		VehicleDto dto = sqlSession.selectOne("selectVprice", arg);
		sqlSession.close();
		return dto;
	}

	public InsuranceDto insurancePrice(String arg) throws SQLException {

		SqlSession sqlSession = factory.openSession();

		InsuranceDto dto = sqlSession.selectOne("selectIprice", arg);
		sqlSession.close();
		return dto;
	}

	// 차종별 그래프 그리기====================================

	// 에스턴 마틴
	public List selectMartin() {
		List list = null;
		SqlSession sqlSession = factory.openSession();
		try {
			list = sqlSession.selectList("selectMartin");
			sqlSession.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	// Lamborghini
	public List selectLamborghini() {
		List list = null;
		SqlSession sqlSession = factory.openSession();
		try {
			list = sqlSession.selectList("selectLamborghini");
			sqlSession.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	// Bugatti
	public List selectBugatti() {
		List list = null;
		SqlSession sqlSession = factory.openSession();
		try {
			list = sqlSession.selectList("selectBugatti");
			sqlSession.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	// Maserati
	public List selectMaserati() {
		List list = null;
		SqlSession sqlSession = factory.openSession();
		try {
			list = sqlSession.selectList("selectMaserati");
			sqlSession.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	// BMW
	public List selectBMW() {
		List list = null;
		SqlSession sqlSession = factory.openSession();
		try {
			list = sqlSession.selectList("selectBMW");
			sqlSession.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	// 오늘 출고 차량 출력
	public List selectOutlist() {
		List list = null;
		SqlSession sqlSession = factory.openSession();
		try {
			list = sqlSession.selectList("selectOutlist");
			sqlSession.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	// 인원수 카운트
	public int visitCount() {
		int c = 0;
		SqlSession sqlSession = factory.openSession();
		try {
			c = sqlSession.selectOne("selectVisitCount");
			System.out.println(c);
		} catch (Exception e) {
			System.out.println("visitCount err :" + e);
		}
		return c;
	}

	// 인원수 늘리기
	public void setVisitCount() {
		SqlSession sqlSession = factory.openSession();
		try {
			sqlSession.insert("insertVisitCount");
			sqlSession.commit();
		} catch (Exception e) {
			System.out.println("setVisitCount err :" + e);
			sqlSession.rollback();
		}
	}

	// 오늘 예약주문 수
	public int reserCount() {
		int i = 0;
		SqlSession sqlSession = factory.openSession();
		try {
			i = sqlSession.selectOne("selectR_date");
		} catch (Exception e) {
			System.out.println("reserCount err : " + e);
		}
		return i;
	}

	// 한달간 매출액
	public int monthTotal() {
		int i = 0;
		SqlSession sqlSession = factory.openSession();
		try {
			i = sqlSession.selectOne("mTotal");
		} catch (Exception e) {
			System.out.println("monthTotal err : " + e);
		}
		return i;
	}

	// 자동차
	public boolean selectCar(HashMap<String, String> map) {
		boolean b = false;
		SqlSession sqlSession = factory.openSession();
		try {
			ReservationDto dto = sqlSession.selectOne("selectCaryn", map);
			if (dto == null)
				b = true;

		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}
		return b;
	}

	// qna게시판 전체보기
	public List selectQnaAll() throws SQLException {
		SqlSession sqlSession = factory.openSession();
		List list = sqlSession.selectList("selectQnaAll");
		sqlSession.close();
		return list;
	}

	public QnaDto selectByB_no(String arg) throws SQLException {

		SqlSession sqlSession = factory.openSession();
		QnaDto dto = sqlSession.selectOne("selectQnaById", arg);

		sqlSession.close();
		return dto;
	}

	public boolean selectQnaupdateyn(HashMap<String, String> map) throws SQLException {
		boolean b = false;
		SqlSession sqlSession = factory.openSession();
		List list = sqlSession.selectList("selectQnaYn", map);
		if (list != null) {
			b = true;
		}
		return b;
	}
	
	public boolean deleteQna(int arg) {
	      SqlSession sqlSession = factory.openSession();// 자동
	      boolean b = false;
	      try {
	         int cou = sqlSession.delete("deleteQna", arg);
	         if (cou > 0)
	            b = true;
	         sqlSession.commit();
	      } catch (Exception e) {
	         sqlSession.rollback();
	      } finally {
	         if (sqlSession != null)
	            sqlSession.close();
	      }

	      return b;
	   }

}
