package com.example.demo.repository;

import com.example.demo.model.DictionaryEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DictionaryRepository extends JpaRepository<DictionaryEntity, Integer> {
    DictionaryEntity findWordById(Integer id);

    List<DictionaryEntity> findDictionaryByEnglishWord(String englishWord);
}
