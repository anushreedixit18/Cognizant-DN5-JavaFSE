package org.example;

import org.junit.jupiter.api.Test;
import static org.mockito.Mockito.*;

public class UserServiceTest {

    @Test
    public void testVerifyInteraction() {
        ExternalApi mockApi = mock(ExternalApi.class);

        UserService service = new UserService(mockApi);

        service.loadData();

        verify(mockApi).getData();
    }
}
