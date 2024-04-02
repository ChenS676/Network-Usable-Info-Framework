
source /hkfs/home/project/hk-project-test-p0021478/cc7738/anaconda3/etc/profile.d/conda.sh

conda activate base
conda activate nui
cd /hkfs/work/workspace/scratch/cc7738-benchmark_tag
# <<< conda initialize <<<
module purge
module load devel/cmake/3.18
module load devel/cuda/11.8
module load compiler/intel/19.1

python src/main.py --dataset cora

python src/main.py --dataset citeseer

python src/main.py --dataset pubmed

python src/main.py --dataset computers

python src/main.py --dataset photo

python src/main.py --dataset chameleon

python src/main.py --dataset squirrel

python src/main.py --dataset actor

python src/main.py --dataset arxiv

python src/main_batch.py --dataset twitch --hitK 1000

python src/main_batch.py --dataset pokec --hitK 1000

python src/main_batch.py --dataset products --hitK 1000

python src/main.py --dataset synthetic-random-diag --T 1000

python src/main.py --dataset synthetic-random-offdiag --T 1000

python src/main.py --dataset synthetic-global-diag --T 1000

python src/main.py --dataset synthetic-global-offdiag --T 1000

python src/main.py --dataset synthetic-local-diag --T 1000

python src/main.py --dataset synthetic-local-offdiag --T 1000