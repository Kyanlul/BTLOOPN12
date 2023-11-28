package api;

import com.voicerss.tts.AudioCodec;
import com.voicerss.tts.AudioFormat;
import com.voicerss.tts.Languages;
import com.voicerss.tts.VoiceParameters;
import com.voicerss.tts.VoiceProvider;

public class TextToSpeechAPI {
    /**
     * phát âm
     * @param text từ cần đọc
     */
    public static void getTextToSpeech(String text, String lang) {
        try {
            VoiceProvider tts = new VoiceProvider("600b8fac7a214e5e91fff8c9baf69a4a");
            VoiceParameters params = null;
            if (lang.equals("en")) {
                params = new VoiceParameters(text, Languages.English_UnitedStates);
            } else {
                params = new VoiceParameters(text, Languages.Vietnamese);
            }
            params.setCodec(AudioCodec.WAV);
            params.setFormat(AudioFormat.Format_44KHZ.AF_44khz_16bit_stereo);
            params.setBase64(false);
            params.setSSML(false);
            params.setRate(0);
            byte[] voice = tts.speech(params);
            AudioManager.startPlaying(voice);
//            System.out.println("alo");
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public static void main(String[] args) {
        long start = System.currentTimeMillis();
        getTextToSpeech("hello world","en");
        long end = System.currentTimeMillis();
        System.out.println("\n" + (end - start));
    }
}