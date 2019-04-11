package club.myblog.service;


import club.myblog.pojo.User;
import club.myblog.pojo.User_blogs;

import java.util.List;


public interface UserService {
    User getUser(String userName,String password);
    List<User_blogs> getBlogs(int startId,int endId);
    User_blogs getBlogById(Integer blog_id);
    int addBlog(User_blogs user_blogs);
    int selectBlogCounts();
    int updateBlog(User_blogs user_blogs);

}

