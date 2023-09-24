# System dostępu do drzwi
Prowadzący: S.W. (Projektowanie Systemów Internetowych i Mobilnych PSIM)

Aplikacja webowa symulująca zarządzanie fizycznymi drzwiami w np. firmie

Funkcje:
- Obsługa logowania i rejestracji
- Zarządzanie dostępem do pomieszczeń (Admin)
- Tworzenie nowych drzwi (Admin)
- Przeglądanie i kasowanie historii otwarć drzwi (Admin)
- Przeglądanie dostępnych drzwi
- Możliwość otwarcia drzwi, do których mamy dostęp
- Możliwość zgłoszenia zgubienia karty dostępowej (cofnięcie wszystkich uprawnień)

Wygląd strony:

![Zrzut ekranu 2023-09-24 143127](https://github.com/craksys/PSIM-Doors/assets/53128417/b8c35f8f-a3d4-4a87-b1a0-0675d2792374)
![Zrzut ekranu 2023-09-24 142911](https://github.com/craksys/PSIM-Doors/assets/53128417/0acdf4db-c065-41ed-85c7-9593f177fd2d)
![Zrzut ekranu 2023-09-24 142932](https://github.com/craksys/PSIM-Doors/assets/53128417/6ae4d245-51df-4204-b321-9ab1eb399bf9)
![Zrzut ekranu 2023-09-24 143001](https://github.com/craksys/PSIM-Doors/assets/53128417/5e01bd12-d039-4ccc-8ebf-28365ddf4213)

Installation guide (Ubuntu 23.04):

`sudo apt update && sudo apt upgrade`

Get requirements

`sudo apt install curl git make libz-dev libssl-dev libyaml-dev gcc g++`

`git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.13.1`

Add the following to the end of `~/.bashr` (`nano ~/.bashrc`): 

`. "$HOME/.asdf/asdf.sh"`

`. "$HOME/.asdf/completions/asdf.bash"`

Exit vi or nano and type:

`source ~/.bashrc`

`asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git`

`asdf install nodejs latest`

`asdf global nodejs latest`

`asdf plugin-add ruby`

`asdf install ruby 3.2.2`

`asdf global ruby 3.2.2`

`gem install rails`

`git clone https://github.com/craksys/PWR-doors-access`

`cd PWR-doors-access`

`bundle install --gemfile $PWD/Gemfile`

`rails db:migrate`

`rails s -b 0.0.0.0`

Now go to localhost:3000 (or 127.0.0.1:3000) in your browser and register new user

Stop rails server (`CTRL + C`)

Go to rails console

`rails console`

Type: `User.find(1).update(admin: true)`

and `quit`

Run server again

`rails s -b 0.0.0.0`
