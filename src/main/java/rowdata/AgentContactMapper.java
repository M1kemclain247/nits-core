package rowdata;

import models.AgentContact;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class AgentContactMapper implements RowMapper<AgentContact> {

    @Override
    public AgentContact mapRow(ResultSet rs, int i) throws SQLException {
        return new Extractor().extractData(rs);
    }

    private static class Extractor implements ResultSetExtractor<AgentContact>{

        @Override
        public AgentContact extractData(ResultSet rs) throws SQLException, DataAccessException {
             AgentContact c = new AgentContact();

                c.setId(rs.getInt("id"));
                c.setName(rs.getString("name"));
                c.setEmail(rs.getString("email"));
                c.setNumber(rs.getString("number"));
                c.setAgent_id(rs.getInt("agent_id"));
            return c;
        }
    }

}
