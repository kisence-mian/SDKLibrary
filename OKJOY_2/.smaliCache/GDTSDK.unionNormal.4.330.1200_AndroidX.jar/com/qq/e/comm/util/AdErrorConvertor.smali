.class public Lcom/qq/e/comm/util/AdErrorConvertor;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatErrorCode(I)Lcom/qq/e/comm/util/AdError;
    .registers 6

    const/16 v0, 0x1392

    const/16 v1, 0xfa1

    const/16 v2, 0xfa5

    const/16 v3, 0x7d2

    const/16 v4, 0x7d1

    sparse-switch p0, :sswitch_data_1dc

    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0x1770

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u672a\u77e5\u9519\u8bef\uff0c\u8be6\u7ec6\u7801\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_41

    :sswitch_24
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const-string v0, "\u5f00\u5c4f\u5e7f\u544a\u5bb9\u5668\u7684\u9ad8\u5ea6\u4f4e\u4e8e400dp"

    invoke-direct {p0, v2, v0}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1da

    :sswitch_2d
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u4f20\u5165\u7684\u53c2\u6570\u6709\u9519\u8bef\uff0c\u8be6\u7ec6\u7801\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    :goto_41
    move-object p0, v0

    goto/16 :goto_1da

    :sswitch_44
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const/16 v0, 0xfad

    const-string v1, "\u4f7f\u7528\u652f\u6301\u89c6\u9891\u7d20\u6750\u7684\u539f\u751f\u6a21\u677f\u5e7f\u544a\u4f4d\u524d\uff0c\u8bf7\u5347\u7ea7\u60a8\u7684SDK"

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1da

    :sswitch_4f
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const/16 v0, 0xfb0

    const-string v1, "\u5e94\u7528\u6a2a\u7ad6\u65b9\u5411\u53c2\u6570\u4e0e\u5e7f\u544a\u4f4d\u652f\u6301\u65b9\u5411\u4e0d\u5339\u914d"

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1da

    :sswitch_5a
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const/16 v0, 0x139e

    const-string v1, "\u6a21\u677f\u6fc0\u52b1\u89c6\u9891\u6e32\u67d3\u5931\u8d25"

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1da

    :sswitch_65
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const/16 v0, 0x139d

    const-string v1, "\u8be5\u7c7b\u578b\u5e7f\u544a\u5df2\u5e9f\u5f03\uff0c\u8bf7\u4f7f\u7528\u5176\u4ed6\u7c7b\u578b\u7684\u5e7f\u544a"

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1da

    :sswitch_70
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const/16 v0, 0x1394

    const-string v1, "\u5e7f\u544a\u6570\u636e\u5df2\u8fc7\u671f\uff0c\u8bf7\u91cd\u65b0\u62c9\u53d6\u5e7f\u544a"

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1da

    :sswitch_7b
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const-string v1, "\u539f\u751f\u6a21\u7248\u6e32\u67d3\u5931\u8d25"

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1da

    :sswitch_84
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const-string v1, "\u5e7f\u544a\u6837\u5f0f\u6821\u9a8c\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u5e7f\u544a\u4f4d\u4e0e\u63a5\u53e3\u4f7f\u7528\u662f\u5426\u4e00\u81f4"

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1da

    :sswitch_8d
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const/16 v0, 0x1391

    const-string v1, "\u5e7f\u544a\u8bf7\u6c42\u91cf\u6216\u8005\u6d88\u8017\u7b49\u8d85\u8fc7\u5c0f\u65f6\u9650\u989d\uff0c\u8bf7\u4e00\u5c0f\u65f6\u540e\u518d\u8bf7\u6c42\u5e7f\u544a"

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1da

    :sswitch_98
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const/16 v0, 0x138e

    const-string v1, "\u5305\u540d\u6821\u9a8c\u9519\u8bef\uff0c\u5f53\u524dApp\u7684\u5305\u540d\u548c\u5e7f\u70b9\u901a\u79fb\u52a8\u8054\u76df\u5b98\u7f51\u6ce8\u518c\u7684\u5a92\u4f53\u5305\u540d\u4e0d\u4e00\u81f4\uff0c\u56e0\u6b64\u65e0\u5e7f\u544a\u8fd4\u56de"

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1da

    :sswitch_a3
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const/16 v0, 0x138d

    const-string v1, "\u5e7f\u544a\u8bf7\u6c42\u91cf\u6216\u8005\u6d88\u8017\u7b49\u8d85\u8fc7\u65e5\u9650\u989d\uff0c\u8bf7\u660e\u5929\u518d\u8bf7\u6c42\u5e7f\u544a"

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1da

    :sswitch_ae
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const/16 v0, 0xfaf

    const-string v1, "\u540c\u4e00\u6761\u5e7f\u544a\u4e0d\u5141\u8bb8\u591a\u6b21\u5c55\u793a\uff0c\u8bf7\u518d\u6b21\u62c9\u53d6\u540e\u5c55\u793a"

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1da

    :sswitch_b9
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const/16 v0, 0xfae

    const-string v1, "\u5e7f\u544a\u6570\u636e\u5c1a\u672a\u51c6\u5907\u597d"

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1da

    :sswitch_c4
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const/16 v0, 0xfa8

    const-string v1, "\u8bbe\u5907\u65b9\u5411\u4e0d\u9002\u5408\u5c55\u793a\u5e7f\u544a"

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1da

    :sswitch_cf
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const/16 v0, 0xfa7

    const-string v1, "\u5f53\u524d\u8bbe\u5907\u6216\u7cfb\u7edf\u4e0d\u652f\u6301"

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1da

    :sswitch_da
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const-string v0, "\u4f20\u5165\u7684\u53c2\u6570\u6709\u9519\u8bef"

    invoke-direct {p0, v1, v0}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1da

    :sswitch_e3
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const/16 v0, 0xbba

    const-string v1, "\u7f51\u7edc\u8d85\u65f6"

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1da

    :sswitch_ee
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const/16 v0, 0x7d3

    const-string v1, "SDK\u672a\u521d\u59cb\u5316"

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1da

    :sswitch_f9
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const-string v0, "\u5185\u90e8\u9519\u8bef"

    invoke-direct {p0, v3, v0}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1da

    :sswitch_102
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const/16 v0, 0xfac

    const-string v1, "\u5185\u5bb9\u63a5\u53e3\u8c03\u7528\u987a\u5e8f\u9519\u8bef\uff0c\u8c03\u7528\u70b9\u51fb\u63a5\u53e3\u524d\u672a\u8c03\u7528\u66dd\u5149\u63a5\u53e3"

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1da

    :sswitch_10d
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const/16 v0, 0x138b

    const-string v1, "\u89c6\u9891\u7d20\u6750\u64ad\u653e\u9519\u8bef"

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1da

    :sswitch_118
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const/16 v0, 0x138a

    const-string v1, "\u89c6\u9891\u7d20\u6750\u4e0b\u8f7d\u9519\u8bef"

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1da

    :sswitch_123
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const/16 v0, 0xfa9

    const-string v1, "\u5f00\u5c4f\u5e7f\u544a\u7684\u81ea\u5b9a\u4e49\u8df3\u8fc7\u6309\u94ae\u5c3a\u5bf8\u5c0f\u4e8e3x3dp"

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1da

    :sswitch_12e
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const/16 v0, 0xfa6

    const-string v1, "\u539f\u751f\u5e7f\u544a\u63a5\u53e3\u8c03\u7528\u987a\u5e8f\u9519\u8bef\uff0c\u8c03\u7528\u70b9\u51fb\u63a5\u53e3\u524d\u672a\u8c03\u7528\u66dd\u5149\u63a5\u53e3"

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1da

    :sswitch_139
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const-string v0, "\u5e7f\u544a\u5bb9\u5668\u5c3a\u5bf8\u9519\u8bef"

    invoke-direct {p0, v2, v0}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1da

    :sswitch_142
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const-string v0, "\u5185\u90e8\u9519\u8bef\uff0c\u8be6\u7ec6\u7801\uff1a200202"

    invoke-direct {p0, v3, v0}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1da

    :sswitch_14b
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const-string v0, "\u5185\u90e8\u9519\u8bef\uff0c\u8be6\u7ec6\u7801\uff1a200201"

    invoke-direct {p0, v3, v0}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1da

    :sswitch_154
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const/16 v0, 0xfa2

    const-string v1, "Manifest\u6587\u4ef6\u4e2dActivity/Service/Permission\u7684\u58f0\u660e\u6709\u95ee\u9898\u6216\u8005Permission\u6743\u9650\u672a\u6388\u4e88"

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1da

    :sswitch_15f
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const/16 v0, 0xbbb

    const-string v1, "\u7f51\u7edc\u4e0d\u53ef\u7528"

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1da

    :sswitch_16a
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const/16 v0, 0xfa4

    const-string v1, "\u5f00\u5c4f\u5e7f\u544a\u5bb9\u5668\u4e0d\u53ef\u89c1"

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_1da

    :sswitch_174
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const/16 v0, 0x1389

    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u9519\u8bef"

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_1da

    :sswitch_17e
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const/16 v0, 0x138c

    const-string v1, "\u6ca1\u6709\u5e7f\u544a"

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_1da

    :sswitch_188
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const/16 v0, 0xfa3

    const-string v1, "\u5e7f\u544a\u4f4d\u9519\u8bef"

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_1da

    :sswitch_192
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const/16 v0, 0x1390

    const-string v1, "\u56fe\u7247\u52a0\u8f7d\u9519\u8bef"

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_1da

    :sswitch_19c
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const/16 v0, 0x138f

    const-string v1, "\u8d44\u6e90\u52a0\u8f7d\u9519\u8bef"

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_1da

    :sswitch_1a6
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const/16 v0, 0xfab

    const-string v1, "\u5f00\u5c4f\u5e7f\u544a\u62c9\u53d6\u8d85\u65f6"

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_1da

    :sswitch_1b0
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const/16 v0, 0xbb9

    const-string v1, "\u7f51\u7edc\u5f02\u5e38"

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_1da

    :sswitch_1ba
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const-string v0, "\u521d\u59cb\u5316\u9519\u8bef\uff0c\u8be6\u7ec6\u7801\uff1a200103"

    invoke-direct {p0, v4, v0}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_1da

    :sswitch_1c2
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const-string v0, "\u521d\u59cb\u5316\u9519\u8bef\uff0c\u8be6\u7ec6\u7801\uff1a200102"

    invoke-direct {p0, v4, v0}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_1da

    :sswitch_1ca
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const-string v0, "\u521d\u59cb\u5316\u9519\u8bef\uff0c\u8be6\u7ec6\u7801\uff1a200101"

    invoke-direct {p0, v4, v0}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_1da

    :sswitch_1d2
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const-string v1, "\u521d\u59cb\u5316\u9519\u8bef"

    invoke-direct {v0, v4, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    move-object p0, v0

    :goto_1da
    return-object p0

    nop

    :sswitch_data_1dc
    .sparse-switch
        0x12c -> :sswitch_1d2
        0x12d -> :sswitch_1ca
        0x12e -> :sswitch_1c2
        0x12f -> :sswitch_1ba
        0x190 -> :sswitch_1b0
        0x193 -> :sswitch_1b0
        0x194 -> :sswitch_1a6
        0x195 -> :sswitch_19c
        0x196 -> :sswitch_192
        0x1f4 -> :sswitch_188
        0x1f5 -> :sswitch_17e
        0x1f6 -> :sswitch_174
        0x258 -> :sswitch_16a
        0x259 -> :sswitch_15f
        0x25a -> :sswitch_154
        0x25b -> :sswitch_14b
        0x25c -> :sswitch_142
        0x25e -> :sswitch_139
        0x25f -> :sswitch_12e
        0x260 -> :sswitch_123
        0x2bc -> :sswitch_118
        0x2bd -> :sswitch_10d
        0x320 -> :sswitch_102
        0x7d1 -> :sswitch_1d2
        0x7d2 -> :sswitch_f9
        0x7d3 -> :sswitch_ee
        0xbb9 -> :sswitch_1b0
        0xbba -> :sswitch_e3
        0xbbb -> :sswitch_15f
        0xfa1 -> :sswitch_da
        0xfa2 -> :sswitch_154
        0xfa3 -> :sswitch_188
        0xfa4 -> :sswitch_16a
        0xfa5 -> :sswitch_139
        0xfa6 -> :sswitch_12e
        0xfa7 -> :sswitch_cf
        0xfa8 -> :sswitch_c4
        0xfa9 -> :sswitch_123
        0xfab -> :sswitch_1a6
        0xfae -> :sswitch_b9
        0xfaf -> :sswitch_ae
        0x1389 -> :sswitch_174
        0x138a -> :sswitch_118
        0x138b -> :sswitch_10d
        0x138c -> :sswitch_17e
        0x138d -> :sswitch_a3
        0x138e -> :sswitch_98
        0x138f -> :sswitch_19c
        0x1390 -> :sswitch_192
        0x1391 -> :sswitch_8d
        0x1392 -> :sswitch_84
        0x1393 -> :sswitch_7b
        0x1394 -> :sswitch_70
        0x139d -> :sswitch_65
        0x139e -> :sswitch_5a
        0x1873f -> :sswitch_4f
        0x1a216 -> :sswitch_98
        0x1a21a -> :sswitch_84
        0x1a21b -> :sswitch_44
        0x1abc2 -> :sswitch_a3
        0x1abc3 -> :sswitch_8d
        0x30da5 -> :sswitch_1ca
        0x30da6 -> :sswitch_1c2
        0x30da7 -> :sswitch_1ba
        0x30e09 -> :sswitch_14b
        0x30e0a -> :sswitch_142
        0x61ae5 -> :sswitch_2d
        0x61ae6 -> :sswitch_2d
        0x61ae7 -> :sswitch_2d
        0x61ae8 -> :sswitch_2d
        0x61c75 -> :sswitch_24
    .end sparse-switch
.end method
