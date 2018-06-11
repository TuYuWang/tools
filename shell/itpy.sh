#!/bin/bash

#初始化python文件，并用sublime打开

echo -e '#!/usr/bin/python \n# -*- coding: utf-8 -*- \n\n' > $1.py
sublime $1.py
