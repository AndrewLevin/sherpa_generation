wget http://www.hepforge.org/archive/sherpa/SHERPA-MC-2.1.1.tar.gz
tar -xvf SHERPA-MC-2.1.1.tar.gz
wget http://crd.lbl.gov/~dhbailey/mpdist/qd-2.3.13.tar.gz
tar -xvf qd-2.3.13.tar.gz
cd qd-2.3.13/
./configure --enable-shared
make
cd ../
wget http://www.hepforge.org/archive/blackhat/blackhat-0.9.9.tar.gz
tar -xzf blackhat-0.9.9.tar.gz
cd blackhat-0.9.9

cd SHERPA-MC-2.1.1 
 ./configure --with-sqlite3=install
make install
