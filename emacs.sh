#!/bin/bash

sudo add-apt-repository ppa:ubuntu-elisp/ppa
sudo apt-get update
sudo apt-get install emacs-snapshot emacs-snapshot-el -y
sudo apt-get install git-core -y

cd /home/vagrant
git clone http://github.com/eschulte/emacs24-starter-kit.git .emacs.d
sudo chown vagrant:vagrant -R .emacs.d

cat <<EOF > ~/.emacs.d/vagrant.el
(set-keyboard-coding-system nil)

;; enable ido mode
(require 'ido)
(ido-mode t)
EOF
