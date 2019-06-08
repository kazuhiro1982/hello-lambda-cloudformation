const request = require('request-promise');

const apiVersion = process.env['ApiVersion']; 
const apiUrl = process.env['ApiUrl']; 
const apiToken = process.env['ApiToken']; 
 
exports.handler = async (event, context, callback) => { 
  try { 
    let url = `${apiUrl}/${apiVersion}/endpoint`;
    let response = await request.get({
      url: url,
      headers: {
        'x-api-key': apiToken
      }
    }); 
    console.log(JSON.stringify(response)); 
    callback(null, response); 
  } catch (error) { 
    console.log(error); 
    callback(error);
  } 
}; 

