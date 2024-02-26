#!/bin/bash

url="https://lab.bpm.in.tum.de/ur/programs/Youssef"

dir="programs"

mkdir -p $dir
html_array=$(curl -s $url)
shell_array=($(echo $html_array | jq -r '.[]'))

for file_name in "${shell_array[@]}"; do
    # file_name=$(sed 's/.urp//g' <<<$file)
    file_url="${url}/${file_name}"
    echo "Downloading $file_url"
    curl -o "${dir}/${file_name}" $file_url
done

wait
