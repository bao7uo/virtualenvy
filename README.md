# virtualenvy
Simple script to facilitate the running of a python package from a directory which contains the git repos for the package and all of its dependencies.

### Usage:

- Clone all dependency repos and the executable package repo into a parent directory which shares the same name as the executable package. 
- Add this bash script to the same directory, and execute it along with any args for the python executable.

### Example:

```
cd /
mkdir ~/Documents/pypykatz
cd ~/Documents/pypykatz
git clone https://github.com/skelsec/pypykatz.git
git clone https://github.com/skelsec/aiowinreg.git
git clone https://github.com/skelsec/minidump.git
git clone https://github.com/skelsec/minikerberos.git
cp ~/Downloads/virtualenvy.sh .
chmod +x virtualenvy.sh 
cd /
~/Documents/pypykatz/virtualenvy.sh lsa minidump ~/Documents/lsass.dmp
```

