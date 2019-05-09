package data;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Mariah
 * @version 2.0
 * @update May 7, 2019
 */
public class breastCancerDiagnosis extends HttpServlet {

    /**
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "displayDiagnosis";  // default action
        }

        // perform action and set URL to appropriate page
        String url = "/index.jsp";
        if (action.equals("displayDiagnosis")) {
            url = displayDiagnosis(request, response);
        } else if (action.equals("displayDiagnosis")) {
            url = displayDiagnosis(request, response);
        } else if (action.equals("addDiagnosis")) {
            url = "/diagnosis.jsp";
        } else if (action.equals("deleteDiagnosis")) {
            url = deleteDiagnosis(request, response);
        }
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "displayDiagnosis";  // default action
        }

        // perform action and set URL to appropriate page
        String url = "/index.jsp";
        if (action.equals("updateDiagnosis")) {
            url = updateDiagnosis(request, response);
        }else if (action.equals("deleteDiagnosis")) {
            url = deleteDiagnosis(request, response);
        }
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    private String displayDiagnosis(HttpServletRequest request,
            HttpServletResponse response) {
        
         String diagnosisCode = request.getParameter("diagnosisCode");
       Diagnosis diagnosis;
        if (diagnosisCode == null || diagnosisCode.isEmpty()) {
            diagnosis = new Diagnosis();
        } else {
            diagnosis = Diagnosis.selectDiagnosis(diagnosisCode);
        }

        request.setAttribute("diagnosis", Diagnosis);
        return "/diagnosis.jsp";

        List<Diagnosis> diagnosis = Diagnosis.selectData();
        request.setAttribute("diagnosis", diagnosis);
        return "/diagnosis.jsp";
  
    }

    private String addDiagnosis(HttpServletRequest request,
            HttpServletResponse response) {

        return "/diagnosis.jsp";
    }

    private String updateDiagnosis(HttpServletRequest request,
            HttpServletResponse response) {

        String diagnosisCode = (String) request.getParameter("diagnosisCode");
        String id = (String) request.getParameter("id");
        

        Diagnosis diagnosis = (Diagnosis) request.getAttribute("diagnosis");
        if (diagnosis == null) {
            diagnosis = new Diagnosis();
        }
        diagnosis.setCode(diagnosisCode);
        diagnosis.setDescription(id);
       
        request.setAttribute("diagnosis", diagnosis);

        String message = "";
        
        if (diagnosis.getId().length() == 0) {
            message = "You must enter an id for the diagnosis.";
        }
        if (diagnosis.getData().length() == 0) {
            message = "You must enter a code for the diagnosis.";
        }

        request.setAttribute("message", message);

        String url;
        if (message.isEmpty()) {
            if (Data.selectDiagnosis(diagnosis.getData()) != null) {
                String results = updateDiagnosis(diagnosis);
                request.setAttribute("results", results);

            } else {
                String results = insertResults(diagnosis);
                request.setAttribute("results", results);
            }
            url = displayDiagnosis(request, response);
        } else {
            url = "/diagnosis.jsp";
        }
        return url;
    }

    private String deleteDiagnosis(HttpServletRequest request,
            HttpServletResponse response) {

        String data = request.getParameter("data");
        Diagnosis product = Data.selectDiagnosis(data);
        request.setAttribute("diagnosis", diagnosis);

        String url;
        String yesButton = request.getParameter("yesButton");
        if (yesButton != null) {
            String results = deleteResults(product);
            request.setAttribute("results", results);
            Data.deleteDiagnosis(diagnosis);
            url = displayDiagnosis(request, response);
        } else {
            url = "/confirmDelete.jsp";
        }
        return url;
    }

    private String deleteDiagnosis(Diagnosis diagnosis) {
        String results;
        if (Data.deleteProduct(diagnosis) == true) {
            results = "Diagnosis: (Data: " + diagnosis.getDiagnosis() + " Id: " + diagnosis.getId() + ") deleted succesfully.";

        } else {
            results = "Diagnosis: (Data: " + diagnosis.getDiagnosis() + " Id: " + diagnosis.getId() + ") did not delete.";
        }
        return results;
    }

    private String insertDiagnosis(Diagnosis diagnosis) {
        String results;
        if (Data.insertProduct(diagnosis) == true) {
            results = "Diagnosis: (Data: " + diagnosis.getDiagnosis() + " Id: " + diagnosis.getId() + ") inserted succesfully.";
        } else {
            results = "Diagnosist: (Data: " + diagnosis.getDiagnosis() + "Id: " + diagnosis.getId() + ") did not insert.";
        }
        return results;
    }

    private String updateResults(Diagnosis diagnosis) {
        String results;
        if (Data.updateProduct(diagnosis) == true) {
            results = "Diagnosis: (Data: " + diagnosis.getDiagnosis() + "Id: " + diagnosis.getId() + ") updated succesfully.";
        } else {
            results = "Diagnosis: (Data: " + diagnosis.getDiagnosis() + "Id: " + diagnosis.getId() + ") did not update.";
        }
        return results;
    }
}

