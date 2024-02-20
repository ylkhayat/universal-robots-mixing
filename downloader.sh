#!/bin/bash

# Array of URLs to download
urls=(
    "https://lab.bpm.in.tum.de/ur/programs/Youssef/ControlReady.urp"
    "https://lab.bpm.in.tum.de/ur/programs/Youssef/ControlReset.urp"
    "https://lab.bpm.in.tum.de/ur/programs/Youssef/ControlSet1.urp"
    "https://lab.bpm.in.tum.de/ur/programs/Youssef/ControlSet2.urp"
    "https://lab.bpm.in.tum.de/ur/programs/Youssef/ControlSet3.urp"
    "https://lab.bpm.in.tum.de/ur/programs/Youssef/ControlSet4.urp"
    "https://lab.bpm.in.tum.de/ur/programs/Youssef/ControlSet5.urp"
    "https://lab.bpm.in.tum.de/ur/programs/Youssef/ControlSet.urp"
    "https://lab.bpm.in.tum.de/ur/programs/Youssef/ControlStandby.urp"
    "https://lab.bpm.in.tum.de/ur/programs/Youssef/ControlToGlobal.urp"
    "https://lab.bpm.in.tum.de/ur/programs/Youssef/GlobalToControl.urp"
    "https://lab.bpm.in.tum.de/ur/programs/Youssef/GlobalToLocal.urp"
    "https://lab.bpm.in.tum.de/ur/programs/Youssef/LocalPickup.urp"
    "https://lab.bpm.in.tum.de/ur/programs/Youssef/LocalPutdown.urp"
    "https://lab.bpm.in.tum.de/ur/programs/Youssef/LocalToGlobal.urp"
    "https://lab.bpm.in.tum.de/ur/programs/Youssef/LocalToMixer.urp"
    "https://lab.bpm.in.tum.de/ur/programs/Youssef/MixerToLocal.urp"
    "https://lab.bpm.in.tum.de/ur/programs/Youssef/MixerToPutdown.urp"
    "https://lab.bpm.in.tum.de/ur/programs/Youssef/PickupToMixer.urp"
    "https://lab.bpm.in.tum.de/ur/programs/Youssef/ProcessFullExperiment.urp"
    "https://lab.bpm.in.tum.de/ur/programs/Youssef/ProcessIntensity.urp"
    "https://lab.bpm.in.tum.de/ur/programs/Youssef/ProcessMixing.urp"
)

# Directory to save the downloaded files
dir="programs"

# Create the directory if it doesn't exist
mkdir -p $dir

# Loop over the URLs and download each one
for url in "${urls[@]}"; do
    file_name=$(basename $url)
    curl -o "${dir}/${file_name}" $url
done
