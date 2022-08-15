package com.techelevator.dao;
import com.techelevator.model.Questions;
import com.techelevator.model.Topic;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;


import java.util.ArrayList;
import java.util.List;


@Component
public class JdbcQuestionsDao implements QuestionsDao {

    private final JdbcTemplate jdbcTemplate;


    public JdbcQuestionsDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }





    @Override
    public List<Questions> listAllQuestionsAndAnswers() {
        List<Questions> questionList = new ArrayList<>();
        String sql = "SELECT * FROM question";

        SqlRowSet result = jdbcTemplate.queryForRowSet(sql);
        while (result.next()) {
            questionList.add(mapRowSetToQuestions(result));
        }

        return questionList;

    }

    @Override
    public List<Questions> getQuestionsByType(String questionType) {
        List<Questions> questionList = new ArrayList<>();
        String sql = "SELECT question_id, the_question, question_answer, question_type FROM question WHERE question_type = ?;";

        SqlRowSet result = jdbcTemplate.queryForRowSet(sql, questionType);

        while (result.next()) {
            questionList.add(mapRowSetToQuestions(result));
        }

        return questionList;
    }

    @Override
    public String getAnswerByQuestionId(int questionId) {

        String sql = "Select question_answer FROM question WHERE question_id = ?;";

        String result = jdbcTemplate.queryForObject(sql, String.class, questionId);

        return result;
    }

//


    public Questions mapRowSetToQuestions(SqlRowSet result) {

        Questions questions = new Questions();
        questions.setQuestionId(result.getInt("question_id"));
        questions.setTheQuestion(result.getString("the_question"));
        questions.setQuestionAnswer(result.getString("question_answer"));
        questions.setQuestionType(result.getString("question_type"));

        return questions;
    }
}
//    public String getQuestionByKeyword(String keyword_description) {
//        String sql = "Select the_question FROM questions " +
//                "JOIN keyword_question ON keyword_question.question_id = questions.question_id " +
//                "JOIN keyword ON keyword.keyword_id = keyword_question.keyword_id " +
//                "WHERE keyword.keyword_description ILIKE '%' || ? || '%' LIMIT 1;";
//
//        String result = jdbcTemplate.queryForObject(sql, String.class, keyword_description);
//
//        return result;
//    }
//
//    @Override
//    public String getAnswerByKeyword(String keyword_description) {
//        String sql = "Select question_answer FROM questions " +
//                "JOIN keyword_question ON keyword_question.question_id = questions.question_id " +
//                "JOIN keyword ON keyword.keyword_id = keyword_question.keyword_id " +
//                "WHERE keyword.keyword_description ILIKE '%' || ? || '%' LIMIT 1;";
//
//        String result = jdbcTemplate.queryForObject(sql, String.class, keyword_description);
//
//        return result;    }