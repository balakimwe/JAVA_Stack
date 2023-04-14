package balaki.dojo_and_ninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import balaki.dojo_and_ninjas.models.Dojo;
import balaki.dojo_and_ninjas.repositories.DojoRepository;

@Service
public class DojoService {

    @Autowired DojoRepository dojoRepository;

    public void createDojo(Dojo dojo) {
        dojoRepository.save(dojo);
    }

    public List<Dojo> getAllDojos() {
        return dojoRepository.findAll();
    }

    public Dojo getDojoById(Long id) {
        Optional<Dojo> dojo = dojoRepository.findById(id);
        return dojo.orElse(null);
    }
    
}
