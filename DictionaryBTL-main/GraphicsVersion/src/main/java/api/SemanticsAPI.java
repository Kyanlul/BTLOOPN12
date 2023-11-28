package api;

import org.apache.commons.text.StringEscapeUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;

public class SemanticsAPI {
    /**
     * trả về json chứa từ đồng nghĩa, trái nghĩa, hypernyms, hyponyms
     * @param wordForm từ cần tìm
     * @return json
     */
    public static JSONObject getSemanticsList(String wordForm) throws JSONException {
        try {
            URL url = new URL("https://languagetools.p.rapidapi.com/all/" + URLEncoder.encode(wordForm, StandardCharsets.UTF_8).replace("+", "%20"));
            HttpURLConnection request = (HttpURLConnection) url.openConnection();
            request.setRequestProperty("x-rapidapi-host", "languagetools.p.rapidapi.com");
            request.setRequestProperty("x-rapidapi-key", "aca2c0c9a3mshdae9b0fd091fb0dp1923ffjsn84863605816e");
            request.setRequestMethod("GET");
            BufferedReader inputStream = new BufferedReader(new InputStreamReader(request.getInputStream()));
            String inputLine;
            StringBuilder response = new StringBuilder();
            while ((inputLine = inputStream.readLine()) != null) {
                response.append(inputLine);
            }
            inputStream.close();
            return new JSONObject(StringEscapeUtils.unescapeHtml4(response.toString()));
        } catch (IOException | JSONException e) {
            return new JSONObject("{\"hypernyms\":[],\"synonyms\":[],\"antonyms\":[],\"hyponyms\":[]}");
        }
    }

    public static String getSynonymList(String word) throws JSONException {
        JSONObject jsonObject = getSemanticsList(word);
        JSONArray array = jsonObject.getJSONArray("synonyms");
        String outword = "\n";
        for(int i = 0 ; i < array.length() ; i++) {
            outword += array.getString(i) + '\n';
        }
        return outword;
    }

    public static String getAntonymsList(String word) throws JSONException {
        JSONObject jsonObject = getSemanticsList(word);
        JSONArray array = jsonObject.getJSONArray("antonyms");
        String outword = "\n";
        for(int i = 0 ; i < array.length() ; i++) {
            outword += array.getString(i) + '\n';
        }
        return outword;
    }

    public static void main(String[] args) throws IOException, JSONException {
        System.out.println(getSynonymList("sleep"));
    }

}