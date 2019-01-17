package pl.coderslab;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.ServletContextInitializer;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;
import pl.coderslab.controller.HomeController;

import javax.servlet.ServletContext;

@SpringBootApplication /* war */ /* mvn clean package spring-boot:repackage */
public class SpringBootWebApplication extends SpringBootServletInitializer
{
    public static void main(String[] args)
    {
        SpringApplication.run(SpringBootWebApplication.class, args);
    }

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application)
    {
        return application.sources(SpringBootWebApplication.class);
    }
}

//@SpringBootApplication /* jar */
//public class SpringBootWebApplication
//{
//    public static void main(String[] args)
//    {
//        SpringApplication.run(SpringBootWebApplication.class, args);
//    }
//}
