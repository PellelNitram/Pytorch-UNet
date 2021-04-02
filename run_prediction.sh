LEARNING_RATES="0.0001 0.001 0.00001"
BASE_FOLDER='/home/s1691089/myScratch/unet_training/maskRadius0.0'

for LEARNING_RATE in ${LEARNING_RATES}; do

    echo ${LEARNING_RATE}

    REPLACEMENT=predictions/lr${LEARNING_RATE}
    TO_REPLACE=images/test

    MODEL_CHECKPOINT=${BASE_FOLDER}/checkpoints/lr${LEARNING_RATE}/CP_epoch5.pth
    SAMPLE_IMAGES=$(find ${BASE_FOLDER}/images/test -maxdepth 1 -type f)
    OUTFOLDER=${BASE_FOLDER}/predictions/lr${LEARNING_RATE}
    OUTFILES="${SAMPLE_IMAGES//$TO_REPLACE/$REPLACEMENT}"

    mkdir -p ${OUTFOLDER}

    python predict.py \
        -i ${SAMPLE_IMAGES} \
        -o ${OUTFILES} \
        --model ${MODEL_CHECKPOINT}

done
