package com.techelevator.dao;

import com.techelevator.model.Keyword;

import com.techelevator.model.Topic;

import java.util.List;


public interface TopicDao {

    public List <Topic> listAllReferences();

    public Topic findVideobyKeyword(String keyword_description);

    public Topic findTextRefbyKeyword(String keyword_description);

    public Topic findWebsiteRefbyKeyword(String keyword_description);

    public List <Topic> getCurriculumHelp(String topic_type);

    public List <Topic> getPathwayHelp(String topic_type);



}

