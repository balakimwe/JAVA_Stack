package balaki.dojo_and_ninjas.repositories;

import org.springframework.data.repository.CrudRepository;

import balaki.dojo_and_ninjas.models.Ninja;

public interface NinjaRepository extends CrudRepository<Ninja, Long> {
    
}
