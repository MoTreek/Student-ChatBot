package com.techelevator.controller;


import com.techelevator.dao.KeywordDao;
import com.techelevator.model.Keyword;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin
@RestController
public class KeywordController {
    private KeywordDao keywordDao;

    public KeywordController(KeywordDao keywordDao) {
        this.keywordDao = keywordDao;
    }

    @RequestMapping(path = "/keywords", method = RequestMethod.GET)
    public List<Keyword> findAll() {
        return keywordDao.findAll();
    }

    @RequestMapping(path = "/keyword/{keywordId}", method = RequestMethod.GET)
    public Keyword getKeywordById(@PathVariable int keywordId){
        return keywordDao.getKeywordById(keywordId);
    }

    @RequestMapping(path = "/keywords/{keyword_description}", method = RequestMethod.GET)
    public Keyword findKeywordByDescription(@PathVariable String keyword_description){
        return keywordDao.findKeywordByDescription(keyword_description);
    }
}
