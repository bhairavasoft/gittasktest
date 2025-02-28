import java.util.*;

public class Main {
    public static void main(String[] args) {
        try {
            printMessage();
        } catch (Exception e) {
            System.err.println("An error occurred: " + e.getMessage());
        }
    }
    public static String printMessage() {
        String message = "Hello, World!!!";
        System.out.println(message);
        return message;  // Returning the message for unit testing
    }
}
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;
