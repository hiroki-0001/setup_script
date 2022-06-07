#!/bin/bash
set -euxo pipefail

HOME_DIR="${HOME}"
cd $HOME_DIR/.ssh
sudo apt-get install xsel
ssh-keygen -t ed25519
cat ~/.ssh/id_ed25519.pub | xsel --clipboard --input

cat <<EOF > config
Host github github.com
    HostName ssh.github.com
    IdentityFile ~/.ssh/id_ed25519
    User git
    port 443
    IdentitiesOnly yes  
EOF

cat << EOS
=========================================
SSH Key created success
Please apply GitHub

https://github.com/

=========================================
EOS

