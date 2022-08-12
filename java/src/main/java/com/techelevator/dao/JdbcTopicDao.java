package com.techelevator.dao;
import com.techelevator.model.Topic;
import org.apache.commons.text.similarity.LevenshteinDistance;
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
                    "WHERE keyword.keyword_description ILIKE '%' || ? || '%';";


             SqlRowSet rs = jdbcTemplate.queryForRowSet(sql, keyword_description);

             String closetMatch = null;
             int distanceCompare = 10000;

            while (rs.next()) {
                LevenshteinDistance levenshteinDistance = LevenshteinDistance.getDefaultInstance();
                Integer distance = levenshteinDistance.apply(keyword_description, rs.getString("videoref"));

                if (distanceCompare > distance) {
                    distanceCompare = distance;
                    closetMatch = rs.getString("videoref");
                }

            }



            return closetMatch;
        }

    @Override
    public String findTextRefbyKeyword(String keywordDescription) {

        String sql = "SELECT textref FROM topic " +
                "JOIN keyword_topic ON keyword_topic.topic_id = topic.topic_id " +
                "JOIN keyword ON keyword.keyword_id = keyword_topic.keyword_id " +
                "WHERE keyword.keyword_description ILIKE '%' || ? || '%' LIMIT 1;";


        SqlRowSet rs = jdbcTemplate.queryForRowSet(sql, keywordDescription);

        String closetMatch = null;
        int distanceCompare = 10000;

        while (rs.next()) {
            LevenshteinDistance levenshteinDistance = LevenshteinDistance.getDefaultInstance();
            Integer distance = levenshteinDistance.apply(keywordDescription, rs.getString("textref"));

            if (distanceCompare > distance) {
                distanceCompare = distance;
                closetMatch = rs.getString("textref");
            }


        }
        return closetMatch;
    }


        @Override
    public String findWebsiteRefbyKeyword(String keywordDescription) {
        String sql = "SELECT webref FROM topic " +
                "JOIN keyword_topic ON keyword_topic.topic_id = topic.topic_id " +
                "JOIN keyword ON keyword.keyword_id = keyword_topic.keyword_id " +
                "WHERE keyword.keyword_description ILIKE '%' || ? || '%' LIMIT 1;";

            SqlRowSet rs = jdbcTemplate.queryForRowSet(sql, keywordDescription);

            String closetMatch = null;
            int distanceCompare = 10000;

            while (rs.next()) {
                LevenshteinDistance levenshteinDistance = LevenshteinDistance.getDefaultInstance();
                Integer distance = levenshteinDistance.apply(keywordDescription, rs.getString("webref"));

                if (distanceCompare > distance) {
                    distanceCompare = distance;
                    closetMatch = rs.getString("webref");
                }


            }
            return closetMatch;
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




