# Kyrsten's Laptop Setup Repository

## Run the setup Script
```bash
curl https://raw.githubusercontent.com/kyrstenkelly/kyrstens-setup/master/setup.sh > ~/setup.sh
. ~/setup.sh
```

### Additional setup steps

1. Set iTerm color theme: _Preferences > Profiles > Colors > Import_
2. Add `source ~/.bash_profile` to iTerm _Preferences > Profiles > Command > Send Text at Start_

Resources:
* https://blog.larsbehrenberg.com/the-definitive-iterm2-and-oh-my-zsh-setup-on-macos

## Getting Git setup
1. Create a [personal access token](https://github.com/settings/tokens)
2. Use that token as password when prompted: 
```bash
$ git clone https://github.com/username/repo.git
Username: your_username
Password: your_token
```

