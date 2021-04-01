.class public Lcom/qq/e/comm/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)Lcom/qq/e/comm/util/AdError;
    .registers 7

    const/16 v5, 0x1392

    const/16 v4, 0x7d2

    const/16 v2, 0x7d1

    const/16 v3, 0xfa1

    sparse-switch p0, :sswitch_data_1f2

    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0x1770

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u672a\u77e5\u9519\u8bef\uff0c\u8be6\u7ec6\u7801\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    :goto_21
    return-object v0

    :sswitch_22
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const-string v1, "\u521d\u59cb\u5316\u9519\u8bef"

    invoke-direct {v0, v2, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_21

    :sswitch_2a
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const-string v1, "\u521d\u59cb\u5316\u9519\u8bef\uff0c\u8be6\u7ec6\u7801\uff1a200101"

    invoke-direct {v0, v2, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_21

    :sswitch_32
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const-string v1, "\u521d\u59cb\u5316\u9519\u8bef\uff0c\u8be6\u7ec6\u7801\uff1a200102"

    invoke-direct {v0, v2, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_21

    :sswitch_3a
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const-string v1, "\u521d\u59cb\u5316\u9519\u8bef\uff0c\u8be6\u7ec6\u7801\uff1a200103"

    invoke-direct {v0, v2, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_21

    :sswitch_42
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const-string v1, "\u5185\u90e8\u9519\u8bef"

    invoke-direct {v0, v4, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_21

    :sswitch_4a
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const-string v1, "\u5185\u90e8\u9519\u8bef\uff0c\u8be6\u7ec6\u7801\uff1a200201"

    invoke-direct {v0, v4, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_21

    :sswitch_52
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const-string v1, "\u5185\u90e8\u9519\u8bef\uff0c\u8be6\u7ec6\u7801\uff1a200202"

    invoke-direct {v0, v4, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_21

    :sswitch_5a
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0xbb9

    const-string v2, "\u7f51\u7edc\u5f02\u5e38"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_21

    :sswitch_64
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0xbbb

    const-string v2, "\u7f51\u7edc\u7c7b\u578b\u9519\u8bef\uff0c\u5f53\u524d\u8bbe\u5907\u7684\u7f51\u7edc\u7c7b\u578b\u4e0d\u7b26\u5408\u5f00\u5c4f\u5e7f\u544a\u7684\u52a0\u8f7d\u6761\u4ef6"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_21

    :sswitch_6e
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const-string v1, "\u4f20\u5165\u7684\u53c2\u6570\u6709\u9519\u8bef"

    invoke-direct {v0, v3, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_21

    :sswitch_76
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4f20\u5165\u7684\u53c2\u6570\u6709\u9519\u8bef\uff0c\u8be6\u7ec6\u7801\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_21

    :sswitch_8b
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4f20\u5165\u7684\u53c2\u6570\u6709\u9519\u8bef\uff0c\u8be6\u7ec6\u7801\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_21

    :sswitch_a0
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4f20\u5165\u7684\u53c2\u6570\u6709\u9519\u8bef\uff0c\u8be6\u7ec6\u7801\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_21

    :sswitch_b6
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4f20\u5165\u7684\u53c2\u6570\u6709\u9519\u8bef\uff0c\u8be6\u7ec6\u7801\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_21

    :sswitch_cc
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0xfa2

    const-string v2, "Manifest\u6587\u4ef6\u4e2dActivity/Service/Permission\u7684\u58f0\u660e\u6709\u95ee\u9898\u6216\u8005Permission\u6743\u9650\u672a\u6388\u4e88"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_21

    :sswitch_d7
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0xfa3

    const-string v2, "\u5e7f\u544a\u4f4d\u9519\u8bef"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_21

    :sswitch_e2
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0xfa4

    const-string v2, "\u5f00\u5c4f\u5e7f\u544a\u5bb9\u5668\u4e0d\u53ef\u89c1"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_21

    :sswitch_ed
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0xfa5

    const-string v2, "\u5f00\u5c4f\u5e7f\u544a\u5bb9\u5668\u7684\u9ad8\u5ea6\u4f4e\u4e8e400dp"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_21

    :sswitch_f8
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0xfa6

    const-string v2, "\u539f\u751f\u5e7f\u544a\u63a5\u53e3\u8c03\u7528\u987a\u5e8f\u9519\u8bef\uff0c\u8c03\u7528\u70b9\u51fb\u63a5\u53e3\u524d\u672a\u8c03\u7528\u66dd\u5149\u63a5\u53e3"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_21

    :sswitch_103
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0xfa7

    const-string v2, "\u5f53\u524d\u8bbe\u5907\u6216\u7cfb\u7edf\u4e0d\u652f\u6301"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_21

    :sswitch_10e
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0xfa8

    const-string v2, "\u8bbe\u5907\u65b9\u5411\u4e0d\u9002\u5408\u5c55\u793a\u5e7f\u544a"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_21

    :sswitch_119
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0xfa9

    const-string v2, "\u5f00\u5c4f\u5e7f\u544a\u7684\u81ea\u5b9a\u4e49\u8df3\u8fc7\u6309\u94ae\u5c3a\u5bf8\u5c0f\u4e8e3x3dp"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_21

    :sswitch_124
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0xfab

    const-string v2, "\u5f00\u5c4f\u5e7f\u544a\u62c9\u53d6\u8d85\u65f6"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_21

    :sswitch_12f
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0xfae

    const-string v2, "\u5e7f\u544a\u6570\u636e\u5c1a\u672a\u51c6\u5907\u597d"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_21

    :sswitch_13a
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0xfaf

    const-string v2, "\u540c\u4e00\u6761\u5e7f\u544a\u4e0d\u5141\u8bb8\u591a\u6b21\u5c55\u793a\uff0c\u8bf7\u518d\u6b21\u62c9\u53d6\u540e\u5c55\u793a"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_21

    :sswitch_145
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0x1389

    const-string v2, "\u670d\u52a1\u7aef\u6570\u636e\u9519\u8bef"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_21

    :sswitch_150
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0x138a

    const-string v2, "\u89c6\u9891\u7d20\u6750\u4e0b\u8f7d\u9519\u8bef"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_21

    :sswitch_15b
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0x138b

    const-string v2, "\u89c6\u9891\u7d20\u6750\u64ad\u653e\u9519\u8bef"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_21

    :sswitch_166
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0x138c

    const-string v2, "\u6ca1\u6709\u5e7f\u544a"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_21

    :sswitch_171
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0x1394

    const-string v2, "\u5e7f\u544a\u6570\u636e\u5df2\u8fc7\u671f\uff0c\u8bf7\u91cd\u65b0\u62c9\u53d6\u5e7f\u544a"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_21

    :sswitch_17c
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0x139d

    const-string v2, "\u8be5\u7c7b\u578b\u5e7f\u544a\u5df2\u5e9f\u5f03\uff0c\u8bf7\u4f7f\u7528\u5176\u4ed6\u7c7b\u578b\u7684\u5e7f\u544a"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_21

    :sswitch_187
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0x138d

    const-string v2, "\u5e7f\u544a\u8bf7\u6c42\u91cf\u6216\u8005\u6d88\u8017\u7b49\u8d85\u8fc7\u65e5\u9650\u989d\uff0c\u8bf7\u660e\u5929\u518d\u8bf7\u6c42\u5e7f\u544a"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_21

    :sswitch_192
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0x1391

    const-string v2, "\u5e7f\u544a\u8bf7\u6c42\u91cf\u6216\u8005\u6d88\u8017\u7b49\u8d85\u8fc7\u5c0f\u65f6\u9650\u989d\uff0c\u8bf7\u4e00\u5c0f\u65f6\u540e\u518d\u8bf7\u6c42\u5e7f\u544a"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_21

    :sswitch_19d
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0x138e

    const-string v2, "\u5305\u540d\u6821\u9a8c\u9519\u8bef\uff0c\u5f53\u524dApp\u7684\u5305\u540d\u548c\u5e7f\u70b9\u901a\u79fb\u52a8\u8054\u76df\u5b98\u7f51\u6ce8\u518c\u7684\u5a92\u4f53\u5305\u540d\u4e0d\u4e00\u81f4\uff0c\u56e0\u6b64\u65e0\u5e7f\u544a\u8fd4\u56de"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_21

    :sswitch_1a8
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0x138f

    const-string v2, "\u8d44\u6e90\u52a0\u8f7d\u9519\u8bef"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_21

    :sswitch_1b3
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0x1390

    const-string v2, "\u56fe\u7247\u52a0\u8f7d\u9519\u8bef"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_21

    :sswitch_1be
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const-string v1, "\u5e7f\u544a\u6837\u5f0f\u6821\u9a8c\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u5e7f\u544a\u4f4d\u4e0e\u63a5\u53e3\u4f7f\u7528\u662f\u5426\u4e00\u81f4"

    invoke-direct {v0, v5, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_21

    :sswitch_1c7
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const-string v1, "\u539f\u751f\u6a21\u7248\u6e32\u67d3\u5931\u8d25"

    invoke-direct {v0, v5, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_21

    :sswitch_1d0
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0xfac

    const-string v2, "\u5185\u5bb9\u63a5\u53e3\u8c03\u7528\u987a\u5e8f\u9519\u8bef\uff0c\u8c03\u7528\u70b9\u51fb\u63a5\u53e3\u524d\u672a\u8c03\u7528\u66dd\u5149\u63a5\u53e3"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_21

    :sswitch_1db
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0xfad

    const-string v2, "\u4f7f\u7528\u652f\u6301\u89c6\u9891\u7d20\u6750\u7684\u539f\u751f\u6a21\u677f\u5e7f\u544a\u4f4d\u524d\uff0c\u8bf7\u5347\u7ea7\u60a8\u7684SDK"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_21

    :sswitch_1e6
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0xfb0

    const-string v2, "\u5e94\u7528\u6a2a\u7ad6\u65b9\u5411\u53c2\u6570\u4e0e\u5e7f\u544a\u4f4d\u652f\u6301\u65b9\u5411\u4e0d\u5339\u914d"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_21

    nop

    :sswitch_data_1f2
    .sparse-switch
        0x12c -> :sswitch_22
        0x12d -> :sswitch_2a
        0x12e -> :sswitch_32
        0x12f -> :sswitch_3a
        0x190 -> :sswitch_5a
        0x193 -> :sswitch_5a
        0x194 -> :sswitch_124
        0x195 -> :sswitch_1a8
        0x196 -> :sswitch_1b3
        0x1f4 -> :sswitch_d7
        0x1f5 -> :sswitch_166
        0x1f6 -> :sswitch_145
        0x258 -> :sswitch_e2
        0x259 -> :sswitch_64
        0x25a -> :sswitch_cc
        0x25b -> :sswitch_4a
        0x25c -> :sswitch_52
        0x25e -> :sswitch_ed
        0x25f -> :sswitch_f8
        0x260 -> :sswitch_119
        0x2bc -> :sswitch_150
        0x2bd -> :sswitch_15b
        0x320 -> :sswitch_1d0
        0x7d1 -> :sswitch_22
        0x7d2 -> :sswitch_42
        0xbb9 -> :sswitch_5a
        0xbbb -> :sswitch_64
        0xfa1 -> :sswitch_6e
        0xfa2 -> :sswitch_cc
        0xfa3 -> :sswitch_d7
        0xfa4 -> :sswitch_e2
        0xfa5 -> :sswitch_ed
        0xfa6 -> :sswitch_f8
        0xfa7 -> :sswitch_103
        0xfa8 -> :sswitch_10e
        0xfa9 -> :sswitch_119
        0xfab -> :sswitch_124
        0xfae -> :sswitch_12f
        0xfaf -> :sswitch_13a
        0x1389 -> :sswitch_145
        0x138a -> :sswitch_150
        0x138b -> :sswitch_15b
        0x138c -> :sswitch_166
        0x138d -> :sswitch_187
        0x138e -> :sswitch_19d
        0x138f -> :sswitch_1a8
        0x1390 -> :sswitch_1b3
        0x1391 -> :sswitch_192
        0x1393 -> :sswitch_1c7
        0x1394 -> :sswitch_171
        0x139d -> :sswitch_17c
        0x1873f -> :sswitch_1e6
        0x1a216 -> :sswitch_19d
        0x1a21a -> :sswitch_1be
        0x1a21b -> :sswitch_1db
        0x1abc2 -> :sswitch_187
        0x1abc3 -> :sswitch_192
        0x30da5 -> :sswitch_2a
        0x30da6 -> :sswitch_32
        0x30da7 -> :sswitch_3a
        0x30e09 -> :sswitch_4a
        0x30e0a -> :sswitch_52
        0x61ae5 -> :sswitch_76
        0x61ae6 -> :sswitch_8b
        0x61ae7 -> :sswitch_a0
        0x61ae8 -> :sswitch_b6
    .end sparse-switch
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-static {p0}, Lcom/qq/e/comm/a;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_59

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {}, Lcom/qq/e/comm/constants/CustomPkgConstants;->getADActivityName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v2}, Lcom/qq/e/comm/a;->a(Landroid/content/Context;[Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_59

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {}, Lcom/qq/e/comm/constants/CustomPkgConstants;->getPortraitADActivityName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v2}, Lcom/qq/e/comm/a;->a(Landroid/content/Context;[Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_59

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {}, Lcom/qq/e/comm/constants/CustomPkgConstants;->getLandscapeADActivityName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v2}, Lcom/qq/e/comm/a;->a(Landroid/content/Context;[Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_59

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {}, Lcom/qq/e/comm/constants/CustomPkgConstants;->getDownLoadServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v2}, Lcom/qq/e/comm/a;->b(Landroid/content/Context;[Ljava/lang/Class;)Z
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_55} :catch_5b

    move-result v2

    if-eqz v2, :cond_59

    :goto_58
    return v0

    :cond_59
    move v0, v1

    goto :goto_58

    :catch_5b
    move-exception v0

    const-string v2, "Exception While check SDK Env"

    invoke-static {v2, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_58
.end method

.method private static varargs a(Landroid/content/Context;[Ljava/lang/Class;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    move v2, v0

    :goto_3
    if-gtz v2, :cond_3d

    :try_start_5
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-nez v3, :cond_33

    const-string v1, "Activity[%s] is required in AndroidManifest.xml"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_32} :catch_36

    :goto_32
    return v0

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_36
    move-exception v1

    const-string v2, "Exception while checking required activities"

    invoke-static {v2, v1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_32

    :cond_3d
    move v0, v1

    goto :goto_32
.end method

.method public static a([B)[B
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    array-length v1, p0

    if-nez v1, :cond_8

    :cond_6
    move-object v0, p0

    :goto_7
    return-object v0

    :cond_8
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_d
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_28
    .catchall {:try_start_d .. :try_end_12} :catchall_3b

    :try_start_12
    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1b} :catch_4e
    .catchall {:try_start_12 .. :try_end_1b} :catchall_4c

    move-result-object v0

    :try_start_1c
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_22} :catch_23

    goto :goto_7

    :catch_23
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :catch_28
    move-exception v1

    move-object v2, v0

    :goto_2a
    :try_start_2a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_4c

    if-eqz v2, :cond_32

    :try_start_2f
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_32
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_35} :catch_36

    goto :goto_7

    :catch_36
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :catchall_3b
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3e
    if-eqz v2, :cond_43

    :try_start_40
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_43
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_46} :catch_47

    :goto_46
    throw v0

    :catch_47
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_46

    :catchall_4c
    move-exception v0

    goto :goto_3e

    :catch_4e
    move-exception v1

    goto :goto_2a
.end method

.method private static b(Landroid/content/Context;)Z
    .registers 9

    const/4 v7, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-array v3, v7, [Ljava/lang/String;

    const-string v2, "android.permission.INTERNET"

    aput-object v2, v3, v0

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v2, v3, v1

    const/4 v2, 0x2

    const-string v4, "android.permission.ACCESS_WIFI_STATE"

    aput-object v4, v3, v2

    move v2, v0

    :goto_13
    if-ge v2, v7, :cond_38

    :try_start_15
    aget-object v4, v3, v2

    invoke-virtual {p0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2e

    const-string v1, "Permission %s is required in AndroidManifest.xml"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_2d} :catch_31

    :goto_2d
    return v0

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :catch_31
    move-exception v1

    const-string v2, "Check required Permissions error"

    invoke-static {v2, v1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2d

    :cond_38
    move v0, v1

    goto :goto_2d
.end method

.method private static varargs b(Landroid/content/Context;[Ljava/lang/Class;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    move v2, v0

    :goto_3
    if-gtz v2, :cond_3a

    const/4 v3, 0x0

    :try_start_6
    aget-object v3, p1, v3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/high16 v6, 0x10000

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-nez v4, :cond_30

    const-string v1, "Service[%s] is required in AndroidManifest.xml"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_2f} :catch_33

    :goto_2f
    return v0

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_33
    move-exception v1

    const-string v2, "Exception while checking required services"

    invoke-static {v2, v1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2f

    :cond_3a
    move v0, v1

    goto :goto_2f
.end method

.method public static b([B)[B
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    array-length v1, p0

    if-nez v1, :cond_8

    :cond_6
    move-object v0, p0

    :goto_7
    return-object v0

    :cond_8
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :try_start_16
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_68
    .catchall {:try_start_16 .. :try_end_1b} :catchall_52

    :goto_1b
    :try_start_1b
    invoke-virtual {v2, v1}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3c

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_26} :catch_27
    .catchall {:try_start_1b .. :try_end_26} :catchall_66

    goto :goto_1b

    :catch_27
    move-exception v1

    :goto_28
    :try_start_28
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_66

    if-eqz v2, :cond_30

    :try_start_2d
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V

    :cond_30
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_36} :catch_37

    goto :goto_7

    :catch_37
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :cond_3c
    :try_start_3c
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_42} :catch_27
    .catchall {:try_start_3c .. :try_end_42} :catchall_66

    move-result-object v0

    :try_start_43
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4c} :catch_4d

    goto :goto_7

    :catch_4d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :catchall_52
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_55
    if-eqz v2, :cond_5a

    :try_start_57
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V

    :cond_5a
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_60} :catch_61

    :goto_60
    throw v0

    :catch_61
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_60

    :catchall_66
    move-exception v0

    goto :goto_55

    :catch_68
    move-exception v1

    move-object v2, v0

    goto :goto_28
.end method
