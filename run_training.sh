LEARNING_RATES=" 0.0001 0.001 0.00001 "
LEARNING_RATES="0.0001"
LEARNING_RATES="0.001"
LEARNING_RATES="0.00001"

for LEARNING_RATE in ${LEARNING_RATES}; do

    echo ${LEARNING_RATE}

    OUTFOLDER=/home/s1691089/myScratch/unet_training/maskRadius0.0/checkpoints/lr${LEARNING_RATE}/
    mkdir -p ${OUTFOLDER}

    python train.py \
        -e 5 \
        -s 1.0 \
        -l ${LEARNING_RATE} \
        -di /home/s1691089/myScratch/unet_training/maskRadius0.0/images/train/ \
        -dm /home/s1691089/myScratch/unet_training/maskRadius0.0/masks/train/ \
        -dc ${OUTFOLDER}

done
