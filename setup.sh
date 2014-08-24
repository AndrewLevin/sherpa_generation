wget http://www.hepforge.org/archive/sherpa/SHERPA-MC-2.1.1.tar.gz
tar -xvf SHERPA-MC-2.1.1.tar.gz
wget http://crd.lbl.gov/~dhbailey/mpdist/qd-2.3.13.tar.gz
tar -xvf qd-2.3.13.tar.gz
cd qd-2.3.13/
./configure --enable-shared --prefix=/afs/cern.ch/work/a/anlevin/sherpa_generation/qd_installation/
make
make install
cd ../
wget http://www.hepforge.org/archive/blackhat/blackhat-0.9.9.tar.gz
tar -xzf blackhat-0.9.9.tar.gz
cd blackhat-0.9.9
./configure --with-QDpath="/afs/cern.ch/work/a/anlevin/sherpa_generation/qd_installation/" --prefix=/afs/cern.ch/work/a/anlevin/sherpa_generation/blackhat_installation/
make 
make install
cd ../
cd SHERPA-MC-2.1.1 
./configure --with-sqlite3=install --enable-blackhat="/afs/cern.ch/work/a/anlevin/sherpa_generation/blackhat_installation/"
make install
cd  ../