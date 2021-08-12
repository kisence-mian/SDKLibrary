.class public final Lcom/bytedance/tea/crash/g/i;
.super Ljava/lang/Object;
.source "Net.java"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 21
    invoke-static {p0}, Lcom/bytedance/tea/crash/g/i;->c(Landroid/content/Context;)Lcom/bytedance/tea/crash/upload/b$b;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/tea/crash/g/i;->a(Lcom/bytedance/tea/crash/upload/b$b;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/bytedance/tea/crash/upload/b$b;)Ljava/lang/String;
    .registers 3

    .line 25
    const-string v0, ""

    .line 27
    :try_start_2
    sget-object v1, Lcom/bytedance/tea/crash/g/i$1;->a:[I

    invoke-virtual {p0}, Lcom/bytedance/tea/crash/upload/b$b;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_24

    goto :goto_21

    .line 41
    :pswitch_e
    const-string p0, "mobile"

    .line 42
    move-object v0, p0

    goto :goto_21

    .line 38
    :pswitch_12
    const-string p0, "4g"

    .line 39
    move-object v0, p0

    goto :goto_21

    .line 35
    :pswitch_16
    const-string p0, "3g"

    .line 36
    move-object v0, p0

    goto :goto_21

    .line 32
    :pswitch_1a
    const-string p0, "2g"

    .line 33
    move-object v0, p0

    goto :goto_21

    .line 29
    :pswitch_1e
    const-string p0, "wifi"
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_22

    .line 30
    move-object v0, p0

    .line 48
    :goto_21
    goto :goto_23

    .line 46
    :catch_22
    move-exception p0

    .line 49
    :goto_23
    return-object v0

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1a
        :pswitch_16
        :pswitch_12
        :pswitch_e
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 3

    .line 101
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "connectivity"

    .line 102
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 103
    if-nez p0, :cond_c

    .line 104
    return v0

    .line 106
    :cond_c
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    .line 107
    if-eqz p0, :cond_19

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_1a

    if-eqz p0, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0

    .line 108
    :catch_1a
    move-exception p0

    .line 109
    return v0
.end method

.method private static c(Landroid/content/Context;)Lcom/bytedance/tea/crash/upload/b$b;
    .registers 3

    .line 57
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 59
    if-nez v0, :cond_d

    .line 60
    sget-object p0, Lcom/bytedance/tea/crash/upload/b$b;->a:Lcom/bytedance/tea/crash/upload/b$b;

    return-object p0

    .line 62
    :cond_d
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_42

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_42

    .line 66
    :cond_1a
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 67
    const/4 v1, 0x1

    if-ne v1, v0, :cond_24

    .line 68
    sget-object p0, Lcom/bytedance/tea/crash/upload/b$b;->e:Lcom/bytedance/tea/crash/upload/b$b;

    return-object p0

    .line 69
    :cond_24
    if-nez v0, :cond_3f

    .line 70
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 72
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    packed-switch p0, :pswitch_data_4a

    .line 86
    :pswitch_35
    sget-object p0, Lcom/bytedance/tea/crash/upload/b$b;->b:Lcom/bytedance/tea/crash/upload/b$b;

    goto :goto_3e

    .line 84
    :pswitch_38
    sget-object p0, Lcom/bytedance/tea/crash/upload/b$b;->f:Lcom/bytedance/tea/crash/upload/b$b;

    return-object p0

    .line 82
    :pswitch_3b
    sget-object p0, Lcom/bytedance/tea/crash/upload/b$b;->d:Lcom/bytedance/tea/crash/upload/b$b;

    return-object p0

    .line 86
    :goto_3e
    return-object p0

    .line 89
    :cond_3f
    sget-object p0, Lcom/bytedance/tea/crash/upload/b$b;->b:Lcom/bytedance/tea/crash/upload/b$b;

    return-object p0

    .line 64
    :cond_42
    :goto_42
    sget-object p0, Lcom/bytedance/tea/crash/upload/b$b;->a:Lcom/bytedance/tea/crash/upload/b$b;
    :try_end_44
    .catchall {:try_start_0 .. :try_end_44} :catchall_45

    return-object p0

    .line 91
    :catchall_45
    move-exception p0

    .line 92
    sget-object p0, Lcom/bytedance/tea/crash/upload/b$b;->b:Lcom/bytedance/tea/crash/upload/b$b;

    return-object p0

    nop

    :pswitch_data_4a
    .packed-switch 0x3
        :pswitch_3b
        :pswitch_35
        :pswitch_3b
        :pswitch_3b
        :pswitch_35
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_35
        :pswitch_3b
        :pswitch_38
        :pswitch_3b
        :pswitch_3b
    .end packed-switch
.end method
