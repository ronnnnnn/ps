package com.zyfz.web.controller;

import com.zyfz.domain.Show;
import com.zyfz.service.IShowService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by ron on 17-1-11.
 */
@Controller
public class ClientShowController extends BaseController{

    @Resource
    IShowService showService;

    @RequestMapping(value = "/api/v1/anon/show",method = RequestMethod.GET)
    public void getPic(HttpServletResponse response){
        super.writeJson(showService.getPicByType("轮播图"),response);
    }

    /**
     * type = 1 首页图
     * @param response
     */
    @RequestMapping(value = "/api/v1/anon/show/{type}",method = RequestMethod.GET)
    public void getPic(@PathVariable Integer type, HttpServletResponse response){
        if (type == 1){
            List<Show> shows = showService.getPicByType("首页图");
            super.writeJson(shows.get(0).getImageUrl(),response);
        }
    }
}
