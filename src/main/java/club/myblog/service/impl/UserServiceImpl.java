package club.myblog.service.impl;



import club.myblog.dao.UserMapper;
import club.myblog.pojo.User;
import club.myblog.pojo.User_blogs;
import club.myblog.service.UserService;
import org.springframework.stereotype.Service;
import java.util.*;

import javax.annotation.Resource;



@Service
public class UserServiceImpl implements UserService {

    @Resource
    private UserMapper userMapper;

    @Override
    public List<User_blogs> getBlogs() {
        return userMapper.getBlogs();
    }

    @Override
    public User getUser(String userName,String password) {
        return userMapper.getUser(userName,password);
    }

    @Override
    public User_blogs getBlogById(Integer blog_id) {
        return userMapper.getBlogById( blog_id);
    }
}
