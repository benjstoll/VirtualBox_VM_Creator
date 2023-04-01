#!/bin/bash

working_dir=`pwd`
image_dir="${working_dir}/VmImages/"


# Collect variables to be used for VM creation
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
    exit 1
fi

# VM Storage Capacity
printf "Please enter desired VM storage capacity (in MB): "
read stg_count

if [ -z ${stg_count} ]; then
    echo "Please provide a stg count."
    exit 1
fi

# VM Storage Mount
printf "Please enter path to volume location: "
read volume_path

if [ -z ${volume_path} ]; then
    echo "Please provide a path where the storage for the vm is to be kept."
    exit 1
fi

# VM Storage Type
printf "Please enter desired VM storage type (fixed or default): "
read stg_type

if [ -z ${stg_type} ]; then
    echo "Please provide a stg type."
    exit 1
fi

printf "\nCreating VM with the following parameters...\n\n"
echo "VM Name: ${vm_name}"
echo "CPU: ${cpu_count}"
echo "Memory: ${mem_count}"
echo "ISO: ${iso_name}"
echo "Storage Capacity: ${stg_count} MB"
echo "Storage Volume Location: ${volume_path}"
echo "Storage Type: ${stg_type}"

