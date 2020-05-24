package web.model;

import org.springframework.stereotype.Component;

@Component
public class UserForm {
    private Long id;
    private String role;
    private String name;
    private String login;
    private String password;

    public UserForm() {
    }

    public UserForm(String role, String name, String login, String password) {
        this.role = role;
        this.name = name;
        this.login = login;
        this.password = password;
    }

    public UserForm(Long id, String role, String name, String login, String password) {
        this.id = id;
        this.role = role;
        this.name = name;
        this.login = login;
        this.password = password;
    }
    
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
