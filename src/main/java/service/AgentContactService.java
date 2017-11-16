package service;

import models.AgentContact;

import java.util.List;

public interface AgentContactService {
    void insert(AgentContact agent);
    List<AgentContact> getContacts();
    void delete(int id);
    AgentContact getContact(int id);
    void update(AgentContact agent);
}
