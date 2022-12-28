import java.awt.Color;
import java.awt.image.BufferedImage;
import java.io.File;
import javax.imageio.ImageIO;

public class HueGenerator {
    public static void main(String[] args) throws Exception {
        // Create a new image with the desired dimensions
        BufferedImage image = new BufferedImage(256, 1, BufferedImage.TYPE_INT_RGB);

        // Iterate through the pixels in the image
        for (int x = 0; x < image.getWidth(); x++) {
            // Calculate the hue value for the current pixel
            float hue = x / (float)image.getWidth();

            // Set the pixel color to the corresponding hue value
            Color color = Color.getHSBColor(hue, 1, 1);
            image.setRGB(x, 0, color.getRGB());
        }

        // Save the image to a file
        ImageIO.write(image, "PNG", new File("hue.png"));
    }
}
