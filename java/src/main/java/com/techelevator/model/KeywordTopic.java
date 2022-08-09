package com.techelevator.model;

public class KeywordTopic {
    private int topicId;
    private int keywordId;

    public KeywordTopic() {
    }

    public KeywordTopic(int topicId, int keywordId) {
        this.topicId = topicId;
        this.keywordId = keywordId;
    }

    public int getTopicId() {
        return topicId;
    }

    public void setTopicId(int topicId) {
        this.topicId = topicId;
    }

    public int getKeywordId() {
        return keywordId;
    }

    public void setKeywordId(int keywordId) {
        this.keywordId = keywordId;
    }
}
