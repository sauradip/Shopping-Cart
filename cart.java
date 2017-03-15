package com.hp;

import static com.opensymphony.xwork2.Action.ERROR;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

public class cart extends ActionSupport implements ServletRequestAware,ServletResponseAware{
    HttpServletRequest request;
    HttpServletResponse response;
    User us;
    List<Prod1> lis;
    List<User> ema;
   Integer id;
   String ca;
    SessionMap map;
    List<String> li;
     List<String> name=new ArrayList<String>();
    String dbURL = "jdbc:mysql://localhost:3306/ecart";
String username = "root";
String password = "shubhm";
     Prod1 p;
     Prod1 p1;

    public User getUs() {
        return us;
    }

    public void setUs(User us) {
        this.us = us;
    }

    public Prod1 getP1() {
        return p1;
    }

    public void setP1(Prod1 p1) {
        this.p1 = p1;
    }
     

   

    public Prod1 getP() {
        return p;
    }

    public void setP(Prod1 p) {
        this.p = p;
    }
     
    public List<String> getName() {
        return name;
    }

    public void setName(List<String> name) {
        this.name = name;
    }
    public List<String> getLi() {
        return li;
    }

    public void setLi(List<String> li) {
        this.li = li;
    }

    public List<Prod1> getLis() {
        return lis;
    }

    public void setLis(List<Prod1> lis) {
        this.lis = lis;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public List<User> getEma() {
        return ema;
    }

    public void setEma(List<User> ema) {
        this.ema = ema;
    }


    public HttpServletRequest getRequest() {
        return request;
    }

    public void setRequest(HttpServletRequest request) {
        this.request = request;
    }

  
   
     public SessionMap getMap() {
        return map;
    }

    public void setMap(SessionMap map) {
        this.map = map;
    }
   
    
    @Override
    public String execute() throws Exception {
//         Session s=HibernateUtil.getSessionFactory().openSession();
//        
//       String u=request.getParameter("user");
//       
//       PrintWriter out=response.getWriter();
//       out.print(u);
//        //id=new Integer(request.getParameter("uid"));
//        ema=s.createCriteria(User10.class).add(Restrictions.eq("name",u)).list(); 
//        for(User10 u1:ema)
//        {
//         ca=u1.getCart();
//        }
//        //User car=(User) s.get(User.class,id);
//       
//        
//        if(ca!=null)
//        {int k=0;
//          String[] c=ca.split(",");
//       li=Arrays.asList(c);
//         
//         //li.add((pid).toString());
//         //li.sort(null);
//         /*for(String s1:li)
//         {
//           c[k++]=s1;  
//         }
//         ca=c[0];
//         for(String s2:c)
//         {if(s2.equals(c[0]))
//         {}
//         else
//             ca=ca+","+s2;
//         }*/
//        }
//       for(String l:li)
//       {
//           Integer t=Integer.parseInt(l);
//          Prod1 p=(Prod1) s.get(Prod1.class,t);
//          lis.add(p);
//       }
 Session s=HibernateUtil.getSessionFactory().openSession();
  List<Prod1> l=s.createCriteria(Prod1.class).list();
        for(Prod1 e:l){
            name.add(e.getPname());
        }
 Integer i=new Integer(request.getParameter("id"));
 
 lis=s.createCriteria(Prod1.class).add(Restrictions.eq("pid",57)).list(); ;
  HttpSession hs=request.getSession();
  //lis=(List<Prod1>) hs.getAttribute("cart");
  p=(Prod1)s.get(Prod1.class, 57);
  //lis.add(p);
                        //response.setAttribute("prod", lis); 
                        lis.remove(p);
 /*if(hs.getAttribute("prod")!=null){
                        lis.addAll((List<Prod1>)hs.getAttribute("prod"));
                       
                       
                        //lis.add(p);
                        hs.setAttribute("prod", lis); 
                    }else{
                        
                       
                        //lis.add(p);
                        hs.setAttribute("prod", lis);  
                    }*/
                         ca=(String)hs.getAttribute("cart");
        // if(!(ca.equals("")||(ca==null)))
       // {
            ca=ca+","+id;
          String[] c=ca.split(",");
       li=Arrays.asList(c);
       hs.setAttribute("cart", ca);
       int k=(Integer)hs.getAttribute("id");
      us=(User)s.get(User.class, k);
      us.setCart(ca);
      s.update(us);
       // }
         /*else
         {
             ca=ca+id;
              String[] c=ca.split(",");
       li=Arrays.asList(c);
       hs.setAttribute("cart", ca);
       int k=(Integer)hs.getAttribute("id");
      us=(User)s.get(User.class, k);
      us.setCart(ca);
      s.update(us);
      
      try {

	Connection conn = DriverManager.getConnection(dbURL, username, password);

	Statement sc=conn.createStatement();
        String qu="update user set cart='"+ca+"' where uid="+k+"";
        int m=sc.executeUpdate(qu);
} catch (SQLException ex) {
	ex.printStackTrace();
}
             
         }*/hs.setAttribute("cart", ca);
          for(String l1:li)
      {
           int t=Integer.parseInt(l1);
           if(t==57)
           {}
           else
           {
          p=(Prod1) s.get(Prod1.class,t);
          lis.add(p);
           }
       }
        return SUCCESS; //To change body of generated methods, choose Tools | Templates.
    }
   public String getEMpPic() throws Exception{
        Integer pid=new Integer(request.getParameter("id"));
        Session s=HibernateUtil.getSessionFactory().openSession();
        HttpServletResponse response=ServletActionContext.getResponse();
        response.setContentType("image/png");
        Prod1 em=(Prod1)s.get(Prod1.class, pid);
        response.getOutputStream().write(em.getPpic());
        response.getOutputStream().close();
        return SUCCESS;
    }
   public String remove()throws Exception
   {
    Session s=HibernateUtil.getSessionFactory().openSession();
  List<Prod1> l=s.createCriteria(Prod1.class).list();
        for(Prod1 e:l){
            name.add(e.getPname());
        }
 Integer i=new Integer(request.getParameter("id"));
 lis=s.createCriteria(Prod1.class).add(Restrictions.eq("pid",57)).list();
  p1=(Prod1)s.get(Prod1.class,57);
  p=(Prod1)s.get(Prod1.class, i); 
  lis.remove(p);
  s.delete(p1);
 HttpSession hs=request.getSession();
 ca=(String)hs.getAttribute("cart");
        // if(!(ca.equals("")||(ca==null)))
       // {
            ca=ca+","+id;
          String[] c=ca.split(",");
       li=Arrays.asList(c);
   for(String l1:li)
      {
           int t=Integer.parseInt(l1);
           if(t==57)
           {}
           else
           {
          p=(Prod1) s.get(Prod1.class,t);
          lis.add(p);
           }
       }
 lis.remove(p1);
  lis.remove(p);
  hs.setAttribute("prod", lis);
  return SUCCESS;
   }
   public String disp()throws Exception
   {
      Session s=HibernateUtil.getSessionFactory().openSession();
  List<Prod1> l=s.createCriteria(Prod1.class).list();
        for(Prod1 e:l){
            name.add(e.getPname());
        } HttpSession hs=request.getSession();
        ca=request.getParameter("val");
         if(!ca.equals(""))
        {
          String[] c=ca.split(",");
       li=Arrays.asList(c);
        lis=s.createCriteria(Prod1.class).add(Restrictions.eq("pid",1)).list(); 
        Prod1 p1=(Prod1)s.get(Prod1.class,1);
        lis.remove(p1);
         for(String l1:li)
      {
           int t=Integer.parseInt(l1);
           if(t==57)
           {}
           else
           {
          p=(Prod1) s.get(Prod1.class,t);
          lis.add(p);
           }
       }
        return SUCCESS;
        }
         else
             return ERROR;
        
   }
    public void setServletRequest(HttpServletRequest hsr) {
         request=hsr;
    }
    public void setSession(Map<String, Object> map) {
        this.map=(SessionMap)map;
    }

    public void setServletResponse(HttpServletResponse hsr) {
        response=hsr;
    }
   

  
   

   
    
    
}
