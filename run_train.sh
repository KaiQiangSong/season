CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7 python run.py \
    --model_name_or_path facebook/bart-large \
    --do_train \
    --do_eval \
    --do_predict \
    --train_file data/train.json \
    --validation_file data/validation.json \
    --test_file data/test.json \
    --output_dir outputs/train \
    --per_device_train_batch_size 6 \
    --gradient_accumulation_steps 2 \
    --per_device_eval_batch_size 6 \
    --num_train_epochs 10 \
    --learning_rate 3e-5 \
    --warmup_steps 1500 \
    --weight_decay 0.01 \
    --max_grad_norm 0.1 \
    --metric_for_best_model rougeLsum \
    --evaluation_strategy epoch \
    --save_strategy epoch \
    --fp16 true \
    --bosent_token_id 50264 \
    --encoder_loss_ratio 1.0 \
    --encoder_label_smoothing 0.1 \
    --encoder_label_smoothing_type adjacent \
    --lower_saliency_threshold 0.125 \
    --higher_saliency_threshold 0.230 \
    --marginal_distribution true \
    --marginal_temperature 0.5 \
    --num_beams 5 \
    --max_length 256 \
    --min_length 20 \
    --length_penalty 1.5 \
    --no_repeat_ngram_size 3 \
    --overwrite_output_dir \
    --predict_with_generate