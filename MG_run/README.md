## MobiGUITAR 运行指南

#### 共分为四步

> 项目位置：/Users/zhchuch/Desktop/paper/Backup/constrast_experi/ATGT_mobiGuitar

1️⃣ 配置 `./scripts` 目录下的 `project2.txt` 文件，指明 AUT 名

2️⃣ 使用 `bash -x run_guiripper.sh` 执行测试过程

- 此步骤中，覆盖率文件生成在 `./results/aut/output-exp/coverage/*.ec` 目录下

3️⃣ `collectInfo.sh`

- 作用：收集由第2️⃣步测试所产生的覆盖元数据 (em, ec 文件)
- `em 文件` 位于 `./subjects/aut/bin/coverage.em`
- `ec 文件` 位置参上。

- 将其拷贝到 `./MG_run/aut_coverage/aut/*.em|ec`

4️⃣ `genEmma.sh`

- 作用：只是提供一个利用覆盖元数据生成HTML报告的命令，此脚本并不可直接运行。

```
1: cd ./MG_run/aut_coverage/aut
2: java -cp /Users/zhchuch/Downloads/adt-bundle-mac-x86_64-20140702/sdk/tools/lib/emma.jar emma report -r html -in coverage.em,coverage.ec,coverage1.ec,coverage2.ec,coverage3.ec,coverage4.ec,coverage5.ec,coverage6.ec
``` 

至此：成功生成 Emma html-覆盖率报告。
