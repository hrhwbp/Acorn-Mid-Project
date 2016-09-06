package projectpack.mybatis;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import projectpack.business.ProcessDao;

public class SessionListener implements HttpSessionListener{
   
   @Override
   public void sessionCreated(HttpSessionEvent arg0) {
      //dao 객체 생성
      ProcessDao dao = ProcessDao.getInstance();
      
      //전체 방문자 수 + 1
      dao.setVisitCount();
      System.out.println("실행");
      
      //방문자 수
      int count = dao.visitCount();
      
      HttpSession session = arg0.getSession();
      
      session.setAttribute("count", count);
      
   }
   
   @Override
   public void sessionDestroyed(HttpSessionEvent arg0) {
      // TODO Auto-generated method stub
      
   }
}