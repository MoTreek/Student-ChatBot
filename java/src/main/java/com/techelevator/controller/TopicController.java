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



    @RequestMapping(path= "/{keyword_description}", method = RequestMethod.GET)
    public Topic getVideo (@PathVariable String keyword_description) {return dao.findVideobyKeyword(keyword_description);}

//    @RequestMapping(path= "/{keywordDescription}/text", method = RequestMethod.GET)
//    public Topic getText (@PathVariable String keywordDescription) {return dao.findTextRefbyKeyword(keywordDescription);}
//
//    @RequestMapping(path= "/web/{keywordDescription}/website", method = RequestMethod.GET)
//    public Topic getWebsite (@PathVariable String keywordDescription) {return dao. findWebsiteRefbyKeyword(keywordDescription);}
//


}


