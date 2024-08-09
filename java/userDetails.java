public class userDetails {

     String fname;
     String lname;
     String email;
   

    public userDetails(String fn, String ln, String em) {
        
        fname = fn;
        lname = ln;
        email = em;
    }

   

   

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
   
}