package org.example;

public class UserService {

    private ExternalApi api;

    public UserService(ExternalApi api) {
        this.api = api;
    }

    public void loadData() {
        api.getData();
    }
}
