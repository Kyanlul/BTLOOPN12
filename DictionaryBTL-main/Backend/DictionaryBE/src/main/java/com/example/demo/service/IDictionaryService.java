package com.example.demo.service;

import com.example.demo.model.DictionaryEntity;

import java.util.List;

public interface IDictionaryService {
    List<DictionaryEntity> getAll();

    List<DictionaryEntity> getByEnglishWord(String englishWord);

    DictionaryEntity createWord(DictionaryEntity dictionary);
    DictionaryEntity updateWord(DictionaryEntity dictionary, Integer dictionaryId);
    Boolean deleteWord(Integer dictionaryId);
}
