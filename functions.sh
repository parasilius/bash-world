# `newc` creates a test.c file with some initial code in . directory.
newc() { echo "#include <stdio.h>" >> test.c && echo "" >> test.c && echo "int main(void)" >> test.c && echo "{" >> test.c && echo "\x20\x20\x20\x20return 0;" >> test.c && echo "}" >> test.c }

# `newcpp` creates a test.cpp file with some initial code in . directory.
newcpp() { echo "#include <iostream>" >> test.cpp && echo "" >> test.cpp && echo "using namespace std;" >> test.cpp && echo "" >> test.cpp && echo "int main()" >> test.cpp && echo "{" >> test.cpp && echo "}" >> test.cpp }

# this function downloads the specific letter of Moral Letters to Lucilius
downloadLetter() { youtube-dl -x --audio-format m4a https://www.youtube.com/playlist\?list\=PLzKrfPkpj5om1kEBj7c80cwjJ1JS78FL7 --playlist-items "$1" -o '%(title)s.%(ext)s' }

# connects to protonVPN, and in case of failure, it tries again
protonConnect() {
    finished=false
    counter=0
    while ! $finished; do
        if [ $counter -eq 0 ]; then
            protonvpn-cli c -f && finished=true
            let "counter++"
        else
            protonvpn-cli c -r && finished=true
        fi
    done
}

# function to sync subtitles with video titles
subtitleSync() {
    1=`printf %02d $1`
    2=`printf %02d $2`
    directory=$(echo */)
    subtitle=$(ls $directory | grep -e "s"$1".*e"$2"" -e "S"$1".*E"$2"")
    mv "$directory$subtitle" .
    mv "$(ls | grep -e "s"$1".*e"$2".*\.srt$" -e "S"$1".*E"$2".*\.srt$")" ${$(ls | grep -e "s"$1".*e"$2".*\.mkv$" -e "S"$1".*E"$2".*\.mkv$")%.mkv}.srt
}
