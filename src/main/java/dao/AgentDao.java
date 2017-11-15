package dao;

import models.*;

import java.util.List;


public interface AgentDao {
    void insertData(Agent agent);
    List<Agent> getAgentList();
    void deleteAgent(int id);
    Agent getAgent(int id);
    void updateData(Agent agent);
}
