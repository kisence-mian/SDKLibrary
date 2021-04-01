.class public Lcom/bytedance/sdk/adnet/d/e;
.super Ljava/lang/Object;
.source "MultiProcessFileUtils.java"


# direct methods
.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 38
    :try_start_0
    const-string v0, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_1d

    .line 39
    packed-switch p1, :pswitch_data_24

    .line 50
    :goto_5
    const-string v1, ""

    .line 51
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_21

    .line 52
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 56
    :goto_f
    return-object v0

    .line 41
    :pswitch_10
    :try_start_10
    invoke-static {}, Lcom/bytedance/sdk/adnet/a;->a()Lcom/bytedance/sdk/adnet/c/b;

    move-result-object v0

    const-string v1, "tnc_config"

    const-string v2, ""

    invoke-interface {v0, p0, v1, v2}, Lcom/bytedance/sdk/adnet/c/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1b} :catch_1d

    move-result-object v0

    goto :goto_5

    .line 46
    :catch_1d
    move-exception v0

    .line 48
    const-string v0, ""

    goto :goto_5

    .line 54
    :cond_21
    const-string v0, ""

    goto :goto_f

    .line 39
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_10
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)V
    .registers 7

    .prologue
    .line 20
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 21
    packed-switch p1, :pswitch_data_30

    .line 28
    :goto_8
    const-string v1, "MultiProcessFileUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/bytedance/sdk/adnet/a;->a()Lcom/bytedance/sdk/adnet/c/b;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Lcom/bytedance/sdk/adnet/c/b;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 33
    :goto_27
    return-void

    .line 23
    :pswitch_28
    const-string v1, "tnc_config"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_8

    .line 30
    :catch_2e
    move-exception v0

    goto :goto_27

    .line 21
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_28
    .end packed-switch
.end method
