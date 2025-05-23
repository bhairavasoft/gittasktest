import java.util.*;

public class Main {
    public static void main(String[] args) {
        try {
            printMessage();

            printMessage();
        } catch (Exception e) {
            System.err.println("An error occurred: " + e.getMessage());
        }
    }

