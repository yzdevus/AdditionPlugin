var exec = require('cordova/exec');

var AdditionPlugin = {
    addAsync: function(arg0, arg1, successCallback, errorCallback) {
        exec(successCallback, errorCallback, "AdditionPlugin", "addAsync", [arg0, arg1]);
    }
};

module.exports = AdditionPlugin;
