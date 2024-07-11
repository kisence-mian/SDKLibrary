.class public Lcom/bytedance/embedapplog/bl;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .registers 3

    .line 22
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "connectivity"

    .line 23
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 24
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    .line 25
    if-eqz p0, :cond_16

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_17

    if-eqz p0, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0

    .line 26
    :catchall_17
    move-exception p0

    .line 29
    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 33
    nop

    .line 34
    nop

    .line 36
    const/4 v0, 0x0

    :try_start_3
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 37
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1
    :try_end_f
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_f} :catch_12
    .catchall {:try_start_3 .. :try_end_f} :catchall_10

    .line 41
    goto :goto_18

    .line 40
    :catchall_10
    move-exception v1

    goto :goto_17

    .line 38
    :catch_12
    move-exception v1

    .line 39
    invoke-static {v1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 41
    nop

    .line 42
    :goto_17
    move-object v1, v0

    :goto_18
    if-eqz v1, :cond_49

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 43
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 44
    const/4 v2, 0x1

    if-ne v2, v1, :cond_2a

    .line 45
    const-string v0, "wifi"

    goto :goto_49

    .line 46
    :cond_2a
    if-nez v1, :cond_49

    .line 47
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 48
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    packed-switch p0, :pswitch_data_4a

    .line 75
    const-string v0, "mobile"

    goto :goto_49

    .line 72
    :pswitch_3e
    nop

    .line 73
    const-string v0, "4g"

    goto :goto_49

    .line 67
    :pswitch_42
    nop

    .line 68
    const-string v0, "3g"

    goto :goto_49

    .line 55
    :pswitch_46
    nop

    .line 56
    const-string v0, "2g"

    .line 79
    :cond_49
    :goto_49
    return-object v0

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_46
        :pswitch_46
        :pswitch_42
        :pswitch_46
        :pswitch_42
        :pswitch_42
        :pswitch_46
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_46
        :pswitch_42
        :pswitch_3e
        :pswitch_42
        :pswitch_42
        :pswitch_46
        :pswitch_42
        :pswitch_3e
        :pswitch_3e
    .end packed-switch
.end method
