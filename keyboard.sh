#!/usr/bin/bash

function banner(){
    echo -e "\033[38;2;161;227;161m╦═╗┌─┐┌─┐╔═╗┬ ┬┬─┐┌─┐┌─┐┌─┐┬─┐┌─┐                    \033[0m" ;
    echo -e "\033[38;2;161;227;161m╠╦╝│ ││ ┬╠═╣│ │├┬┘├─┤│  │ │├┬┘├┤                     \033[0m" ;
    echo -e "\033[38;2;161;227;161m╩╚═└─┘└─┘╩ ╩└─┘┴└─┴ ┴└─┘└─┘┴└─└─┘                    \033[0m" ;
    echo -e "\033[38;2;161;227;161m┬┌─┌─┐┬ ┬┌┐ ┬┌┐┌┌┬┐                                  \033[0m" ;
    echo -e "\033[38;2;161;227;161m├┴┐├┤ └┬┘├┴┐││││ ││                                  \033[0m" ;
    echo -e "\033[38;2;161;227;161m┴ ┴└─┘ ┴ └─┘┴┘└┘─┴┘                                  \033[0m" ;
    echo -e "\033[38;2;161;227;161m┌┐ ┬ ┬  ┌┐ ┬  ┌─┐┌─┐┬┌─┌─┐┌┬┐┌─┐┬─┐┌┬┐┌─┐┌─┐┌┬┐┌─┐┬─┐\033[0m" ;
    echo -e "\033[38;2;161;227;161m├┴┐└┬┘  ├┴┐│  ├─┤│  ├┴┐└─┐ │ │ │├┬┘││││  │ │ ││├┤ ├┬┘\033[0m" ;
    echo -e "\033[38;2;161;227;161m└─┘ ┴   └─┘┴─┘┴ ┴└─┘┴ ┴└─┘ ┴ └─┘┴└─┴ ┴└─┘└─┘─┴┘└─┘┴└─\033[0m" ;

}


command=("rainbow_cycle 2" "red" "green" "blue" "yellow" "gold" "cyan" "magenta" "white")
index_file="$(dirname $0)/index"

function next_color(){
    if [[ -f $index_file ]];then
        last_index=$(cat $index_file)
    else
        last_index=0
    fi

    i=$last_index

    i=$(( (i+1) % ${#command[@]} )) 
    echo $i> $index_file

    rogauracore ${command[$i]}
}


function prev_color(){
    if [[ -f $index_file ]];then
        last_index=$(cat $index_file)
    else
        last_index=$(( ${#command[@]} - 1 ))
    fi

    i=$last_index
    
    i=$(( ((i-1) +  ${#command[@]}) % ${#command[@]} ))

    echo $i > $index_file
    rogauracore ${command[$i]}

}
banner
if [[ "$1" == "next" ]]; then
    next_color
elif [[ "$1" == "prev" ]]; then
    prev_color
else
    echo "Invalid argument. Usage: ${0} [next|prev]"
fi

