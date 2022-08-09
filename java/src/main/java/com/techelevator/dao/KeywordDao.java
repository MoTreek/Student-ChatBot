package com.techelevator.dao;

import com.techelevator.model.Keyword;


import java.util.List;

public interface KeywordDao {

        List<Keyword> findAll();

        Keyword getKeywordById(int keywordId);

        Keyword findKeywordByDescription(String keyword_description);

        boolean create(int keywordId, String keyword_description);

}
