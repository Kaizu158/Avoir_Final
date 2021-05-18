const {registerUser} = require("./loginModelTest.js");
const {userValid} = require("./loginModelTest.js");
const {loginDetails} = require("./loginModelTest.js");

test("Done testing in registerUser", async () => {
    const login = await registerUser("Imran", "123456", "01615233041", "customer");
    expect(login).toBe("INSERT INTO `user_info`(`user_name`, `phone`, `pass`, `user_type`) VALUES ('" + "Imran" + "', '" + "01615233041" +"', '" + "123456" +"', '" + "customer" +"');");
});


test("Done testing in userValid", async () => {
    const login = await userValid("Imran");
    expect(login).toBe("SELECT `user_id`, `user_name`, `phone`, `pass`, `user_type` FROM `user_info` WHERE user_name = '"+ "Imran" +"'");
});


test("Done testing in logindetails", async () => {
    const login = await loginDetails("Imran", "123456");
    expect(login).toBe("SELECT `user_id`, `user_name`, `phone`, `pass`, `user_type` FROM `user_info` WHERE user_name = '"+ "Imran" +"'");
});