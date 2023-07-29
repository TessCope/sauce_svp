package com.lasaucesvp.sauce.entites;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.Set;

@Entity
@Table(name="categorie_produit")
@Getter //Desfois des bug lors des relations bi-directionelles si on annote Data
@Setter
public class CategorieProduit {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "nom_categorie")
    private String nomCategorie;
    @OneToMany(cascade = CascadeType.ALL,mappedBy = "niveauEpice")
    private Set<Produit> produits;
}
