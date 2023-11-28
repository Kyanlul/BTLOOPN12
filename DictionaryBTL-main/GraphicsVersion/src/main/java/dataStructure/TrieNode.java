package dataStructure;

public class TrieNode {
    static final int ALPHABET_SIZE = 26;
    TrieNode[] children = new TrieNode[ALPHABET_SIZE];
    private boolean isEndOfWord;
    private String wordData;

    TrieNode() {
        for (int i = 0; i < ALPHABET_SIZE; i++) {
            children[i] = null;
        }
        isEndOfWord = false;
        wordData = "";
    }

    public TrieNode[] getChildren() {
        return children;
    }

    public String getWordData() {
        return wordData;
    }

    public boolean isEndOfWord() {
        return isEndOfWord;
    }

    public void setWordData(String wordData) {
        this.wordData = wordData;
    }

    public void setEndOfWord(boolean endOfWord) {
        isEndOfWord = endOfWord;
    }
}
