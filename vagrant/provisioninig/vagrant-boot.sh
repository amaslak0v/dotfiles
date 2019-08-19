echo "===> Boot-script started! "

echo "==> Login as vagrant user"
usermod -aG wheel vagrant
su vagrant

echo "==> Copying bashrc"
cp /Share/.bashrc ~/.bashrc
source ~/.bashrc

echo "=====> Vim module"
./user-env/vim.sh

echo "==> Installing tools "
yum -y install net-tools
yum -y install unzip
yum -y install tree

echo "==> Installing dev tools"
yum -y install yum-utils

yum -y groupinstall development
yum -y install python-pip
pip install --upgrade pip

echo "==> Installing Pyenv"
git clone git://github.com/yyuu/pyenv.git ~/.pyenv
echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
source ~/.bashrc
echo "==> Installing python 2.7.11 and 3.6.3"

pyenv install 2.7.11
pyenv install 3.6.3

echo "==> Defining global default version"
pyenv global 3.6.3
