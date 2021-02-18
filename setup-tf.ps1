# if you don't have choco installed uncomment the next line and comment the choco upgrade line
# Set-ExecutionPolicy Bypass -Scope Process -Force; iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
choco upgrade chocolatey -y -r
choco install vscode -y -r
code --install-extension ms-python.python
code --install-extension ms-toolsai.jupyter
choco install python --version=3.8.7 -y -r
refreshenv
choco install miniconda3 -y -r
refreshenv
$env:Path += ";c:\tools\miniconda3\Scripts"

# set the directory to where you keep your work
Set-Location c:\work
git clone https://github.com/ageron/handson-ml2.git
Set-Location handson-ml2

conda env create -f environment.yml
conda init powershell
powershell
conda activate tf2
python -m ipykernel install --user --name=python3

# choose whether to explore tensorflow in browser or vscode?
jupyter notebook
# code .