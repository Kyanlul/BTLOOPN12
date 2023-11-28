package com.example.demo.service;


import com.example.demo.repository.DictionaryRepository;
import com.example.demo.model.DictionaryEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class DictionaryServiceImpl implements IDictionaryService {
    @Autowired
    private DictionaryRepository dictionaryRepository;

    @Override
    public List<DictionaryEntity> getAll() {
        return dictionaryRepository.findAll();
    }

    public List<DictionaryEntity> getByEnglishWord(String englishWord) {
        return dictionaryRepository.findDictionaryByEnglishWord(englishWord);
    }
    @Override
    public DictionaryEntity createWord(DictionaryEntity dictionary) {
        return dictionaryRepository.save(dictionary);
    }

    @Override
    public DictionaryEntity updateWord(DictionaryEntity dictionary, Integer dictionaryId) {
        DictionaryEntity dictionary1 = dictionaryRepository.findWordById(dictionaryId);

            dictionary1.setEnglishWord(dictionary.getEnglishWord());
            dictionary1.setSpellWord(dictionary.getSpellWord());
            dictionary1.setTypeWord(dictionary.getTypeWord());
            dictionary1.setVietWord(dictionary.getVietWord());

            return dictionaryRepository.save(dictionary1);
    }


    @Override
    public Boolean deleteWord(Integer dictionaryId) {
        DictionaryEntity dictionary = dictionaryRepository.findWordById(dictionaryId);
        if (dictionary != null) {
            dictionaryRepository.deleteById(dictionaryId);
            return true;
        }
        return false;
    }
}
