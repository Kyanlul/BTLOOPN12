package com.example.demo.model;


import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name="words")
public class DictionaryEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(name = "english_word")
    private String englishWord;
    @Column(name = "viet_word")
    private String vietWord;
    @Column(name = "type_word")
    private String typeWord;
    @Column(name = "spell_word")
    private String spellWord;

}
