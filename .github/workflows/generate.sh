#!/bin/bash -uex

rm -rf _generate
cp -a _skeleton _generate

TOOL="discourse_search_atom.py"

"${TOOL}" \
    --name 'PyTorch Forums (cupy)' \
    --url 'https://discuss.pytorch.org' \
    --query 'cupy order:latest' \
    --output '_generate/pytorch-cupy.atom'
"${TOOL}" \
    --name 'Python Community Forums (cupy)' \
    --url 'https://discuss.python.org' \
    --query 'cupy order:latest' \
    --output '_generate/python-cupy.atom'
"${TOOL}" \
    --name 'NVIDIA Developer Forums (cupy)' \
    --url 'https://forums.developer.nvidia.com' \
    --query 'cupy order:latest' \
    --output '_generate/nv-dev-cupy.atom'
