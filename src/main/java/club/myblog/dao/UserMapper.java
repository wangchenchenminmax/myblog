package club.myblog.dao;



import club.myblog.pojo.User;
import club.myblog.pojo.User_blogs;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface UserMapper {
   User getUser(@Param("userName") String userName, @Param("password") String password);
   List<User_blogs> getBlogs(@Param("startId")int startId,@Param("endId")int endId );
   User_blogs   getBlogById(@Param("blog_id") Integer blog_id);
   int addBlog(User_blogs user_blogs);
   int selectBlogCounts();
   int updateBlog(User_blogs user_blogs);
}
