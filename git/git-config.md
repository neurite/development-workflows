## git

### Configuration

```bash
git config --global user.name 'your name'
git config --global user.email 'your email'
git config --global core.editor vim
```

The above configuration writes to `~/.gitconfig`.

### Credential Helper

#### SSH

Use a key pair and bypass the need of a credential helper.

```bash
ssh-keygen
```

By default, it generates a key pair `~/.ssh/id_rsa` and `~/.ssh/id_rsa.pub`. If it does not already exist, generate a new pair and upload the public key to the git server.

#### Store

```bash
git config --global credential.helper store
```

Note this stores secrets in plain text in `~/.git-credentials`. The security solely depends on the permissions of the user's home directory. If this is set as the credential helper, use access tokens instead of password to access the git server.

#### Gnome keyring

```bash
sudo apt-get -q -y install libgnome-keyring-dev
cd /usr/share/doc/git/contrib/credential/gnome-keyring/
sudo make
cd
# --system as configured in /etc/gitconfig
sudo git config --system credential.helper \
        /usr/share/doc/git/contrib/credential/gnome-keyring/git-credential-gnome-keyring
```
