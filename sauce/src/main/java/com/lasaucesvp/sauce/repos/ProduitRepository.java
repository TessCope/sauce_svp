package com.lasaucesvp.sauce.repos;

import com.lasaucesvp.sauce.entites.Produit;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;


@RepositoryRestResource
public interface ProduitRepository extends JpaRepository<Produit, Long> {

    Page<Produit> findByNiveauEpice_Id(@Param("id") Long id, Pageable pageable);

    Page<Produit> findByNomProduitContaining(@Param("nom") String nom, Pageable pageable);
}


