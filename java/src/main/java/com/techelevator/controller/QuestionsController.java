package com.techelevator.controller;

import com.techelevator.dao.JdbcQuestionsDao;
import com.techelevator.model.Questions;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin
//@PreAuthorize("permitAll")
@RestController
@RequestMapping("/questions")

public class QuestionsController {

    private JdbcQuestionsDao dao;

    public QuestionsController(JdbcQuestionsDao dao) {this.dao = dao;}


    @RequestMapping( method = RequestMethod.GET)
    public List<Questions> getEveryQuestionAndAnswer() {return dao.listAllQuestionsAndAnswers();}


    @RequestMapping(path="/questionType/{questionType}", method = RequestMethod.GET)
    public List<Questions> getQuestions (@PathVariable String questionType) {return dao.getQuestionsByType(questionType);}


    @RequestMapping(path="/answer/{questionId}", method = RequestMethod.GET)
    public String getAnswer (@PathVariable int questionId) {return dao.getAnswerByQuestionId(questionId);}


}
