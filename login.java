package com.hp;

import static com.opensymphony.xwork2.Action.ERROR;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Session;

public class login extends ActionSupport implements ServletRequestAware,SessionAware{
    private int uid;
    private String pass;
    HttpServletRequest request;
    SessionMap sessionMap;
    List<Prod1> lis;
    List<User> ema;
   Integer id;
   String ca;
   String[] c;
   List<String> li;
     List<String> name=new ArrayList<String>();

    public List<String> getName() {
        return name;
    }

    public void setName(List<String> name) {
        this.name = name;
    }
    @Override
    public String execute() throws Exception {
        Session s=HibernateUtil.getSessionFactory().openSession();
        User u=(User)s.get(User.class, uid);
         List<Prod1> l=s.createCriteria(Prod1.class).list();
        for(Prod1 e:l){
            name.add(e.getPname());
        }
        if(u!=null){
            if(u.getPass().equals(pass)){
                sessionMap.put("user", u.getName());
                sessionMap.put("id",u.getUid());
                sessionMap.put("cart",u.getCart());
                 request.getSession().setAttribute("user",u.getName());
                 if(u.getCart()==null)
                     u.setCart("57");
                 request.getSession().setAttribute("cart",u.getCart());
               request.setAttribute("user", u.getName());
                return SUCCESS;
            }else{
                request.setAttribute("msg", "Invalid Username or Password");
            return INPUT;
            }
        }else{
            request.setAttribute("msg", "Invalid User");
            return INPUT;
        }
        
    }
    public String cart() throws Exception
    {
        Session s=HibernateUtil.getSessionFactory().openSession();
       //  request.getSession().setAttribute("user",user);
      
       
       //String u=request.getParameter("user");
      // u="Shubham Das";
       //PrintWriter out=response.getWriter();
       //out.print(u);
        //id=new Integer(request.getParameter("uid"));
        //ema=s.createCriteria(User.class).add(Restrictions.eq("name",u)).list(); 
        //for(User u1:ema)
        //{
         //ca=u1.getCart();
        //}//ca=ema.getCart();
        //User car=(User) s.get(User.class,id);
       
        ca=(String) sessionMap.get("cart");
        if(ca!=null)
        {int k=0;
           c=ca.split(",");
       li=Arrays.asList(c);
         
         //li.add((pid).toString());
         //li.sort(null);
        /* for(String s1:li)
         {
           c[k++]=s1;  
         }
         ca=c[0];
         for(String s2:c)
         {if(s2.equals(c[0]))
         {}
         else
             ca=ca+","+s2;
         }*/
        for(String l:c)
       {
           Integer t=Integer.parseInt(l);
          Prod1 p=(Prod1) s.get(Prod1.class,t);
          lis.add(p);
       }
        return SUCCESS;
        }
       else
       return ERROR;
    
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
    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
    
   
   

  public void setServletRequest(HttpServletRequest hsr) {
        request=hsr;
    }

    public void setSession(Map<String, Object> map) {
        sessionMap=(SessionMap)map;
    }
    
   

   
    
    
}
