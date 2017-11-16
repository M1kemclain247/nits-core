package dao.implementation;

import dao.AgentDao;
import models.Agent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import rowdata.AgentMapper;

import javax.sql.DataSource;
import java.util.*;

public class AgentDaoImpl implements AgentDao {

    @Autowired
    DataSource dataSource;

    @Override
    public void insertData(Agent agent) {

        String sql = "INSERT INTO agents "
                + "(name,address,officeid,helpdeskpin,group_id) VALUES (?,?,?,?,?)";
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        jdbcTemplate.update(
                sql,
                agent.getName(), agent.getAddress(), agent.getOfficeID(), agent.getHelpDeskPin(),agent.getGroup().getId());
    }

    @Override
    public List<Agent> getAgentList() {

        String sql = "SELECT * FROM db_nits.agents a INNER JOIN db_nits.agent_groups g ON a.group_id = g.id " +
                " ORDER BY name ASC ";

        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        return jdbcTemplate.query(sql, new AgentMapper(dataSource));
    }

    @Override
    public void updateData(Agent agent) {
        String sql = "UPDATE agents set name = ?,address = ?, officeid = ?, helpdeskpin = ?,group_id = ? where id = ?";
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        jdbcTemplate.update(
                sql,
                agent.getName(), agent.getAddress(), agent.getOfficeID(), agent.getHelpDeskPin(),agent.getGroup().getId(),agent.getId());
    }

    @Override
    public void deleteAgent(int id) {

        String sql = "DELETE FROM agents WHERE id=" + id;
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        jdbcTemplate.update(sql);
    }

    @Override
    public Agent getAgent(int id) {
        String sql = "SELECT * FROM agents WHERE id= " + id;
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        return jdbcTemplate.queryForObject(sql, new AgentMapper(dataSource));
    }
}
