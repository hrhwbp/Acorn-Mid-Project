package projectpack.mybatis;
import java.io.Reader;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
public class SqlMapConfig {
 
 public static SqlSessionFactory sqlSession;
 
 static{
  String resource = "projectpack/mybatis/Configuration.xml";
  
  try {
   Reader reader = Resources.getResourceAsReader(resource);
   sqlSession = new SqlSessionFactoryBuilder().build(reader);
   reader.close();
  } catch (Exception e) {
   System.out.println("SqlMapConfig 오류 : " + e);
  }
 }
 
 public static SqlSessionFactory getSqlSession(){
  return sqlSession;
 }
}