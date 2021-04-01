.class public Lcom/bytedance/sdk/openadsdk/utils/w;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 30
    :try_start_1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 31
    if-nez v0, :cond_d

    move v0, v1

    .line 46
    :goto_c
    return v0

    .line 34
    :cond_d
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 35
    if-eqz v2, :cond_2f

    .line 36
    array-length v3, v2

    move v0, v1

    :goto_15
    if-ge v0, v3, :cond_2f

    aget-object v4, v2, v0

    .line 37
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v5, v6, :cond_29

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_27} :catch_2e

    if-ne v4, v5, :cond_2b

    .line 38
    :cond_29
    const/4 v0, 0x1

    goto :goto_c

    .line 36
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 43
    :catch_2e
    move-exception v0

    :cond_2f
    move v0, v1

    .line 46
    goto :goto_c
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 163
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static b(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 52
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/w;->c(Landroid/content/Context;)I

    move-result v0

    .line 53
    packed-switch v0, :pswitch_data_e

    .line 61
    :goto_7
    :pswitch_7
    return v0

    .line 55
    :pswitch_8
    const/4 v0, 0x1

    goto :goto_7

    .line 57
    :pswitch_a
    const/4 v0, 0x4

    goto :goto_7

    .line 59
    :pswitch_c
    const/4 v0, 0x0

    goto :goto_7

    .line 53
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_c
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method public static c(Landroid/content/Context;)I
    .registers 5

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 67
    :try_start_2
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 70
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 71
    if-eqz v3, :cond_16

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_18

    .line 72
    :cond_16
    const/4 v0, 0x0

    .line 120
    :goto_17
    return v0

    .line 74
    :cond_18
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 75
    packed-switch v0, :pswitch_data_62

    move v0, v2

    .line 117
    goto :goto_17

    .line 77
    :pswitch_21
    const/4 v0, 0x4

    goto :goto_17

    .line 79
    :pswitch_23
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 82
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_6a

    .line 106
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5c

    .line 108
    const-string v3, "TD-SCDMA"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_54

    const-string v3, "WCDMA"

    .line 109
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_54

    const-string v3, "CDMA2000"

    .line 110
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_51} :catch_5e

    move-result v0

    if-eqz v0, :cond_5c

    :cond_54
    move v0, v1

    .line 111
    goto :goto_17

    .line 89
    :pswitch_56
    const/4 v0, 0x2

    goto :goto_17

    :pswitch_58
    move v0, v1

    .line 100
    goto :goto_17

    .line 104
    :pswitch_5a
    const/4 v0, 0x5

    goto :goto_17

    :cond_5c
    move v0, v2

    .line 114
    goto :goto_17

    .line 119
    :catch_5e
    move-exception v0

    move v0, v2

    .line 120
    goto :goto_17

    .line 75
    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_23
        :pswitch_21
    .end packed-switch

    .line 82
    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_56
        :pswitch_56
        :pswitch_58
        :pswitch_56
        :pswitch_58
        :pswitch_58
        :pswitch_56
        :pswitch_58
        :pswitch_58
        :pswitch_58
        :pswitch_56
        :pswitch_58
        :pswitch_5a
        :pswitch_58
        :pswitch_58
        :pswitch_56
        :pswitch_58
        :pswitch_5a
        :pswitch_5a
    .end packed-switch
.end method

.method public static d(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 125
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/w;->c(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static e(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 129
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/w;->c(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 139
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/w;->c(Landroid/content/Context;)I

    move-result v0

    .line 141
    packed-switch v0, :pswitch_data_16

    .line 155
    const-string v0, "mobile"

    .line 158
    :goto_9
    return-object v0

    .line 143
    :pswitch_a
    const-string v0, "wifi"

    goto :goto_9

    .line 146
    :pswitch_d
    const-string v0, "2g"

    goto :goto_9

    .line 149
    :pswitch_10
    const-string v0, "3g"

    goto :goto_9

    .line 152
    :pswitch_13
    const-string v0, "4g"

    goto :goto_9

    .line 141
    :pswitch_data_16
    .packed-switch 0x2
        :pswitch_d
        :pswitch_10
        :pswitch_a
        :pswitch_13
    .end packed-switch
.end method
