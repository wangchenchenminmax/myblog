package club.myblog.controller;

import club.myblog.pojo.User;
import club.myblog.pojo.User_blogs;
import club.myblog.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
//@RequestMapping(value = "/say")
public class UserController {
    @Resource
    private UserService userService;

    @RequestMapping(value = "/index")
    public String hello(HttpServletResponse response, HttpServletRequest request) {
        //request.getSession().removeAttribute("user");
        return "index";


    }

    @RequestMapping({"/login"})
    public String init(HttpServletResponse response, HttpServletRequest request) {
        request.getSession().removeAttribute("user");
        return "login";
    }

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
    @RequestMapping("/blogs")
    public String queryBlogs(HttpServletRequest request,HttpSession session){
        List<User_blogs> list= userService.getBlogs();
        session.setAttribute("blogs",list);
        System.out.println(list.toString());
      return "bloglist";
    }

    @RequestMapping("/blogdetail")
    public  ModelAndView  queryBlogDetail(Integer blog_id){
        ModelAndView mav=new ModelAndView("blogdetail");
        mav.addObject("blog",userService.getBlogById(blog_id));
        return mav;
    }

}
