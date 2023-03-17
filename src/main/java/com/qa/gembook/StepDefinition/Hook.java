package com.qa.gembook.StepDefinition;

import com.gemini.generic.exception.GemException;
import com.gemini.generic.ui.utils.DriverAction;
import com.gemini.generic.ui.utils.DriverManager;
import io.cucumber.java.Before;
import org.openqa.selenium.chrome.ChromeOptions;

public class Hook {
    @Before
    public void start() throws GemException {
        ChromeOptions options = new ChromeOptions();
        options.addArguments("--remote-allow-origins=*");
        options.addArguments("--incognito");
        DriverManager.initializeChrome(options);
        DriverAction.maximizeBrowser();
        DriverAction.launchUrl("https://gembook.geminisolutions.com/#/");
    }
}
