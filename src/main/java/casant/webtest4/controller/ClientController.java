package casant.webtest4.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import casant.webtest4.model.Cliente;
import casant.webtest4.service.ClientService;

@Controller
public class ClientController {

	private final static Logger logger = Logger.getLogger(ClientController.class);
	
	@Autowired
	private ClientService clienteService;
	
	@RequestMapping(value="/clientesForm", method =  RequestMethod.GET)
	public String displayClientesForm(Model model){
		logger.info("Displaying Cliente form");
		model.addAttribute("name", "World");
		return "clienteForm";
	}
	
	@RequestMapping(value="/agregarCliente", method = RequestMethod.POST)
	public void addCliente(@ModelAttribute("clientes") List<Cliente> clientes) {
		for(Cliente cliente : clientes) {
			logger.info("Cliente "+cliente.getNombre());;
		}
	}
}
