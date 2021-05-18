const getProfile = async (id)=>{
    
    let sqlCommand = "SELECT * FROM `user_info` WHERE user_id =" + id +";";

    // let data = await query(sqlCommand);
    // console.log(data);
    return sqlCommand;
    
}

const changePass = async (id, pass)=>{
    pass = pass.trim(" ");
    let sqlCommand = "UPDATE `user_info` SET pass = '"+ pass + "' WHERE user_id =" + id +";";

    // let data = await query(sqlCommand);
    // console.log(data);
    return sqlCommand;
    
}


module.exports = {
    getProfile,
    changePass
}