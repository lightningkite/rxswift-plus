// Generated by Khrysalis Swift converter - this file will be overwritten.
// File: views/showDialog.kt
// Package: com.lightningkite.butterfly.views
import RxSwift
import Foundation

public let lastDialog = ValueSubject(nil as DialogRequest?)
public let showDialogEvent: PublishSubject<DialogRequest> = PublishSubject()

public class DialogRequest {
    public var string: String
    public var confirmation: (() -> Void)?
    public init(string: String, confirmation: (() -> Void)? = nil) {
        self.string = string
        self.confirmation = confirmation
        //Necessary properties should be initialized now
    }
}

public func showDialog(request: DialogRequest) -> Void {
    lastDialog.value = request
    showDialogEvent.onNext(request)
}

public func showDialog(message: String) -> Void {
    showDialog(request: DialogRequest(string: message))
}
