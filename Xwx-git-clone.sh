echo 'start git clone'

for i in `cat FILELIST.TXT`
do
	echo $i
	echo "#-------- prepare to clone $i --------"
	mkdir $i && git clone ssh://git@idp-gitlab-ssh.topideal.com:2289/operation-eap01002/$i.git
	echo
done
read -n 1