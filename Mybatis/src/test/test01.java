package test;

import domain.Student;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;

public class test01 {
    public static void main(String[] args) {
        String resource = "mybatis-config.xml";
        //输入流
        InputStream inputStream = null;
        try {
            //通过加载mybatis的主配置文件mybatis-config.xml.创建输入流对象
            inputStream = Resources.getResourceAsStream(resource);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        /*
         * SqlSessionFactoryBuilder()：SqlSessionFactory的建造者透过该建造者对象调用建造方法，为我们创建一个SqlSessionFactory对象
         * SqlSessionFactory对象唯一的作用就是为我们创建SqlSession对象
         * */
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        /*增删改查，处理事务等都是统一实验session对象完成*/
        SqlSession session = sqlSessionFactory.openSession();

        /*
        * 需求：根据id查单条
        *                如果取得的是单条记录，我们调用selectOne方法
                        参数1：根据命名空间。sqLIde的形式找到我们需要使用的sgL语句
                       参数2：我们要为sgL语句中传递的参数
        *
        * */
        Student s = session.selectOne("test01.getById", "A001");
        System.out.println(s);
        session.close();

    }
}
