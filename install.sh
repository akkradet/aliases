#!/bin/bash

# Quick install: `curl -s https://git.io/Jem52 | bash`

cd ~
wget -q https://raw.githubusercontent.com/akkradet/aliases/master/aliases.txt
sed -i '/^# START CUSTOM ALIASES/,/^# END CUSTOM ALIASES/d;' ~/.bashrc
cat aliases.txt >> ~/.bashrc
rm aliases.txt
echo " ✅ Bash aliases successfully loaded; type \`exec bash\` to apply changes"
