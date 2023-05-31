.class public Lcom/bytedance/embedapplog/util/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 24
    :try_start_1
    const-string v0, "connectivity"

    .line 25
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 26
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_19

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    .line 31
    :goto_16
    return v0

    :cond_17
    move v0, v1

    .line 27
    goto :goto_16

    .line 28
    :catch_19
    move-exception v0

    move v0, v1

    .line 31
    goto :goto_16
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 50
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 51
    if-nez v0, :cond_d

    move-object v0, v1

    .line 61
    :goto_c
    return-object v0

    .line 55
    :cond_d
    :try_start_d
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_19

    .line 57
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_16} :catch_18

    move-result-object v0

    goto :goto_c

    .line 59
    :catch_18
    move-exception v0

    :cond_19
    move-object v0, v1

    .line 61
    goto :goto_c
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 65
    .line 68
    :try_start_1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 69
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_c} :catch_1f

    move-result-object v0

    .line 73
    :goto_d
    if-eqz v0, :cond_42

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 74
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 75
    const/4 v2, 0x1

    if-ne v2, v0, :cond_25

    .line 76
    const-string v0, "wifi"

    .line 110
    :goto_1e
    return-object v0

    .line 70
    :catch_1f
    move-exception v0

    .line 71
    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_d

    .line 77
    :cond_25
    if-nez v0, :cond_42

    .line 78
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 79
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_44

    .line 106
    const-string v0, "mobile"

    goto :goto_1e

    .line 86
    :pswitch_39
    const-string v0, "2g"

    goto :goto_1e

    .line 98
    :pswitch_3c
    const-string v0, "3g"

    goto :goto_1e

    .line 103
    :pswitch_3f
    const-string v0, "4g"

    goto :goto_1e

    :cond_42
    move-object v0, v1

    goto :goto_1e

    .line 79
    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_39
        :pswitch_39
        :pswitch_3c
        :pswitch_39
        :pswitch_3c
        :pswitch_3c
        :pswitch_39
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_39
        :pswitch_3c
        :pswitch_3f
        :pswitch_3c
        :pswitch_3c
        :pswitch_39
        :pswitch_3c
        :pswitch_3f
        :pswitch_3f
    .end packed-switch
.end method
