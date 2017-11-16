package service.implementation;

import dao.AgentContactDao;
import models.AgentContact;
import org.springframework.beans.factory.annotation.Autowired;
import service.AgentContactService;

import java.util.List;

public class AgentContactServiceImpl implements AgentContactService {

    @Autowired
    AgentContactDao agentContactDao;

    @Override
    public void insert(AgentContact agent) {
        agentContactDao.insert(agent);
    }

    @Override
    public List<AgentContact> getContacts() {
        return agentContactDao.getContacts();
    }

    @Override
    public void delete(int id) {
        agentContactDao.delete(id);
    }

    @Override
    public AgentContact getContact(int id) {
        return agentContactDao.getContact(id);
    }

    @Override
    public void update(AgentContact agent) {
        agentContactDao.update(agent);
    }

}
