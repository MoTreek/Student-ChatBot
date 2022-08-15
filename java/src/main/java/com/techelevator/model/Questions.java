package com.techelevator.model;

public class Questions {

    private int questionId;
    private String theQuestion;
    private String questionAnswer;
    private String questionType;

    public Questions() {}

    public Questions(int questionId, String theQuestion, String questionAnswer, String questionType) {
        this.questionId = questionId;
        this.theQuestion = theQuestion;
        this.questionAnswer = questionAnswer;
        this.questionType = questionType;

    }

    public int getQuestionId() {
        return questionId;
    }

    public void setQuestionId(int questionId) {
        this.questionId = questionId;
    }

    public String getTheQuestion() {
        return theQuestion;
    }

    public void setTheQuestion(String theQuestion) {
        this.theQuestion = theQuestion;
    }

    public String getQuestionAnswer() {
        return questionAnswer;
    }

    public void setQuestionAnswer(String questionAnswer) {
        this.questionAnswer = questionAnswer;
    }

    public String getQuestionType() {
        return questionType;
    }

    public void setQuestionType(String questionType) {
        this.questionType = questionType;
    }
}
