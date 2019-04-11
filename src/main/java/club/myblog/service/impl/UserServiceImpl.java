package club.myblog.service.impl;



import club.myblog.dao.UserMapper;
import club.myblog.pojo.User;
import club.myblog.pojo.User_blogs;
import club.myblog.service.UserService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

import javax.annotation.Resource;



@Service
public class UserServiceImpl implements UserService {

    @Resource
    private UserMapper userMapper;

    @Override
    public List<User_blogs> getBlogs(int startId,int endId) {
        return userMapper.getBlogs(startId, endId);
    }

    @Override
    public User getUser(String userName,String password) {
        return userMapper.getUser(userName,password);
    }

    @Override
    @Transactional
    public int addBlog(User_blogs user_blogs) {
        return userMapper.addBlog(user_blogs);
    }

    @Override
    public int selectBlogCounts() {
        return userMapper.selectBlogCounts();
    }

    @Override
    @Transactional
    public int updateBlog(User_blogs user_blogs) {
        return userMapper.updateBlog(user_blogs);
    }

    @Override
    public int delectBlog(Integer blog_id) {
        return userMapper.delectBlog(blog_id);
    }

    @Override
    public User_blogs getBlogById(Integer blog_id) {
        return userMapper.getBlogById( blog_id);
    }
}
