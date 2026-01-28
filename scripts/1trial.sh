#!/bin/bash
for MVC in 30; # Which Percent MVC do you want to test
do
    for TRIAL in 2; # Which Trial do you want to test
    do
        python apply2experimental.py    --exp_data_dir datasets/experimental_og/test/${MVC}mvc/trial${TRIAL}/ \
                                        --model_dir models/New_model/ \
                                        --sampling_rate 30 \
                                        --save_strains \
                                        --visualize \
                                        --log_dir results/experimental_ogtest/subject1.${MVC}mvc.trial${TRIAL}/ 
    done
done
# exp_data_dir: path to the experimental ultrasound/image data
# model_dir: path to the trained StrainNet models that you want to use
# sampling_rate: 30 if using ultrasound images collected at 100 frames per second
# log_dir: path to the saved results for your ultrasound data