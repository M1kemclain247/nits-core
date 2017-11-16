package rowdata;

import models.Agent;
import models.AgentGroup;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;


public class AgentMapper implements RowMapper<Agent> {

    private DataSource dataSource;

    public AgentMapper(DataSource dataSource){
        this.dataSource= dataSource;
    }

    @Override
    public Agent mapRow(ResultSet rs, int i) throws SQLException {
        return new Extractor().extractData(rs);
    }

    private class Extractor implements ResultSetExtractor<Agent> {

        @Override
        public Agent extractData(ResultSet rs) throws SQLException, DataAccessException {

            Agent a = new Agent();

            a.setId(rs.getInt("a.id"));
            a.setName(rs.getString("a.name"));
            a.setAddress(rs.getString("a.address"));
            a.setOfficeID(rs.getString("a.officeid"));
            a.setHelpDeskPin(rs.getString("a.helpdeskpin"));

            AgentGroup g = new AgentGroup();

            g.setId(rs.getInt("g.id"));
            g.setGroupName(rs.getString("g.group_name"));
            a.setGroup(g);


            String sql = "SELECT * FROM agent_contacts WHERE agent_id ="+a.getId();


            JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
            a.setContacts(jdbcTemplate.query(sql,new AgentContactMapper(dataSource)));

            return a;
        }
    }


}
