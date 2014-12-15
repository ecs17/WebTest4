package casant.webtest4.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import casant.webtest4.model.Cliente;
import casant.webtest4.service.ClientService;

@Controller
public class ClientController {

	@Autowired
	private ClientService clienteService;
	
	@RequestMapping(value="/agregarCliente", method = RequestMethod.POST)
	public void addCliente(@ModelAttribute("clientes") List<Cliente> clientes) {
		for(Cliente cliente : clientes) {
			System.out.println(cliente.getNombre());
		}
	}
}
