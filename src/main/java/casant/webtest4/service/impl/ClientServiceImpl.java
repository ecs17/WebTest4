package casant.webtest4.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import casant.webtest4.dao.ClienteDao;
import casant.webtest4.model.Cliente;
import casant.webtest4.service.ClientService;

@Component
public class ClientServiceImpl implements ClientService{

	@Autowired
	private ClienteDao clienteDao;
	
	@Override
	public void addClient(Cliente cliente) {
		// TODO Auto-generated method stub
		clienteDao.agregarCliente(cliente);
	}
}
