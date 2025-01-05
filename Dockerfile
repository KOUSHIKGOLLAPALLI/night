// test.js
const { Builder, By, until } = require('selenium-webdriver');
const path = require('path');
require('chromedriver'); // WebDriver Manager will handle ChromeDriver setup automatically.

(async function testAdditionApp() {
    // Initialize the Chrome WebDriver
    let driver = await new Builder().forBrowser('chrome').build();

    try {
        // Open the local HTML file in the browser
        const filePath = path.resolve(__dirname, 'index.html');
        await driver.get(file://${filePath});

        // Wait a little before entering the first number
        await driver.sleep(1000); // Pause for 1 second
        await driver.findElement(By.id('num1')).sendKeys('5');

        // Wait again before entering the second number
        await driver.sleep(1000); // Pause for 1 second
        await driver.findElement(By.id('num2')).sendKeys('3');

        // Wait before clicking the "Add" button
        await driver.sleep(1000); // Pause for 1 second
        await driver.findElement(By.css('button')).click();

        // Wait for the result to be displayed
        await driver.sleep(2000); // Pause for 1 second
        const resultText = await driver.wait(
            until.elementLocated(By.id('result')),
            1000
        ).getText();

        // Verify the result and log the outcome
        if (resultText === "Result: 8") {
            console.log("Test Passed: 5 + 3 = 8");
        } else {
            console.log("Test Failed");
        }
    } finally {
        await driver.quit(); // Close the browser
    }
})();
