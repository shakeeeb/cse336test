package swegpackage;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author saleh
 */
public class fullsweghandler extends SimpleTagSupport {

    /**
     * Called by the container to invoke this tag. The implementation of this
     * method is provided by the tag library developer, and handles all tag
     * processing, body iteration, etc.
     */
    private String sweg;
    @Override
    public void doTag() throws JspException {
        JspWriter out = getJspContext().getOut();
        // 
        try {
            out.print("<h1>");
            out.print("The Sweg Levels are: " + sweg);
            out.print("</h1>");
        } catch (java.io.IOException ex) {
            throw new JspException("Error in fullsweghandler tag", ex);
        }
    }
    
    public void setsweg(String megasweg){
        this.sweg = megasweg; // awesome raise those sweg levels nigglet
    }
    
}
