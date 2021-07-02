echo 'start git checkout new branch'

echo 'please input branch name:'
read branchName

for i in `cat FILELIST.TXT`
do
	echo $i
	echo "#-------- prepare to pull $i --------"
	echo "cd $i && git checkout $branchName "
	cd $i && git checkout $branchName && git pull origin $branchName
	cd ..
	echo
done
read -n 1

