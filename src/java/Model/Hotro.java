

package Model;

/**
 *
 * @author Admin
 */
public class Hotro {
      private int id;
    private String email;
    
    public Hotro(){
        
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Hotro(int id, String email) {
        this.id = id;
        this.email = email;
    }
    
}
