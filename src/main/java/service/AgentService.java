package service;

import models.Agent;

import java.util.List;

/**
 * Created by Michael on 7/26/2017.
 */

public interface AgentService {
     void insertData(Agent agent);
     List<Agent> getAgentList();
     void deleteAgent(int id);
     Agent getAgent(int id);
     void updateData(Agent agent);
}
