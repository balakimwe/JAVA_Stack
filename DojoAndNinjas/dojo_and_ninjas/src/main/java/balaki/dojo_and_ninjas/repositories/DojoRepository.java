package balaki.dojo_and_ninjas.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import balaki.dojo_and_ninjas.models.Dojo;

public interface DojoRepository extends CrudRepository<Dojo, Long> {
     List<Dojo> findAll();
    
}
