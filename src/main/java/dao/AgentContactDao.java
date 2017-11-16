package dao;

import models.AgentContact;

import java.util.List;

public interface AgentContactDao {
    void insert(AgentContact agent);
    List<AgentContact> getContacts();
    void delete(int id);
    AgentContact getContact(int id);
    void update(AgentContact agent);
}
