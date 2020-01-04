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
<table width="120">
<tr><td>R1</td><td>R0</td></tr>
<tr><td align="center" colspan="2">W0</td></tr>
</table>

<table>
<tr><td>R2</td><td>R3</td></tr>
<tr><td align="center" colspan="2">W1</td></tr>
</table>

<table>
<tr><td colspan="2">A0</td></tr>
</table>

<table>
<tr><td>A1</td></tr>
</table>

<table>
<tr><td>CP</td></tr>
</table>

<table>
<tr><td>SP</td></tr>
</table>
