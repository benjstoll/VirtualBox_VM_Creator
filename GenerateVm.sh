#!/bin/bash

working_dir=`pwd`
image_dir="${working_dir}VmImages/"

# VM Name
printf "\nPlease enter a VM name: "
read vm_name

if [ -z ${vm_name} ]; then
    echo "Please provide a VM name."
    exit 1
fi

# VM CPU Count
printf "Please enter desired VM CPU count: "
read cpu_count

if [ -z ${cpu_count} ]; then
    echo "Please provide a cpu count."
    exit 1
fi


# VM Mem count
printf "Please enter desired VM Memory count (in MB): "
read mem_count

if [ -z ${mem_count} ]; then
    echo "Please provide a mem count."
    exit 1
fi

# VM Image ISO
printf "Please enter desired VM ISO: "
read iso_name

if [ -z ${iso_name} ]; then
    echo "Please provide a iso name."
    exit 1
fi

if ! [ -f ${iso_name} ]; then
    echo "Could not find an image named ${iso_name}"
    echo "Please make sure it exists in ${image_dir}"
fi
