package dao.implementation;

import dao.AgentContactDao;
import models.AgentContact;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import rowdata.AgentContactMapper;
import rowdata.AgentMapper;

import javax.sql.DataSource;
import java.util.List;

public class AgentContactDaoImpl implements AgentContactDao{

    @Autowired
    DataSource dataSource;

    @Override
    public void insert(AgentContact a) {

        String sql = "INSERT INTO agent_contacts "
                + "(name,email,number,agent_id) VALUES (?,?,?,?)";
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        jdbcTemplate.update(
                sql,
                a.getName(), a.getEmail(), a.getNumber(), a.getAgent_id());
    }

    @Override
    public List<AgentContact> getContacts() {
        String sql = "SELECT * FROM agent_contacts" +
                " ORDER BY name ASC ";

        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        return jdbcTemplate.query(sql, new AgentContactMapper(dataSource));
    }

    @Override
    public void delete(int id) {
        String sql = "DELETE FROM agent_contacts WHERE id=" + id;
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        jdbcTemplate.update(sql);
    }

    @Override
    public AgentContact getContact(int id) {
        String sql = "SELECT * FROM agent_contacts WHERE id= " + id;
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        return jdbcTemplate.queryForObject(sql, new AgentContactMapper(dataSource));
    }

    @Override
    public void update(AgentContact a) {
        String sql = "UPDATE agent_contacts set name = ?,email = ?, number = ?, agent_id = ? where id = ?";
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        jdbcTemplate.update(
                sql,
                a.getName(), a.getEmail(), a.getNumber(), a.getAgent_id(),a.getId());
    }
}
