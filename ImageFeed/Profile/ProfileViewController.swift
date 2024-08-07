import UIKit

final class ProfileViewController: UIViewController {

    private let avatarImageView: UIImageView = {
        
        let imageView = UIImageView ()
        imageView.image = UIImage (named: "avatar")
        imageView.layer.cornerRadius = 35
        imageView.layer.masksToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    } ()
    
    private let nameLabel: UILabel = {
        let label = UILabel ()
        label.text = "Екатерина Новикова"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .ypWhite
        label.font = .boldSystemFont(ofSize: 23)
        return label
    } ()
    
    private let loginNameLabel: UILabel = {
        let label = UILabel()
        label.text = "@ekaterina_nov"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .ypGrey
        label.font = .systemFont(ofSize: 13)
        return label
    } ()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello, world!"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .ypWhite
        label.font = .systemFont(ofSize: 13)
        return label
    } ()
    private let logoutButton: UIButton = {
        let button = UIButton.systemButton(with: UIImage(named: "Exit")!, target: ProfileViewController?.self, action: #selector(Self.didTapLogoutButton))
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = .ypRed
        return button
    } ()
  private func setupProfileViewConstrains () { NSLayoutConstraint.activate([
    avatarImageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
    avatarImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
    avatarImageView.widthAnchor.constraint(equalToConstant: 70),
    avatarImageView.heightAnchor.constraint(equalToConstant: 70),
    nameLabel.leadingAnchor.constraint(equalTo: avatarImageView.leadingAnchor),
    nameLabel.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 8),
    nameLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
    loginNameLabel.leadingAnchor.constraint(equalTo: avatarImageView.leadingAnchor),
    loginNameLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
    loginNameLabel.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor),
    descriptionLabel.leadingAnchor.constraint(equalTo: avatarImageView.leadingAnchor),
    descriptionLabel.topAnchor.constraint(equalTo: loginNameLabel.bottomAnchor, constant: 8),
    descriptionLabel.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor),
    logoutButton.centerYAnchor.constraint(equalTo: avatarImageView.centerYAnchor),
    logoutButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
    logoutButton.leadingAnchor.constraint(greaterThanOrEqualTo: avatarImageView.trailingAnchor),
    logoutButton.widthAnchor.constraint(equalToConstant: 44),
    logoutButton.heightAnchor.constraint(equalToConstant: 44)
])
     }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .ypBlack
        
        view.addSubview(avatarImageView)
        view.addSubview(nameLabel)
        view.addSubview(loginNameLabel)
        view.addSubview(descriptionLabel)
        view.addSubview(logoutButton)
        
        setupProfileViewConstrains()
    }
    @objc private func didTapLogoutButton() { }
}
