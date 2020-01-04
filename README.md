CPU2908
====

Open source home brew 8-bit CPU.
----
74HCとOTPROMで作る8ビットCPU。

アーキテクチャ
----

- 8ビットCPU
- 4つの汎用8ビットレジスタ。2つまとめて16ビットレジスタとして使う命令あり。
- 4つの16ビットアドレスレジスタ。うち1つはスタックポインタ、1つはプログラムカウンタ
- 命令は8ビット長＋イミディエイト値1～2バイト
- μROM
- ロード／ストア命令、データ移動命令、算術／論理演算、条件ジャンプ、CALL／RET命令


レジスタ構成
----

|R1|R0|
|:--:|:--:|

|&nbsp;&nbsp;&nbsp;&nbsp; W0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|
|:--:|

|R2|R3|
|:--:|:--:|

|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|
|:--:|

|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|
|:--:|

|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;W1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|
|:--:|

|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|
|:--:|

|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|
|:--:|
