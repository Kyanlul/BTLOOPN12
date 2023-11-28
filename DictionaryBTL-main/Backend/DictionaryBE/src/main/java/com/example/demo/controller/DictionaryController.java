package com.example.demo.controller;

import com.example.demo.model.DictionaryEntity;
import com.example.demo.service.DictionaryServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@RestController
@RequestMapping("/dictionary")
public class DictionaryController {
    @Autowired
    private DictionaryServiceImpl dictionaryService;

    @GetMapping("")
    public List<DictionaryEntity> getAll() {
        return dictionaryService.getAll();
    }

    @GetMapping("/findByEnglishWord")
    public List<DictionaryEntity> getByEnglishWord(
            @RequestParam String englishWord
    ) {
        return dictionaryService.getByEnglishWord(englishWord);
    }

    @PostMapping("")
    public DictionaryEntity createDictionary(@RequestBody DictionaryEntity dictionary) {
        return dictionaryService.createWord(dictionary);
    }

    @PutMapping("/{id}")
    public DictionaryEntity updateDictionary(
            @RequestBody DictionaryEntity dictionary,
            @PathVariable("id") Integer dictionaryId) {
        return dictionaryService.updateWord(dictionary, dictionaryId);
    }

    @DeleteMapping("/{id}")
    public String deleteDictionaryById(
            @PathVariable("id") Integer dictionaryId){
        Boolean flag = dictionaryService.deleteWord(dictionaryId);
        if (flag){
            return "Delete Successfully";
        }
        return "Delete failed";
    }
}
