package com.techelevator.dao;

import com.techelevator.model.Keyword;
import com.techelevator.model.UserNotFoundException;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcKeywordDao implements KeywordDao{

    private JdbcTemplate jdbcTemplate;

    public JdbcKeywordDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<Keyword> findAll() {

        List<Keyword> keywords = new ArrayList<>();
        String sql = "SELECT keyword_id, keyword_description FROM keyword;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
        while (results.next()) {
            keywords.add(mapRowToKeyword(results));
        }
        return keywords;
    }

    @Override
    public Keyword getKeywordById(int keywordId) {
        Keyword key = new Keyword();
        String sql = "SELECT * FROM keyword WHERE keyword_id = ?";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, keywordId);
        if (results.next()) {
            key = mapRowToKeyword(results);

        }
        return key;
    }

    @Override
    public Keyword findKeywordByDescription(String keyword_description) {
        Keyword key = new Keyword();
        String sql = "SELECT * FROM keyword WHERE keyword_description ILIKE '%' || ? || '%'";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, keyword_description);
        if (results.next()) {
            key = mapRowToKeyword(results);

        }
        return key;
    }

    @Override
    public boolean create(int keywordId, String keyword_description) {
        return false;
//        Gonna Hold Off Until Im Sure We Need This Function
    }

    public Keyword mapRowToKeyword(SqlRowSet rs) {
        Keyword keyword = new Keyword();
        keyword.setKeywordId(rs.getInt("keyword_id"));
        keyword.setKeywordDescription(rs.getString("keyword_description"));

        return keyword;
    }
}
