CPU2908
====

Open source home brew 8-bit CPU.
----
CPU2908は、74HCシリーズ標準ロジックとROMで作る8ビットCPUです。

FPGAにもインプリメントしてあります。
ターゲットデバイスはLattice MachXO2-1200HC、又は2000HCです。
FPGA版は既にプロトタイプ基版まで出来ているので、不具合を修正してリリース版を作ります。

アーキテクチャ
----
- 8ビットCPU、リトルエンディアン
- 4つの汎用8ビットレジスタ。2つまとめて16ビットレジスタとして使う命令があります
- 4つの16ビットアドレスレジスタ。うち1つはスタックポインタ、1つはプログラムカウンタです
- 命令は全て8ビット長で、後ろにイミディエイト値が1～2バイトつく場合があります
- μCode方式です
- ロード／ストア命令、データ移動命令、算術／論理演算、条件ジャンプ、CALL／RET命令などがあります
- CALL/JUMP命令は8/16ビットオフセット(プログラムカウンタ相対)です

レジスタ構成
----

### 8ビット汎用レジスタR0～R3。

R1とR0は合わせてW0、R3とR2は合わせてW1と表現します。アドレスレジスタとのデータ転送、INC/DEC命令で16ビットレジスタとして使えます。

### 16ビットアドレスレジスタA0、A1、CP、SP。
アドレスレジスタA0、A1はロード/ストア命令でアドレスを指定するのに使います。
また、汎用16ビットレジスタとのデータ転送、交換などの命令もあります。

SPはスタックポインタです。PUSH/POP命令のアドレスはSPが暗黙で指定されます。

CPはコードポインタです。プログラムカウンタ（PC）とかインストラクションポインタ（IP）などの呼び方がありますが、SPがスタックポインタなので、CPがコードポインタです。

μCode方式
----
CPU2908は、主に部品数を減らすためとコード密度を高くするために、μCode（厳密にはコントロールストアと呼ばれる方式）で命令をデコードしています。

回路について
====

回路は
- Logisimのドキュメント CPU2908/Document/CPU2908C3.circ
- KiCadの回路図 CPU2908/blob/master/Schematics/74HC/RevC3/CPU2908C3.sch

の2つで、どちらも同じ回路です。
最初にLogisim用の回路を作り、動作するμCODEを作りました。これでシミュレーションをしながら動作の確認をして、それからKiCadの回路図を起こしました。
MachXO2用のファイルもこの回路図を元に、回路図入力で作ってあります。

詳細は　CPU2908/Document/CPU2908C.ods　にあります。
インストラクションセット、μROM、ピンアウトなど解説してあります。

その他
====
開発の進捗など含めて計算機について色々呟いています。
https://twitter.com/MyCPU8

