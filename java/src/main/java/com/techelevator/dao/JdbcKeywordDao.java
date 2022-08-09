package com.techelevator.dao;

import com.techelevator.model.Keyword;
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
        return null;
    }

    @Override
    public Keyword findKeywordByDescription(String keyword_description) {
        return null;
    }

    @Override
    public boolean create(int keywordId, String keyword_description) {
        return false;
    }

    public Keyword mapRowToKeyword(SqlRowSet rs) {
        Keyword keyword = new Keyword();
        keyword.setKeywordId(rs.getInt("keyword_id"));
        keyword.setKeywordDescription(rs.getString("keyword_description"));

        return keyword;
    }
}
