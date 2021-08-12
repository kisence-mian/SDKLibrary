.class public Lcom/bytedance/sdk/adnet/d/d;
.super Ljava/lang/Object;
.source "MultiProcessFileUtils.java"


# direct methods
.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    .line 38
    const-string v0, ""

    .line 39
    packed-switch p1, :pswitch_data_24

    move-object p0, v0

    goto :goto_15

    .line 41
    :pswitch_7
    :try_start_7
    invoke-static {}, Lcom/bytedance/sdk/adnet/a;->a()Lcom/bytedance/sdk/adnet/c/b;

    move-result-object p1

    const-string v1, "tnc_config"

    invoke-interface {p1, p0, v1, v0}, Lcom/bytedance/sdk/adnet/c/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_12

    goto :goto_15

    .line 46
    :catch_12
    move-exception p0

    .line 48
    move-object p0, v0

    goto :goto_17

    .line 45
    :goto_15
    nop

    .line 49
    nop

    .line 50
    :goto_17
    nop

    .line 51
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_21

    .line 52
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    .line 54
    :cond_21
    nop

    .line 56
    :goto_22
    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)V
    .registers 6

    .line 20
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 21
    packed-switch p1, :pswitch_data_32

    goto :goto_f

    .line 23
    :pswitch_9
    const-string p1, "tnc_config"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    nop

    .line 28
    :goto_f
    const-string p1, "MultiProcessFileUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/adnet/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/bytedance/sdk/adnet/a;->a()Lcom/bytedance/sdk/adnet/c/b;

    move-result-object p1

    invoke-interface {p1, p0, v0}, Lcom/bytedance/sdk/adnet/c/b;->a(Landroid/content/Context;Ljava/util/Map;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    .line 32
    goto :goto_30

    .line 30
    :catch_2f
    move-exception p0

    .line 33
    :goto_30
    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method
