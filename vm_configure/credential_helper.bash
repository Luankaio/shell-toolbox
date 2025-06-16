sudo apt-get install -y amazon-ecr-credential-helper
mkdir -p ~/.docker
cat <<EOF > ~/.docker/config.json
{
	"credsStore": "ecr-login"
}
EOF
# Ensure the docker config directory has the correct permissions
sudo chown -R $USER:$USER ~/.docker
# Ensure the docker config file has the correct permissions
sudo chmod 600 ~/.docker/config.json