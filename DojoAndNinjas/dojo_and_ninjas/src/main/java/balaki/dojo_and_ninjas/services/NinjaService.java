package balaki.dojo_and_ninjas.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import balaki.dojo_and_ninjas.models.Ninja;
import balaki.dojo_and_ninjas.repositories.NinjaRepository;

@Service
public class NinjaService {

    @Autowired NinjaRepository ninjaRepository;

    public void createNinja(Ninja ninja) {
        ninjaRepository.save(ninja);
    }
    
}
