#!/bin/bash

bunzip2 *bz2

# cell_addtl_stats.txt
sed -n -i '2,$ p' cell_addtl_stats.txt
sed -i 's/%/ /g' cell_addtl_stats.txt
sed -i 's/MB\/sec/      /g' cell_addtl_stats.txt
sed -i 's/: /\t/g' cell_addtl_stats.txt
sed -i '1 i\cellname\tmetric\tdisk\tvalue\ttime' cell_addtl_stats.txt
zip cell_addtl_stats.zip cell_addtl_stats.txt

# cell_cg_iops.txt
sed -n -i '2,$ p' cell_cg_iops.txt
sed -i 's/IO\/sec/      /g' cell_cg_iops.txt
sed -i 's/: /\t/g' cell_cg_iops.txt
sed -i '1 i\cellname\tmetric\tdisk\tvalue\ttime' cell_cg_iops.txt
zip cell_cg_iops.zip cell_cg_iops.txt

# cell_cg_latency.txt
sed -n -i '2,$ p' cell_cg_latency.txt
sed -i 's/ms\/request/          /g' cell_cg_latency.txt
sed -i 's/: /\t/g' cell_cg_latency.txt
sed -i '1 i\cellname\tmetric\tdisk\tvalue\ttime' cell_cg_latency.txt
zip cell_cg_latency.zip cell_cg_latency.txt

# cell_cg_mbs.txt
sed -n -i '2,$ p' cell_cg_mbs.txt
sed -i 's/MB\/sec/      /g' cell_cg_mbs.txt
sed -i 's/: /\t/g' cell_cg_mbs.txt
sed -i '1 i\cellname\tmetric\tdisk\tvalue\ttime' cell_cg_mbs.txt
zip cell_cg_mbs.zip cell_cg_mbs.txt

# cell_db_iops.txt
sed -n -i '2,$ p' cell_db_iops.txt
sed -i 's/IO\/sec/      /g' cell_db_iops.txt
sed -i 's/: /\t/g' cell_db_iops.txt
sed -i '1 i\cellname\tmetric\tdisk\tvalue\ttime' cell_db_iops.txt
zip cell_db_iops.zip cell_db_iops.txt

# cell_db_latency.txt
sed -n -i '2,$ p' cell_db_latency.txt
sed -i 's/ms\/request/          /g' cell_db_latency.txt
sed -i 's/: /\t/g' cell_db_latency.txt
sed -i '1 i\cellname\tmetric\tdisk\tvalue\ttime' cell_db_latency.txt
zip cell_db_latency.zip cell_db_latency.txt

# cell_db_mbs.txt
sed -n -i '2,$ p' cell_db_mbs.txt
sed -i 's/MB\/sec/      /g' cell_db_mbs.txt
sed -i 's/: /\t/g' cell_db_mbs.txt
sed -i '1 i\cellname\tmetric\tdisk\tvalue\ttime' cell_db_mbs.txt
zip cell_db_mbs.zip cell_db_mbs.txt

# cell_flash_destage.txt
sed -n -i '2,$ p' cell_flash_destage.txt
sed -i 's/IO\/sec/      /g' cell_flash_destage.txt
sed -i 's/: /\t/g' cell_flash_destage.txt
sed -i '1 i\cellname\tmetric\tdisk\tvalue\ttime' cell_flash_destage.txt
zip cell_flash_destage.zip cell_flash_destage.txt

# cell_flash_space.txt
sed -n -i '2,$ p' cell_flash_space.txt
sed -i 's/MB/  /g' cell_flash_space.txt
sed -i 's/: /\t/g' cell_flash_space.txt
sed -i '1 i\cellname\tmetric\tdisk\tvalue\ttime' cell_flash_space.txt
zip cell_flash_space.zip cell_flash_space.txt

# cell_flashlog_outliers.txt
sed -n -i '2,$ p' cell_flashlog_outliers.txt
sed -i 's/IO requests/           /g' cell_flashlog_outliers.txt
sed -i 's/: /\t/g' cell_flashlog_outliers.txt
sed -i '1 i\cellname\tmetric\tdisk\tvalue\ttime' cell_flashlog_outliers.txt
zip cell_flashlog_outliers.zip cell_flashlog_outliers.txt

# cell_flashlog_skip.txt
sed -n -i '2,$ p' cell_flashlog_skip.txt
sed -i 's/%/ /g' cell_flashlog_skip.txt
sed -i 's/IO requests/           /g' cell_flashlog_skip.txt
sed -i 's/: /\t/g' cell_flashlog_skip.txt
sed -i '1 i\cellname\tmetric\tdisk\tvalue\ttime' cell_flashlog_skip.txt
zip cell_flashlog_skip.zip cell_flashlog_skip.txt

# cell_iops.txt
sed -n -i '2,$ p' cell_iops.txt
sed -i 's/IO\/sec/      /g' cell_iops.txt
sed -i 's/: /\t/g' cell_iops.txt
sed -i '1 i\cellname\tmetric\tdisk\tvalue\ttime' cell_iops.txt
zip cell_iops.zip cell_iops.txt

# cell_latency.txt
sed -n -i '2,$ p' cell_latency.txt
sed -i 's/us\/request/          /g' cell_latency.txt
sed -i 's/: /\t/g' cell_latency.txt
sed -i '1 i\cellname\tmetric\tdisk\tvalue\ttime' cell_latency.txt
zip cell_latency.zip cell_latency.txt

# cell_mbs.txt
sed -n -i '2,$ p' cell_mbs.txt
sed -i 's/MB\/sec/      /g' cell_mbs.txt
sed -i 's/: /\t/g' cell_mbs.txt
sed -i '1 i\cellname\tmetric\tdisk\tvalue\ttime' cell_mbs.txt
zip cell_mbs.zip cell_mbs.txt

