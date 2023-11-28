package DatabaseManagement;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Scanner;

public class init {

    /**
     * lấy data từ file txt vào local db
     * !chỉ gọi 1 lần duy nhất lúc clone về
     * @throws IOException .
     */
    public static void importFromFileToDatabase() throws Exception {
        String url = "src/main/java/DictionaryManagement/dictionaries.txt";
        FileInputStream fileInputStream = new FileInputStream(url);
        Scanner sc = new Scanner(fileInputStream);

        DatabaseManager.connectToDataBase();
        while (sc.hasNextLine()) {
            String input = sc.nextLine();
            String target = input.split("@")[0].toLowerCase();
            String type = input.split("@")[1];
            String pronounce = input.split("@")[2];
            String explain = input.split("@")[3];

            DatabaseManager.trie.insert(target);
            DatabaseManager.insert(target, pronounce, type, explain);
        }
        fileInputStream.close();
        sc.close();
    }

    public static void main(String[] args) throws Exception {

        try {
            importFromFileToDatabase();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
