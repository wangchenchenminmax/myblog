package club.myblog.pojo;



import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;


import java.util.Date;

public class User_blogs implements Serializable {
    private Integer blog_id;
    private String blog_title;
    private String blog_content;


    private String blog_date;
    private  String blog_writer;
    private  String blog_remarks;

    public User_blogs() {

    }

    public User_blogs(Integer blog_id, String blog_title, String blog_content, String blog_date, String blog_writer, String blog_remarks) {
        this.blog_id = blog_id;
        this.blog_title = blog_title;
        this.blog_content = blog_content;
        this.blog_date = blog_date;
        this.blog_writer = blog_writer;
        this.blog_remarks = blog_remarks;
    }

    @Override
    public String toString() {
        return "User_blogs{" +
                "blog_id=" + blog_id +
                ", blog_title='" + blog_title + '\'' +
                ", blog_content='" + blog_content + '\'' +
                ", blog_date=" + blog_date +
                ", blog_writer='" + blog_writer + '\'' +
                ", blog_remarks='" + blog_remarks + '\'' +
                '}';
    }

    public Integer getBlog_id() {
        return blog_id;
    }

    public void setBlog_id(Integer blog_id) {
        this.blog_id = blog_id;
    }

    public String getBlog_title() {
        return blog_title;
    }

    public void setBlog_title(String blog_title) {
        this.blog_title = blog_title;
    }

    public String getBlog_content() {
        return blog_content;
    }

    public void setBlog_content(String blog_content) {
        this.blog_content = blog_content;
    }

    public String getBlog_date() {
        return blog_date;
    }

    public void setBlog_date(String blog_date) {
     /*   SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
     String str=   sdf.format(blog_date);
     try {
         this.blog_date =sdf.parse(str);
     }catch (Exception e){

     }*/
     this.blog_date=blog_date;


    }

    public String getBlog_writer() {
        return blog_writer;
    }

    public void setBlog_writer(String blog_writer) {
        this.blog_writer = blog_writer;
    }

    public String getBlog_remarks() {
        return blog_remarks;
    }

    public void setBlog_remarks(String blog_remarks) {
        this.blog_remarks = blog_remarks;
    }
}
