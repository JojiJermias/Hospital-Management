package Privacy;




import java.io.*;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import org.pdfbox.cos.COSDocument;
import org.pdfbox.pdfparser.PDFParser;
import org.pdfbox.pdmodel.PDDocument;
import org.pdfbox.pdmodel.PDDocumentInformation;
import org.pdfbox.util.PDFTextStripper;

 public class parser2 {

     PDFParser parser;
     String parsedText;
     PDFTextStripper pdfStripper;
     PDDocument pdDoc;
     COSDocument cosDoc;
     PDDocumentInformation pdDocInfo;

     // PDFTextParser Constructor 
    public parser2() {
    }

     // Extract text from PDF Document
    public String pdftoText(String fileName) {
        try {
             System.out.println("Parsing text from PDF file " + fileName + "....");
         File f = new File(fileName);
  
        if (!f.isFile()) {
            System.out.println("File " + fileName + " does not exist.");
            return null;
        }
  
         try {
             parser = new PDFParser(new FileInputStream(f));
         } catch (Exception e) {
            System.out.println("Unable to open PDF Parser.");
             return null;
        }
  
        try {
            parser.parse();
            cosDoc = parser.getDocument();
            pdfStripper = new PDFTextStripper();
            pdDoc = new PDDocument(cosDoc);
            parsedText = pdfStripper.getText(pdDoc);
        } catch (Exception e) {
             System.out.println("An exception occured in parsing the PDF Document.");
             try {
                    if (cosDoc != null) cosDoc.close();
                   if (pdDoc != null) pdDoc.close();
               } catch (Exception e1) {
             }
             return null;
         }
        System.out.println("Done.");
         //System.out.println("\nThe text parsed from the PDF Document....\n" + parsedText);
         
        } catch (Exception e) {
        }
        return parsedText;
     }

    // Write the parsed text from PDF to a file
     void writeTexttoFile(String pdfText, String fileName) {
  
         System.out.println("\nWriting PDF text to output text file " + fileName + "....");
         try {
            PrintWriter pw = new PrintWriter(fileName);
             pw.print(pdfText);
            pw.close();  
         } catch (Exception e) {
            System.out.println("An exception occured in writing the pdf text to file.");
         }
         System.out.println("Done.");
     }

     //Extracts text from a PDF Document and writes it to a text file
     
     
 }