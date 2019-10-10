import RxCocoa
import RxSwift
import SnapKit
import UIKit

public final class LoginViewController: UIViewController {
    private let disposeBag = DisposeBag()

    private let loginButton: UIButton = {
        let e = UIButton(type: .system)
        e.setTitle("Login", for: .normal)
        return e
    }()

    public init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(loginButton)

        loginButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }

        Observable.just(1)
            .map { $0 * 2 }
            .map(String.init)
            .subscribe(onNext: { text in
                print(text)
            })
            .disposed(by: disposeBag)

        loginButton.rx.tap
            .subscribe(onNext: { _ in
                print("Tap")
            })
            .disposed(by: disposeBag)
    }
}
