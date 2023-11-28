package com.example.graphicsversion;

import DatabaseManagement.DatabaseManager;
import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;


public class Main extends Application {
    @Override
    public void start(Stage primaryStage) {
        try {
            Parent root = FXMLLoader.load(getClass().getResource("/com/example/graphicsversion/dictionary.fxml"));
            Scene scene = new Scene(root);
            scene.getStylesheets().add(getClass().getResource("graphics.css").toExternalForm());
            primaryStage.setScene(scene);
            primaryStage.setTitle("Từ điển Anh-Việt");
            primaryStage.show();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }


    public static void main(String[] args) throws Exception {
        DatabaseManager.connectToDataBase();
        launch(args);
    }

}