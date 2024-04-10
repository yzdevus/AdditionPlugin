import Foundation
import AdditionSDK

@objc(AdditionPlugin) class AdditionPlugin: CDVPlugin {
    @objc(addAsync:)
    func addAsync(command: CDVInvokedUrlCommand) {
        let param1 = command.arguments[0] as? Int ?? 0
        let param2 = command.arguments[1] as? Int ?? 0

        let sdk = AdditionSDK()
        sdk.addNumbersAsync(param1, param2) { result in
            let pluginResult = CDVPluginResult(status: CDVCommandStatus_OK, messageAs: result)
            self.commandDelegate!.send(pluginResult, callbackId: command.callbackId)
        }
    }
}
