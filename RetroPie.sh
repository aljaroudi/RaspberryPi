# Make sure everything is up to date
sudo apt -y update
sudo apt -y upgrade

# Install the needed packages
sudo apt -y install git lsb-release

# Clone the RetroPie repository
cd
git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git RetroPie-Setup && cd RetroPie-Setup

# Set execution permissions
chmod +x retropie_setup.sh
# Run the RetroPie setup script
sudo ./retropie_setup.sh
