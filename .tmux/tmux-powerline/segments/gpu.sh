run_segment() {
	nvidia-smi --query-gpu=memory.used --format=csv,noheader,nounits -i 0,1,2,3 | awk 'BEGIN{count=0}{printf($1);count++;if(count<4)printf(" ")}'
	return 0
}
