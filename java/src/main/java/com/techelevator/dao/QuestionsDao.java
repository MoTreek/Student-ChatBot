package com.techelevator.dao;
import com.techelevator.model.Questions;

import java.util.List;


public interface QuestionsDao {
    public List<Questions> listAllQuestionsAndAnswers();

    public List<Questions> getQuestionsByType(String questionType);

    public String getAnswerByQuestionId(int questionId);
}
