const {getProfile} = require("./profileModelTest.js");
const {changePass} = require("./profileModelTest.js");

test("Done testing in getProfile", async () => {
    const getProf = await getProfile(5645);
    expect(getProf).toBe("SELECT * FROM `user_info` WHERE user_id =" + 5645 +";");
});


test("Done testing in changePass", async () => {
    const chngPass = await changePass(5645, "dswqe");
    expect(chngPass).toBe("UPDATE `user_info` SET pass = '"+ "dswqe" + "' WHERE user_id =" + 5645 +";");
});