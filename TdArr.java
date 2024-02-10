import java.io.*;

public class TdArr
{

    public static void main(String[] args) {
        DataInputStream i = new DataInputStream(System.in);

        try {
            int rows, cols;
            int[][] array;
            String s;

            System.out.println("Enter the number of rows for the 2D array:");
            s = i.readLine();
            rows = Integer.parseInt(s);

            System.out.println("Enter the number of columns for the 2D array:");
            s = i.readLine();
            cols = Integer.parseInt(s);

            array = new int[rows][cols];

            for (int j = 0; j < rows; j++) {
                for (int k = 0; k < cols; k++) {
                    System.out.print("Enter element at row " + (j + 1) + ", column " + (k + 1) + ": ");
                    s = i.readLine();
                    array[j][k] = Integer.parseInt(s);
                }
            }

            System.out.println("2D Array:");
            for (int j = 0; j < rows; j++) {
                for (int k = 0; k < cols; k++) {
                    System.out.print(array[j][k] + " ");
                }
                System.out.println();
            }

            System.out.println("Row-wise Sum:");
            for (int j = 0; j < rows; j++) {
                int rowSum = 0;
                for (int k = 0; k < cols; k++) {
                    rowSum += array[j][k];
                }
                System.out.println("Row " + (j + 1) + ": " + rowSum);
            }

            System.out.println("Column-wise Sum:");
            for (int k = 0; k < cols; k++) {
                int colSum = 0;
                for (int j = 0; j < rows; j++) {
                    colSum += array[j][k];
                }
                System.out.print("Column " + (k + 1) + ": " + colSum + "  ");
            }
            System.out.println();

        } catch (Exception e) {
            System.out.println("Error "+e);
        }
    }
}