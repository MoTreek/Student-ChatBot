package com.techelevator.controller;

import com.techelevator.dao.JdbcTopicDao;
import com.techelevator.model.Topic;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("/topic")

public class TopicController {


        private JdbcTopicDao dao;

        public TopicController(JdbcTopicDao dao) {this.dao = dao;}



    @RequestMapping(path="", method = RequestMethod.GET)
    public List<Topic> getAll() {return dao.listAllReferences(); }



    @RequestMapping(path= "/video/{keyword_description}", method = RequestMethod.GET)
    public String getVideo (@PathVariable String keyword_description) {return dao.findVideobyKeyword(keyword_description);}

    @RequestMapping(path= "/text/{keywordDescription}", method = RequestMethod.GET)
    public String getText (@PathVariable String keywordDescription) {return dao.findTextRefbyKeyword(keywordDescription);}

    @RequestMapping(path= "/web/{keywordDescription}", method = RequestMethod.GET)
    public String getWebsite (@PathVariable String keywordDescription) {return dao. findWebsiteRefbyKeyword(keywordDescription);}



}


