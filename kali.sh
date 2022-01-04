echo -e "$123\n$123\n" | sudo passwd
rm -rf ngrok  ngrok.zip  ng.sh > /dev/null 2>&1
wget -O ng.sh https://bit.ly/3sPrc9S > /dev/null 2>&1
chmod +x ng.sh
./ng.sh
clear
echo "======================="
echo choose ngrok region
echo "======================="
echo "us - United States"
echo "eu - Europe"
echo "ap - Asia/Pacific"
echo "au - Australia"
echo "sa - South America"
echo "jp - Japan"
echo "in - India"
read -p "choose ngrok region: " CRP
./ngrok tcp --region $CRP 3388 &>/dev/null &
echo "===================================="
echo "Install RDP"
echo "===================================="
docker pull danielguerra/ubuntu-xrdp
clear
echo "===================================="
echo "Start RDP"
echo "===================================="
echo "===================================="
echo "Username : maxforcus"
echo "Password : panoknowledge"
echo "RDP Address:"
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "===================================="
echo "Don't close this tab to keep RDP running"
echo "Keep support PanoKnowledge CHANNEL thank you"
echo "Wait 2 minute to finish the setup then Run using RDP Address"
echo "===================================="
echo "===================================="
docker run --rm -p 3388:3389 danielguerra/ubuntu-xrdp:kali > /dev/null 2>&1
