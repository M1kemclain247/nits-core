package controllers.rest;

import entities.ResponseEntities;
import models.Agent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import service.AgentService;

import java.util.List;

@Controller
public class AgentRestController {


    @Autowired
    AgentService agentService;

    @RequestMapping("Agents")
    public @ResponseBody
    List<Agent> GetAgents() {
        return agentService.getAgentList();
    }

    @RequestMapping("GetAgent")
    public @ResponseBody
    Agent GetAgent(@RequestBody Agent agent){
        return agentService.getAgent(agent.getId());
    }


    @RequestMapping(value = "AddAgent", method = RequestMethod.POST)
    public ResponseEntity<ResponseEntities> insertAgent(@RequestBody Agent agent) {
        if (agent != null) {
                    agentService.insertData(agent);
                    return new ResponseEntity<ResponseEntities>(new ResponseEntities("OK","Added Successfully"), HttpStatus.OK);
        }else{
            return new ResponseEntity<ResponseEntities>(new ResponseEntities("errormsg","An Error with ur Json Object"), HttpStatus.BAD_REQUEST);
        }
    }

    @RequestMapping(value = "UpdateAgent", method = RequestMethod.POST)
    public ResponseEntity<ResponseEntities> updateAgent(@RequestBody Agent agent) {
        if (agent != null) {
                agentService.updateData(agent);
                return new ResponseEntity<ResponseEntities>(new ResponseEntities("OK","Updated Successfully"), HttpStatus.OK);
        }else{
            return new ResponseEntity<ResponseEntities>(new ResponseEntities("errormsg","An Error with ur Json Object Format"), HttpStatus.BAD_REQUEST);
        }
    }

}
