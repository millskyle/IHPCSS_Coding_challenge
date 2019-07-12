make C_hybrid_gpu_big && (
rm OUTPUT.*
rm *.nvprof
scancel -u kmills
for i in {1..5}; do bash submit.sh C hybrid_gpu big OUTPUT.$i; done
watch 'squeue -u kmills; echo ""; echo ""; grep Total\ time OUTPUT.*'

)
