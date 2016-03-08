/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aerovip.project;

import com.aerovip.project.config.AppConfig;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 *
 * @author Carlos
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes=AppConfig.class)
public class HttpAuthenticationTest {
    @Test
    public void HttpAuthTest(){
//        CredentialsProvider provider = new BasicCredentialsProvider();
//        UsernamePasswordCredentials credentials = new UsernamePasswordCredentials("user1", "user1Pass");
//        provider.setCredentials(AuthScope.ANY, credentials);
//        HttpClient client = HttpClientBuilder.create().setDefaultCredentialsProvider(provider).build();
//
//        HttpResponse response = client.execute(new HttpGet(URL_SECURED_BY_BASIC_AUTHENTICATION));
//        int statusCode = response.getStatusLine().getStatusCode();
//        assertThat(statusCode, equalTo(HttpStatus.SC_OK));
    }
}
