package service;

import dao.AgentDao;
import models.Agent;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;


public class AgentServiceImpl implements AgentService{

    @Autowired
    AgentDao agentDao;

    @Override
    public void insertData(Agent agent) {
        agentDao.insertData(agent);
    }

    @Override
    public List<Agent> getAgentList() {
        return agentDao.getAgentList();
    }

    @Override
    public void deleteAgent(int id) {
        agentDao.deleteAgent(id);
    }

    @Override
    public Agent getAgent(int id) {
        return agentDao.getAgent(id);
    }

    @Override
    public void updateData(Agent agent) {
        agentDao.updateData(agent);
    }
}
