#!/bin/bash
mysqldump --where="1 limit 100" mysql help_keyword > help100.sql

