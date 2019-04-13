package club.myblog.controller;

import club.myblog.pojo.User;
import club.myblog.pojo.User_blogs;
import club.myblog.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;


@Controller
//@RequestMapping(value = "/say")
public class UserController {
    @Resource
    private UserService userService;

    /**
     *
     * @param response
     * @param request
     * @return  主页,返回主页面
     */
    @RequestMapping(value = "/index")
    public String hello(HttpServletResponse response, HttpServletRequest request) {
        //request.getSession().removeAttribute("user");
        return "index";


    }

    /**
     *
     *
     * @param request
     * @return 进入登陆页面,移除原账户
     */
    @RequestMapping({"/login"})
    public String init( HttpServletRequest request) {
        request.getSession().removeAttribute("user");
        return "login";
    }

    /**
     *
     * @param userName
     * @param password
     * @param session
     * @param request
     * @param response
     * @return post 请求登陆 ,登陆成功与否都返回主页
     */
    @RequestMapping(value = "/loginmy", method = RequestMethod.POST)
    public String login(@RequestParam(required = false) String userName, String password, HttpSession session, HttpServletRequest request, HttpServletResponse response) {
        //System.out.print(userName+"==="+password);
        if (userName != null & password != null) {
            //ModelAndView mav = new ModelAndView("index")

            User user = userService.getUser(userName, password);
           // System.out.println("=========="+user);
            if (user != null) {
                session.setAttribute("user", user);
            }

            return "index";
        } else {
            return "index";
        }
    }

    /**
     *
     * @param session
     * @return  展示首次页面,显示分页,将当前页面和总分页数放入session
     */

    @RequestMapping("/blogs")
    public ModelAndView queryBlogs(HttpSession session){
        List<User_blogs> list= userService.getBlogs(0,4);
        int sum=userService.selectBlogCounts();
        int pages;
        if (sum%4==0){
            pages=sum/4;
        }else {
            pages=sum/4 +1;
        }
       // System.out.println("======"+ sum);
      //  System.out.println("======"+ pages);
        //System.out.println("----"+userService.selectBlogCounts());
        ModelAndView mav = new ModelAndView("bloglist");
        mav.addObject("blogs",list);
        //mav.addObject("pages",pages);
        session.setAttribute("pages",pages);
        session.setAttribute("nowpage",1);
        //request.setAttribute("blogs",list);
       // System.out.println(list.toString());
      return mav;
    }

    /**
     * 按页数查询 ,分页使用
     * @param session
     * @param queryPage
     * @return
     */
    @RequestMapping("/pageblogs")
    public ModelAndView queryBlogsByPage(HttpSession session,int queryPage){
        //System.out.println("==========="+queryPage);
        ModelAndView mav = new ModelAndView("bloglist");
      if (queryPage!=0&queryPage<=(int)session.getAttribute("pages")){

          List<User_blogs> list= userService.getBlogs((queryPage-1)*4,4);
          mav.addObject("blogs",list);
          session.setAttribute("nowpage",queryPage);
          return mav;
      }else {
          List<User_blogs> list= userService.getBlogs(0,4);
          mav.addObject("blogs",list);
          session.setAttribute("nowpage",1);
          return mav;
      }

    }

    /**
     * 显示博客详情
     * @param blog_id
     * @return
     */
    @RequestMapping("/blogdetail")
    public  ModelAndView  queryBlogDetail(Integer blog_id){
        ModelAndView mav=new ModelAndView("blogdetail");
        mav.addObject("blog",userService.getBlogById(blog_id));
        return mav;
    }

    /**
     * 申请写入博客
     * @return
     */
    @RequestMapping("/writeblog")
    public String write(){

        return "writeblog";
    }

    /**
     * 提交博客内容
     * @param blog_title
     * @param blog_remarks
     * @param blog_content
     * @return
     */
    @RequestMapping(value = "/submitblog",method = RequestMethod.POST)
    public ModelAndView submitBlog(HttpSession session,String blog_title,String blog_remarks,String blog_content ){
        if (!blog_title.equals("")&!blog_remarks.equals("")&!blog_content.equals("")){
            User_blogs user_blogs=new User_blogs();
            SimpleDateFormat sdf=new SimpleDateFormat("yy/MM/dd HH:mm");
            user_blogs.setBlog_date(sdf.format(new Date()));
            user_blogs.setBlog_content(blog_content);
            user_blogs.setBlog_title(blog_title);
            user_blogs.setBlog_writer("Seek-April");
            user_blogs.setBlog_remarks(blog_remarks);
            if (userService.addBlog( user_blogs)==1){
                //ModelAndView mav=new ModelAndView("bloglist");
                //mav.addObject("blog",user_blogs);
                return queryBlogs(session);
        }
       return new ModelAndView("index");
    //return "blogdetail";
}
      //  System.out.println(  userService.addBlog( user_blogs));
        return new ModelAndView("index");
    }
    @RequestMapping("/updateblog")
    public ModelAndView updateBlog(int blog_id){
      User_blogs user_blogs=  userService.getBlogById(blog_id);
        ModelAndView mav=new ModelAndView("updateblog");
        mav.addObject("changeblog",user_blogs);
        return  mav;
    }
    @RequestMapping(value = "/submitupdateblog",method = RequestMethod.POST)
    public  ModelAndView submitUpdate(String blog_title,String blog_remarks,String blog_content,int blog_id){

        User_blogs user_blogs=new User_blogs();
        SimpleDateFormat sdf=new SimpleDateFormat("yy/MM/dd HH:mm");
        user_blogs.setBlog_date(sdf.format(new Date()));
        user_blogs.setBlog_content(blog_content);
        user_blogs.setBlog_title(blog_title);
        user_blogs.setBlog_writer("Seek-April");
        user_blogs.setBlog_remarks(blog_remarks);
        user_blogs.setBlog_id(blog_id);
        //System.out.println("==========="+userService.updateBlog(user_blogs));
        if (userService.updateBlog(user_blogs)==1){
            ModelAndView mav=new ModelAndView("blogdetail");
            mav.addObject("blog",user_blogs);
            return  mav;
        }

        return new ModelAndView("index");
    }

    @RequestMapping("/deletblog")
public  ModelAndView deletBlog(HttpSession session,int blog_id){
        userService.delectBlog(blog_id);

        return queryBlogs(session);
    }
}
