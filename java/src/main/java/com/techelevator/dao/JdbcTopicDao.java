package com.techelevator.dao;
import com.techelevator.model.Topic;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcTopicDao implements TopicDao {



        private final JdbcTemplate jdbcTemplate;


        public JdbcTopicDao(JdbcTemplate jdbcTemplate) {
            this.jdbcTemplate = jdbcTemplate;
        }


        public List<Topic> listAllReferences() {
            List<Topic> refList = new ArrayList<>();
            String sql = "SELECT * FROM topic;";

            SqlRowSet result = jdbcTemplate.queryForRowSet(sql);
            while (result.next()) {
                refList.add(mapRowSetToTopic(result));
            }
            return refList;

        }

    @Override
    public Topic findVideobyKeyword(String keyword_description) {
        {
            Topic topic = new Topic();

            String sql = "SELECT videoref FROM topic " +
                    "JOIN keyword_topic ON keyword_topic.topic_id = topic.topic_id " +
                    "JOIN keyword ON keyword.keyword_id = keyword_topic.keyword_id " +
                    "WHERE keyword.keyword_description ILIKE '%' || ? || '%'";

            SqlRowSet result = jdbcTemplate.queryForRowSet(sql, keyword_description);

            while (result.next()) {
                topic = mapRowSetToTopic(result);
            }
            return topic;
        }    }

    @Override
    public Topic findTextRefbyKeyword(String keywordDescription) {
        {
            Topic topic  = new Topic();

            String sql = "SELECT topic.TextRef FROM topic" +
                    "JOIN keyword_topic ON keyword_topic.topic_id = topic.topic_id" +
                    "JOIN keyword ON keyword.keyword_id = keyword_topic.keyword_id" +
                    "WHERE keyword.keyword_description = ILIKE '%' || ? || '%';";

            SqlRowSet result = jdbcTemplate.queryForRowSet(sql, keywordDescription);

            while (result.next()) {
                topic = mapRowSetToTopic(result);
            }
            return topic;
        }    }

    @Override
    public Topic findWebsiteRefbyKeyword(String keywordDescription) {
        {
            Topic topic = new Topic();

            String sql = "SELECT topic.WebRef FROM topic" +
                    "JOIN keyword_topic ON keyword_topic.topic_id = topic.topic_id" +
                    "JOIN keyword ON keyword.keyword_id = keyword_topic.keyword_id" +
                    "WHERE keyword.keyword_description = ILIKE '%' || ? || '%';";

            SqlRowSet result = jdbcTemplate.queryForRowSet(sql, keywordDescription);

            while (result.next()) {
                topic = mapRowSetToTopic(result);
            }
            return topic;

        }    }

    @Override
    public List<Topic> getCurriculumHelp(String topicType) {
        {
            List<Topic> curriculumTopics = new ArrayList<Topic>();

            String sql = "SELECT topic_type FROM topic WHERE topic_type = 'Curriculum';";

            SqlRowSet results = jdbcTemplate.queryForRowSet(sql, topicType);
            while (results.next()) {
                curriculumTopics.add(mapRowSetToTopic(results));
            }
            return curriculumTopics;
        }    }

    @Override
    public List<Topic> getPathwayHelp(String topicType) {
        {
            List<Topic> pathwayTopics = new ArrayList<Topic>();

            String sql= "SELECT topic_type FROM topic WHERE topic_type = 'Pathway';";

            SqlRowSet results = jdbcTemplate.queryForRowSet(sql, topicType);
            while (results.next()) {
                pathwayTopics.add(mapRowSetToTopic(results));
            }
            return pathwayTopics;
        }    }




        public Topic mapRowSetToTopic(SqlRowSet result) {

            Topic topic = new Topic();
            topic.setTopicId(result.getInt("topic_id"));
            topic.setVideoRef(result.getString("videoref"));
            topic.setTextRef(result.getString("textref"));
            topic.setWebRef(result.getString("webref"));
            topic.setTopicType(result.getString("topic_type"));

            return topic;
        }
    }




