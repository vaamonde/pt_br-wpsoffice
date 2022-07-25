var docerApi;
try {
    if(window.external) {
        docerApi = window.external;
    }
} catch (e) {}

if(window.cefQuery) {
    var excApi = function(jsonstr) {
        var param = 'fromJSAsynCallBase64("' + jsonstr + '")';
        var request_id = window.cefQuery({
            request: param,
            persistent: false,
            onSuccess: function(response) {

            },
            onFailure: function(error_code, error_message) {

            }
        });
    }
} else {
    var excApi = function(jsonstr) {
        docerApi.jsAsynCall(jsonstr);
    }
}

function jsAsynCall(data, needReturn, notParse) {
    try {
        excApi(Base64.encode(JSON.stringify(data)));
    } catch(_e) {}

    return {};
}
