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
    public String findVideobyKeyword(String keyword_description) {


            String sql = "SELECT videoref FROM topic " +
                    "JOIN keyword_topic ON keyword_topic.topic_id = topic.topic_id " +
                    "JOIN keyword ON keyword.keyword_id = keyword_topic.keyword_id " +
                    "WHERE keyword.keyword_description ILIKE '%' || ? || '%' LIMIT 1;";

            String result = jdbcTemplate.queryForObject(sql, String.class, keyword_description);


            return result;
        }

    @Override
    public String findTextRefbyKeyword(String keywordDescription) {

        String sql = "SELECT textref FROM topic " +
                "JOIN keyword_topic ON keyword_topic.topic_id = topic.topic_id " +
                "JOIN keyword ON keyword.keyword_id = keyword_topic.keyword_id " +
                "WHERE keyword.keyword_description ILIKE '%' || ? || '%' LIMIT 1;";

        String result = jdbcTemplate.queryForObject(sql, String.class, keywordDescription);


        return result;
    }

    @Override
    public String findWebsiteRefbyKeyword(String keywordDescription) {
        String sql = "SELECT webref FROM topic " +
                "JOIN keyword_topic ON keyword_topic.topic_id = topic.topic_id " +
                "JOIN keyword ON keyword.keyword_id = keyword_topic.keyword_id " +
                "WHERE keyword.keyword_description ILIKE '%' || ? || '%' LIMIT 1;";

        String result = jdbcTemplate.queryForObject(sql, String.class, keywordDescription);


        return result;
    }



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




