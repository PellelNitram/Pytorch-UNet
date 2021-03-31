BASE_FOLDER='/home/s1691089/myScratch/unet_training/maskRadius0.0'

MODEL_CHECKPOINT=${BASE_FOLDER}/checkpoints/CP_epoch5.pth
SAMPLE_IMAGE=${BASE_FOLDER}/images/image.0.png
OUTFOLDER=${BASE_FOLDER}/predictions

python predict.py \
    -i ${SAMPLE_IMAGE} \
    -o ${OUTFOLDER}/test_prediction.png \
    --model ${MODEL_CHECKPOINT}

