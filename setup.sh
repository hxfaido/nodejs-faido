#copy bin
chmod +x ./bin/*
cp -r bin /usr/local/

#bak old
if [ -d /usr/local/lib/node_modules ]
then
   if [ -d /usr/local/lib/node_modules_old ]
   then
     mv /usr/local/lib/node_modules/* /usr/local/lib/node_modules_old/
   else
     mv /usr/local/lib/node_modules /usr/local/lib/node_modules_old
   fi
fi

#copy node_modules
cp -r lib /usr/local/

#opt
cat ./opt/limit.txt >> /etc/security/limits.conf
cat ./opt/sysctl_conf.txt >> /etc/sysctl.conf
sysctl -p

#mongodb
tar -zxvf ./mongodb-linux-x86_64-2.4.6.tar.gz -C /usr/local/

#write to bash_profile
echo "PATH=\$PATH:/usr/local/bin:/usr/local/mongodb-linux-x86_64-2.4.6/bin" >> ~/.bash_profile
echo "export PATH" >> ~/.bash_profile
echo "NODE_PATH=/usr/local/lib/node_modules" >> ~/.bash_profile
echo "export NODE_PATH" >> ~/.bash_profile


echo "setup finish."

#source profile
echo "use commond bellow to make environment variables effective :"
echo "source ~/.bash_profile"

