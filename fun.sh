function create_user {
	read -p "enter your name" username

	sudo useradd -m $username

	echo "user created"
}
for (( i=0; i<=3; i++ ))
do
	create_user
	create_user
done
