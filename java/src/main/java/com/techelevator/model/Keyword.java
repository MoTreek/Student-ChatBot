package com.techelevator.model;

public class Keyword {
    private int keywordId;
    private String keywordDescription;

    public Keyword() {
    }

    public Keyword(int keywordId, String keywordDescription) {
        this.keywordId = keywordId;
        this.keywordDescription = keywordDescription;
    }

    public int getKeywordId() {
        return keywordId;
    }

    public void setKeywordId(int keywordId) {
        this.keywordId = keywordId;
    }

    public String getKeywordDescription() {
        return keywordDescription;
    }

    public void setKeywordDescription(String keywordDescription) {
        this.keywordDescription = keywordDescription;
    }
}
