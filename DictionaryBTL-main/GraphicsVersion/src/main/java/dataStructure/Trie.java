package dataStructure;

public class Trie {
    public static TrieNode root = new TrieNode();

    public void insert(String word) {
        word = word.toLowerCase();
        TrieNode trieNode = root;
        for (int i = 0; i < word.length(); i++) {

            int index = word.charAt(i) - 'a';

            if (trieNode.getChildren()[index] == null) {
                trieNode.getChildren()[index] = new TrieNode();
            }
            trieNode = trieNode.getChildren()[index];
        }
        trieNode.setEndOfWord(true);
        trieNode.setWordData(word);
    }

    public TrieNode search(String prefix) {
        prefix = prefix.toLowerCase();
        TrieNode trieNode = root;
        for (int i = 0; i < prefix.length(); i++) {
            int index = prefix.charAt(i) - 'a';
            if (trieNode.getChildren()[index] == null) {
                return null;
            }
            trieNode = trieNode.getChildren()[index];
        }
        return trieNode;
    }

    public String find(TrieNode keyNode) {
        if (keyNode == null) {
            return "";
        }
        String ans = (keyNode.isEndOfWord() ? keyNode.getWordData() + "@" : "");
        for (int i = 0; i < TrieNode.ALPHABET_SIZE; i++) {
            if (keyNode.getChildren()[i] != null) {
                ans = ans.concat(find(keyNode.getChildren()[i]));
            }
        }
        return ans;
    }

    public String[] findAllWord(String key) {
        key = key.toLowerCase();
        TrieNode trieNode = this.search(key);
        return this.find(trieNode).split("@");
    }

    static boolean isEmpty(TrieNode trieNode) {
        for (int i = 0; i < TrieNode.ALPHABET_SIZE; i++) {
            if (trieNode.getChildren()[i] != null) {
                return false;
            }
        }
        return true;
    }

    public void delete(String word) {
        word = word.toLowerCase();
        backTrackDelete(root, word, 0);
    }

    public TrieNode backTrackDelete(TrieNode trieNode, String key, int depth) {
        key = key.toLowerCase();
        if (trieNode == null) {
            return null;
        }
        if (depth == key.length()) {
            if (trieNode.isEndOfWord()) {
                trieNode.setEndOfWord(false);
            }
            if (isEmpty(trieNode)) {
                trieNode = null;
            }
            return trieNode;
        }

        char x = key.charAt(depth);
        int index = 0;
        if (x >= 'a' && x <= 'z') {
            index = x - 'a';
        } else if (x >= 'A' && x <= 'Z') {
            index = x - 'A';
        } else if (x >= '0' && x <= '9') {
            index = x - '0';
        }

        trieNode.getChildren()[index] = backTrackDelete(trieNode.getChildren()[index], key, depth + 1);
        if (isEmpty(trieNode) && !trieNode.isEndOfWord()) {
            trieNode = null;
        }
        return trieNode;
    }
}
