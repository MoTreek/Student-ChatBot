package com.techelevator.model;

public class Topic {
    private int topicId;
    private String videoRef;
    private String textRef;
    private String webRef;
    private String topicType;

    public Topic() {
    }

    public Topic(int topicId, String videoRef, String textRef, String webRef, String topicType) {
        this.topicId = topicId;
        this.videoRef = videoRef;
        this.textRef = textRef;
        this.webRef = webRef;
        this.topicType = topicType;
    }

    public int getTopicId() {
        return topicId;
    }

    public void setTopicId(int topicId) {
        this.topicId = topicId;
    }

    public String getVideoRef() {
        return videoRef;
    }

    public void setVideoRef(String videoRef) {
        this.videoRef = videoRef;
    }

    public String getTextRef() {
        return textRef;
    }

    public void setTextRef(String textRef) {
        this.textRef = textRef;
    }

    public String getWebRef() {
        return webRef;
    }

    public void setWebRef(String webRef) {
        this.webRef = webRef;
    }

    public String getTopicType() {
        return topicType;
    }

    public void setTopicType(String topicType) {
        this.topicType = topicType;
    }
}
