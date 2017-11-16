package controllers.rest;

import entities.ResponseEntities;
import models.AgentContact;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import service.AgentContactService;

import java.util.List;

@Controller
public class AgentContactsRestController {

    @Autowired
    AgentContactService agentContactService;


    @RequestMapping("Contacts")
    public @ResponseBody
    List<AgentContact> GetAgents() {
        return agentContactService.getContacts();
    }

    @RequestMapping("GetContact")
    public @ResponseBody
    AgentContact GetAgent(@RequestBody AgentContact a){
        return agentContactService.getContact(a.getId());
    }


    @RequestMapping(value = "AddContact", method = RequestMethod.POST)
    public ResponseEntity<ResponseEntities> insertAgent(@RequestBody AgentContact a) {
        if (a != null) {
            agentContactService.insert(a);
            return new ResponseEntity<ResponseEntities>(new ResponseEntities("OK","Added Successfully"), HttpStatus.OK);
        }else{
            return new ResponseEntity<ResponseEntities>(new ResponseEntities("errormsg","An Error with ur Json Object"), HttpStatus.BAD_REQUEST);
        }
    }

    @RequestMapping(value = "UpdateContact", method = RequestMethod.POST)
    public ResponseEntity<ResponseEntities> updateAgent(@RequestBody AgentContact a) {
        if (a != null) {
            agentContactService.update(a);
            return new ResponseEntity<ResponseEntities>(new ResponseEntities("OK","Updated Successfully"), HttpStatus.OK);
        }else{
            return new ResponseEntity<ResponseEntities>(new ResponseEntities("errormsg","An Error with ur Json Object Format"), HttpStatus.BAD_REQUEST);
        }
    }


}
