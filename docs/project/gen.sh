#!/bin/bash

IMAGE_PATH=`dirname ${BASH_SOURCE[0]}`/../../../static/images/projects

for file in $IMAGE_PATH/*.jpg; do
  echo -n "Processing $file file... ";

  filename=`basename "$file"`
  year=${filename:4:4}
  month=${filename:8:2}
  day=${filename:10:2}
  hour=${filename:13:2}
  minute=${filename:15:2}
  second=${filename:17:2}

  cat << EOF > PRO_${year}${month}${day}_${hour}${minute}${second}.md
---
title: "${year}-${month}-${day} ${hour}:${minute}:${second}"
date: ${year}-${month}-${day} ${hour}:${minute}:${second}Z
description: "Projektünk"
image: "images/projects/${filename}"
category: "Útépítés"
---
EOF

  echo "done.";
done