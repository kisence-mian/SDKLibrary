.class public final Lcom/bytedance/tea/crash/g/i;
.super Ljava/lang/Object;
.source "Net.java"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    invoke-static {p0}, Lcom/bytedance/tea/crash/g/i;->c(Landroid/content/Context;)Lcom/bytedance/tea/crash/upload/b$b;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/tea/crash/g/i;->a(Lcom/bytedance/tea/crash/upload/b$b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/bytedance/tea/crash/upload/b$b;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 25
    const-string v0, ""

    .line 27
    :try_start_2
    sget-object v1, Lcom/bytedance/tea/crash/g/i$1;->a:[I

    invoke-virtual {p0}, Lcom/bytedance/tea/crash/upload/b$b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_20

    .line 49
    :goto_d
    return-object v0

    .line 29
    :pswitch_e
    const-string v0, "wifi"

    goto :goto_d

    .line 32
    :pswitch_11
    const-string v0, "2g"

    goto :goto_d

    .line 35
    :pswitch_14
    const-string v0, "3g"

    goto :goto_d

    .line 38
    :pswitch_17
    const-string v0, "4g"

    goto :goto_d

    .line 41
    :pswitch_1a
    const-string v0, "mobile"
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1c} :catch_1d

    goto :goto_d

    .line 46
    :catch_1d
    move-exception v1

    goto :goto_d

    .line 27
    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 101
    :try_start_1
    const-string v0, "connectivity"

    .line 102
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 103
    if-nez v0, :cond_c

    .line 109
    :goto_b
    return v1

    .line 106
    :cond_c
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_1d

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    :goto_19
    move v1, v0

    goto :goto_b

    :cond_1b
    move v0, v1

    goto :goto_19

    .line 108
    :catch_1d
    move-exception v0

    goto :goto_b
.end method

.method private static c(Landroid/content/Context;)Lcom/bytedance/tea/crash/upload/b$b;
    .registers 3

    .prologue
    .line 57
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 59
    if-nez v0, :cond_d

    .line 60
    sget-object v0, Lcom/bytedance/tea/crash/upload/b$b;->a:Lcom/bytedance/tea/crash/upload/b$b;

    .line 92
    :goto_c
    return-object v0

    .line 62
    :cond_d
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 64
    :cond_19
    sget-object v0, Lcom/bytedance/tea/crash/upload/b$b;->a:Lcom/bytedance/tea/crash/upload/b$b;

    goto :goto_c

    .line 66
    :cond_1c
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 67
    const/4 v1, 0x1

    if-ne v1, v0, :cond_26

    .line 68
    sget-object v0, Lcom/bytedance/tea/crash/upload/b$b;->e:Lcom/bytedance/tea/crash/upload/b$b;

    goto :goto_c

    .line 69
    :cond_26
    if-nez v0, :cond_40

    .line 70
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 72
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_48

    .line 86
    :pswitch_37
    sget-object v0, Lcom/bytedance/tea/crash/upload/b$b;->b:Lcom/bytedance/tea/crash/upload/b$b;

    goto :goto_c

    .line 82
    :pswitch_3a
    sget-object v0, Lcom/bytedance/tea/crash/upload/b$b;->d:Lcom/bytedance/tea/crash/upload/b$b;

    goto :goto_c

    .line 84
    :pswitch_3d
    sget-object v0, Lcom/bytedance/tea/crash/upload/b$b;->f:Lcom/bytedance/tea/crash/upload/b$b;

    goto :goto_c

    .line 89
    :cond_40
    sget-object v0, Lcom/bytedance/tea/crash/upload/b$b;->b:Lcom/bytedance/tea/crash/upload/b$b;
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_42} :catch_43

    goto :goto_c

    .line 91
    :catch_43
    move-exception v0

    .line 92
    sget-object v0, Lcom/bytedance/tea/crash/upload/b$b;->b:Lcom/bytedance/tea/crash/upload/b$b;

    goto :goto_c

    .line 72
    nop

    :pswitch_data_48
    .packed-switch 0x3
        :pswitch_3a
        :pswitch_37
        :pswitch_3a
        :pswitch_3a
        :pswitch_37
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_37
        :pswitch_3a
        :pswitch_3d
        :pswitch_3a
        :pswitch_3a
    .end packed-switch
.end method
