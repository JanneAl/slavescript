sudo apt-get update

sudo apt-get install -y puppet git

git clone https://github.com/mhyvarinen/orjuuttaja.git

sudo cp -r orjuuttaja /etc/puppet/modules/

cd /etc/puppet/

sudo puppet apply --modulepath modules/ -e 'class {"orjuuttaja":}'

sudo puppet agent --enable

sudo service puppet restart

echo " "
echo "Orjuutus valmis"
echo " "
