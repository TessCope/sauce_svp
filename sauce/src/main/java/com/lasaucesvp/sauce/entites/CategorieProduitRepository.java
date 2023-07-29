package com.lasaucesvp.sauce.entites;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource
public interface CategorieProduitRepository extends JpaRepository<CategorieProduit, Long> {

}
