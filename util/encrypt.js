// 加密 and 解密



const crypto = require('crypto');
const key = Buffer.from('saleadministrationsoftware','utf8');
// 不同的系统只要IV不同，用相同的密钥加密相同的数据得到的加密结果也是不同的
const iv = Buffer.from('match','utf8');

// 加密
const cryptoCode = {
  aesEncrypt:function(data){
    const cipher = crypto.createCipher('aes192',key,iv);
    var crypted = cipher.update(data,'utf8','hex');
    crypted += cipher.final('hex');
    return crypted;
  },

  aesDecrypt:function(encrypt){
    const decipher = crypto.createDecipher('aes192',key,iv);
    var decrypted = decipher.update(encrypt,'hex','utf8');
    decrypted += decipher.final('utf8');
    return decrypted;
  }
}

module.exports = cryptoCode;