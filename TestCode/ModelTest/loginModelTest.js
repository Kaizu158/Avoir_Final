const registerUser = async (userName, pass, phone, userType)=>{
    
    let sqlCommand = "INSERT INTO `user_info`(`user_name`, `phone`, `pass`, `user_type`) VALUES ('" + userName + "', '" + phone +"', '" + pass +"', '" + userType +"');";

    //let data = await query(sqlCommand);

    return sqlCommand;
    
}


const userValid = async (userName) =>{
    let sqlCommand = "SELECT `user_id`, `user_name`, `phone`, `pass`, `user_type` FROM `user_info` WHERE user_name = '"+ userName +"'";
    
    // let data = await query(sqlCommand);
    // if (data.length == 0){
    //     return true;
    // }
    // else{
    //     return false;
    // }
    return sqlCommand;
}




const loginDetails = async(userName, userPass) =>{
    // console.log("User = " + userName);
    let sqlCommand = "SELECT `user_id`, `user_name`, `phone`, `pass`, `user_type` FROM `user_info` WHERE user_name = '"+ userName +"'";
    // let data = await query(sqlCommand);
    // console.log(data.length)
    return sqlCommand;
}

module.exports = {
    registerUser,
    userValid,
    loginDetails
}