.class public Lcom/JoyFramework/d/ao;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "phone_login"

.field public static final b:Ljava/lang/String; = "account_login"

.field public static final c:Ljava/lang/String; = "fast_login"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 153
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 154
    const-string v0, "setLogin"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    new-instance v0, Lcom/JoyFramework/d/bf;

    invoke-direct {v0}, Lcom/JoyFramework/d/bf;-><init>()V

    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x6

    const-string v6, "jrtt"

    invoke-virtual/range {v0 .. v6}, Lcom/JoyFramework/d/bf;->a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;IILjava/lang/String;)V
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 159
    :goto_1b
    return-void

    .line 156
    :catch_1c
    move-exception v0

    goto :goto_1b
.end method

.method private c(Lcom/JoyFramework/remote/bean/ai;)V
    .registers 9

    .prologue
    .line 211
    :try_start_0
    const-string v0, "\u68c0\u67e5\u6570\u636e gdtPayMethod== "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5e7f\u70b9\u901a\u652f\u4ed8\u63a5\u53e3\u8c03\u7528 === "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/ai;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 213
    const-string v1, "value"

    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/ai;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 214
    const-string v1, "PURCHASE"

    invoke-static {v1, v0}, Lcom/qq/gdt/action/GDTAction;->logAction(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2f} :catch_56

    .line 217
    :try_start_2f
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 218
    const-string v0, "PURCHASE"

    const-string v1, "PURCHASE"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    const-string v0, "amount"

    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/ai;->c()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 220
    new-instance v0, Lcom/JoyFramework/d/bf;

    invoke-direct {v0}, Lcom/JoyFramework/d/bf;-><init>()V

    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x2

    const-string v6, "gdt"

    invoke-virtual/range {v0 .. v6}, Lcom/JoyFramework/d/bf;->a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;IILjava/lang/String;)V
    :try_end_55
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_55} :catch_58

    .line 226
    :goto_55
    return-void

    .line 224
    :catch_56
    move-exception v0

    goto :goto_55

    .line 221
    :catch_58
    move-exception v0

    goto :goto_55
.end method


# virtual methods
.method public a(Lcom/JoyFramework/remote/bean/ai;)V
    .registers 9

    .prologue
    const/4 v1, 0x1

    .line 163
    const-string v0, "\u68c0\u67e5\u6570\u636e \u662f\u5426\u5e7f\u70b9\u901a== "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v3, Lcom/JoyFramework/a/a;->I:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-boolean v0, Lcom/JoyFramework/a/a;->I:Z

    if-eqz v0, :cond_99

    .line 166
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "GdtForWx"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/ar;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 167
    const/4 v0, 0x0

    .line 168
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_39

    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    move v0, v1

    .line 172
    :cond_39
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/ai;->e()I

    move-result v2

    if-ne v2, v1, :cond_a4

    .line 174
    if-nez v0, :cond_96

    .line 175
    const-string v0, "\u68c0\u67e5\u6570\u636e gdtPayMethod== "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5e7f\u70b9\u901a\u4e0b\u5355\u63a5\u53e3\u8c03\u7528 === "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/ai;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :try_start_5d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 179
    const-string v1, "value"

    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/ai;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 180
    const-string v1, "COMPLETE_ORDER"

    invoke-static {v1, v0}, Lcom/qq/gdt/action/GDTAction;->logAction(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_70} :catch_9a

    .line 186
    :goto_70
    :try_start_70
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 187
    const-string v0, "COMPLETE_ORDER"

    const-string v1, "COMPLETE_ORDER"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    const-string v0, "value"

    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/ai;->c()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 189
    new-instance v0, Lcom/JoyFramework/d/bf;

    invoke-direct {v0}, Lcom/JoyFramework/d/bf;-><init>()V

    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x2

    const-string v6, "gdt"

    invoke-virtual/range {v0 .. v6}, Lcom/JoyFramework/d/bf;->a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;IILjava/lang/String;)V
    :try_end_96
    .catch Lorg/json/JSONException; {:try_start_70 .. :try_end_96} :catch_aa

    .line 193
    :cond_96
    :goto_96
    invoke-direct {p0, p1}, Lcom/JoyFramework/d/ao;->c(Lcom/JoyFramework/remote/bean/ai;)V

    .line 202
    :cond_99
    :goto_99
    return-void

    .line 181
    :catch_9a
    move-exception v0

    .line 182
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 183
    const-string v0, "COMPLETE_ORDER"

    invoke-static {v0}, Lcom/qq/gdt/action/GDTAction;->logAction(Ljava/lang/String;)V

    goto :goto_70

    .line 196
    :cond_a4
    if-nez v0, :cond_99

    .line 197
    invoke-direct {p0, p1}, Lcom/JoyFramework/d/ao;->c(Lcom/JoyFramework/remote/bean/ai;)V

    goto :goto_99

    .line 190
    :catch_aa
    move-exception v0

    goto :goto_96
.end method

.method public a(Lcom/JoyFramework/remote/bean/w;)V
    .registers 10

    .prologue
    const/4 v7, 0x1

    .line 30
    sget-boolean v0, Lcom/JoyFramework/a/a;->H:Z

    if-eqz v0, :cond_5f

    .line 32
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/applog/AppLog;->setUserUniqueID(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->m()I

    move-result v1

    .line 37
    if-eqz v1, :cond_3b

    .line 38
    const-string v0, ""

    .line 39
    packed-switch v1, :pswitch_data_112

    .line 59
    :goto_17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 60
    invoke-static {v0, v7}, Lcom/bytedance/applog/GameReportHelper;->onEventRegister(Ljava/lang/String;Z)V

    .line 63
    :try_start_20
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 64
    const-string v1, "setRegister"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    new-instance v0, Lcom/JoyFramework/d/bf;

    invoke-direct {v0}, Lcom/JoyFramework/d/bf;-><init>()V

    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x6

    const-string v6, "jrtt"

    invoke-virtual/range {v0 .. v6}, Lcom/JoyFramework/d/bf;->a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;IILjava/lang/String;)V
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_3b} :catch_10f

    .line 72
    :cond_3b
    :goto_3b
    invoke-static {}, Lcom/JoyFramework/d/bw;->a()Ljava/util/List;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_5f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5f

    .line 74
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/user/LoginUser;

    .line 75
    if-eqz v0, :cond_5f

    .line 76
    invoke-virtual {v0}, Lcom/JoyFramework/user/LoginUser;->getType()Lcom/JoyFramework/user/LoginUser$LoginType;

    move-result-object v0

    .line 77
    sget-object v1, Lcom/JoyFramework/d/ap;->a:[I

    invoke-virtual {v0}, Lcom/JoyFramework/user/LoginUser$LoginType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_122

    .line 101
    :cond_5f
    :goto_5f
    sget-boolean v0, Lcom/JoyFramework/a/a;->I:Z

    if-eqz v0, :cond_a5

    .line 103
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->m()I

    move-result v1

    .line 104
    if-eqz v1, :cond_a5

    .line 105
    const-string v0, ""

    .line 106
    packed-switch v1, :pswitch_data_12c

    .line 126
    :goto_6e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a5

    .line 128
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 130
    :try_start_79
    const-string v1, "REGISTER_METHOD"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7e
    .catch Lorg/json/JSONException; {:try_start_79 .. :try_end_7e} :catch_107

    .line 135
    :goto_7e
    const-string v1, "REGISTER"

    invoke-static {v1, v2}, Lcom/qq/gdt/action/GDTAction;->logAction(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 138
    :try_start_83
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 139
    const-string v1, "REGISTER"

    const-string v3, "REGISTER"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v1, "registerMethod"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    new-instance v0, Lcom/JoyFramework/d/bf;

    invoke-direct {v0}, Lcom/JoyFramework/d/bf;-><init>()V

    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const-string v6, "gdt"

    invoke-virtual/range {v0 .. v6}, Lcom/JoyFramework/d/bf;->a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;IILjava/lang/String;)V
    :try_end_a5
    .catch Lorg/json/JSONException; {:try_start_83 .. :try_end_a5} :catch_10d

    .line 149
    :cond_a5
    :goto_a5
    return-void

    .line 41
    :pswitch_a6
    const-string v0, "phone_register"

    goto/16 :goto_17

    .line 44
    :pswitch_aa
    const-string v0, "account_register"

    goto/16 :goto_17

    .line 47
    :pswitch_ae
    const-string v0, "one_key_register"

    goto/16 :goto_17

    .line 50
    :pswitch_b2
    const-string v0, "phone_verification_code_register"

    goto/16 :goto_17

    .line 53
    :pswitch_b6
    const-string v0, "fast_game_register"

    goto/16 :goto_17

    .line 56
    :pswitch_ba
    const-string v0, "fuse_register"

    goto/16 :goto_17

    .line 79
    :pswitch_be
    const-string v0, "fast_login"

    invoke-static {v0, v7}, Lcom/bytedance/applog/GameReportHelper;->onEventLogin(Ljava/lang/String;Z)V

    .line 81
    const-string v0, "\u4eca\u65e5\u5934\u6761  --> \u767b\u5f55  EventUtils.setLogin  -->  fast_login"

    invoke-static {v0}, Lcom/JoyFramework/d/aq;->c(Ljava/lang/String;)V

    .line 82
    const-string v0, "fast_login"

    invoke-direct {p0, v0}, Lcom/JoyFramework/d/ao;->a(Ljava/lang/String;)V

    goto :goto_5f

    .line 85
    :pswitch_ce
    const-string v0, "account_login"

    invoke-static {v0, v7}, Lcom/bytedance/applog/GameReportHelper;->onEventLogin(Ljava/lang/String;Z)V

    .line 87
    const-string v0, "\u4eca\u65e5\u5934\u6761  --> \u767b\u5f55  EventUtils.setLogin  -->  account_login"

    invoke-static {v0}, Lcom/JoyFramework/d/aq;->c(Ljava/lang/String;)V

    .line 88
    const-string v0, "account_login"

    invoke-direct {p0, v0}, Lcom/JoyFramework/d/ao;->a(Ljava/lang/String;)V

    goto :goto_5f

    .line 91
    :pswitch_de
    const-string v0, "phone_login"

    invoke-static {v0, v7}, Lcom/bytedance/applog/GameReportHelper;->onEventLogin(Ljava/lang/String;Z)V

    .line 93
    const-string v0, "\u4eca\u65e5\u5934\u6761  --> \u767b\u5f55  EventUtils.setLogin  -->  phone_login"

    invoke-static {v0}, Lcom/JoyFramework/d/aq;->c(Ljava/lang/String;)V

    .line 94
    const-string v0, "phone_login"

    invoke-direct {p0, v0}, Lcom/JoyFramework/d/ao;->a(Ljava/lang/String;)V

    goto/16 :goto_5f

    .line 108
    :pswitch_ef
    const-string v0, "phone_register"

    goto/16 :goto_6e

    .line 111
    :pswitch_f3
    const-string v0, "account_register"

    goto/16 :goto_6e

    .line 114
    :pswitch_f7
    const-string v0, "one_key_register"

    goto/16 :goto_6e

    .line 117
    :pswitch_fb
    const-string v0, "phone_verification_code_register"

    goto/16 :goto_6e

    .line 120
    :pswitch_ff
    const-string v0, "fast_game_register"

    goto/16 :goto_6e

    .line 123
    :pswitch_103
    const-string v0, "fuse_register"

    goto/16 :goto_6e

    .line 131
    :catch_107
    move-exception v1

    .line 132
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_7e

    .line 142
    :catch_10d
    move-exception v0

    goto :goto_a5

    .line 66
    :catch_10f
    move-exception v0

    goto/16 :goto_3b

    .line 39
    :pswitch_data_112
    .packed-switch 0x1
        :pswitch_a6
        :pswitch_aa
        :pswitch_ae
        :pswitch_b2
        :pswitch_b6
        :pswitch_ba
    .end packed-switch

    .line 77
    :pswitch_data_122
    .packed-switch 0x1
        :pswitch_be
        :pswitch_ce
        :pswitch_de
    .end packed-switch

    .line 106
    :pswitch_data_12c
    .packed-switch 0x1
        :pswitch_ef
        :pswitch_f3
        :pswitch_f7
        :pswitch_fb
        :pswitch_ff
        :pswitch_103
    .end packed-switch
.end method

.method public b(Lcom/JoyFramework/remote/bean/ai;)V
    .registers 10

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 231
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/ai;->d()I

    move-result v7

    move-object v1, v0

    move-object v2, v0

    move-object v4, v0

    move-object v5, v0

    move v6, v3

    invoke-static/range {v0 .. v7}, Lcom/bytedance/applog/GameReportHelper;->onEventPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 234
    :try_start_e
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 235
    const-string v0, "setPurchase"

    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/ai;->d()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 236
    new-instance v0, Lcom/JoyFramework/d/bf;

    invoke-direct {v0}, Lcom/JoyFramework/d/bf;-><init>()V

    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x6

    const-string v6, "jrtt"

    invoke-virtual/range {v0 .. v6}, Lcom/JoyFramework/d/bf;->a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;IILjava/lang/String;)V
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_2d} :catch_2e

    .line 240
    :goto_2d
    return-void

    .line 237
    :catch_2e
    move-exception v0

    goto :goto_2d
.end method
