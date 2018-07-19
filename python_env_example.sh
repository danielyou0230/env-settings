$SHORTCUT=p3
$PYTHON_ENV=p3env


# Create virtualenv for python3
pip install virtualenv
mkdir ~/.virtualenvs
virtualenv ~/.virtualenvs/$PYTHON_ENV --python=`which python3`
echo "alias $SHORTCUT='source ~/.virtualenvs/$PYTHON_ENV/bin/activate'"
# Install basic modules for python
pip install numpy pandas tqdm seaborn