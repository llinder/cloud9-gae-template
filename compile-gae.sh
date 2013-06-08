function install_python27 {
    wget http://www.python.org/ftp/python/2.7.5/Python-2.7.5.tgz
    tar xvfz Python-2.7.5.tgz
    cd Python-2.7.5 
    ./configure --prefix=$HOME
    make
    make install
    cd ..
    rm -rf Python-2.7.5*
}

function install_appengine {
    wget http://googleappengine.googlecode.com/files/google_appengine_1.8.0.zip
    unzip google_appengine_1.8.0.zip
    rm google_appengine_1.8.0.zip
    mv google_appengine ../lib/
    cd ../bin/
    ln -s ../lib/google_appengine/*.py .
}

function install_pil {
    wget http://effbot.org/downloads/Imaging-1.1.7.tar.gz
    tar xvfz Imaging-1.1.7.tar.gz
    cd Imaging-1.1.7
    python setup.py install
    cd ..
    rm -rf rm Imaging-1.1.7*
}

install_python27
install_appengine
install_pil
