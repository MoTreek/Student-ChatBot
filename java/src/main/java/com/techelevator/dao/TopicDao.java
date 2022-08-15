package com.techelevator.dao;

import com.techelevator.model.Keyword;

import com.techelevator.model.Topic;

import java.util.List;


public interface TopicDao {

    public List <Topic> listAllReferences();

    public String findVideobyKeyword(String keyword_description);

    public String findTextRefbyKeyword(String keyword_description);

    public String findWebsiteRefbyKeyword(String keyword_description);


}

