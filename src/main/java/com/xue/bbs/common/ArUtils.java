package com.xue.bbs.common;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;

import com.xue.bbs.pojo.Article;

/**
 * Article实例赋值
 * @author xuexue
 *
 */
public class ArUtils {
	public static void initArticle(Article article, ResultSet rs) throws ParseException {
		try {
			article.setId(rs.getInt("id"));
			article.setPid(rs.getInt("pid"));
			article.setRootid(rs.getInt("rootid"));
			article.setTitle(rs.getString("title"));
			article.setCont(rs.getString("cont"));
			article.setIsdeaf(rs.getInt("isleaf"));
			article.setPdate(rs.getTimestamp("pdate"));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
}