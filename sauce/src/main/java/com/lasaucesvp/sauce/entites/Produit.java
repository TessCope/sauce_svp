package com.lasaucesvp.sauce.entites;

import jakarta.persistence.*;
import lombok.Data;
import java.math.BigDecimal;


@Entity
@Table(name="produit")
@Data
public class Produit {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name="nom_produit")
    private String nomProduit;
    private String description;

    private String ingredients;

    @Column(name="contenu_ml")
    private Integer contenuMl;

    private  String origine;

    private BigDecimal prix;

    @Column(name="url_image")
    private String urlImage;

    @ManyToOne
    @JoinColumn(name="niveau_epice",nullable = false)
    private CategorieProduit niveauEpice;

}
