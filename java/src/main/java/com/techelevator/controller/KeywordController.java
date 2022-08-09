package com.techelevator.controller;


import com.techelevator.dao.KeywordDao;
import com.techelevator.model.Keyword;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

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
}
