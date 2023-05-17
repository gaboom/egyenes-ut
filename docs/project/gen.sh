#!/bin/bash

IMAGE_PATH=`dirname ${BASH_SOURCE[0]}`/../../../static/images/projects/T

for file in $IMAGE_PATH/*.jpg; do
  echo -n "Processing $file file... ";

  filename=`basename "$file"`
  prefix=${filename:4:5}
  #year=${filename:4:4}
  year=2023
  #month=${filename:8:2}
  month="05"
  #day=${filename:10:2}
  day="01"
  #hour=${filename:13:2}
  hour="00"
  #minute=${filename:15:2}
  minute="00"
  #second=${filename:17:2}
  second="00"

  cat << EOF > PRO_${year}${month}${day}_${hour}${minute}${second}_${prefix}.md
---
title: "${year}-${month}-${day} ${hour}:${minute}:${second} ${prefix}"
date: ${year}-${month}-${day} ${hour}:${minute}:${second}Z
description: "Projektünk"
image: "images/projects/T/${filename}"
category: "GINOP"
---
EOF

  echo "done.";
done