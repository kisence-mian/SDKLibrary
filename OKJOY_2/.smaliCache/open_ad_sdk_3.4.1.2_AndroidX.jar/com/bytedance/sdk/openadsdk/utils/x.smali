.class public Lcom/bytedance/sdk/openadsdk/utils/x;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .registers 7

    .line 30
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 31
    if-nez p0, :cond_c

    .line 32
    return v0

    .line 34
    :cond_c
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object p0

    .line 35
    if-eqz p0, :cond_2e

    .line 36
    array-length v1, p0

    move v2, v0

    :goto_14
    if-ge v2, v1, :cond_2e

    aget-object v3, p0, v2

    .line 37
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v4, v5, :cond_2c

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_2f

    if-ne v3, v4, :cond_29

    goto :goto_2c

    .line 36
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 38
    :cond_2c
    :goto_2c
    const/4 p0, 0x1

    return p0

    .line 45
    :cond_2e
    goto :goto_30

    .line 43
    :catchall_2f
    move-exception p0

    .line 46
    :goto_30
    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

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

    move-result p0

    if-eqz p0, :cond_18

    :cond_16
    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public static b(Landroid/content/Context;)I
    .registers 1

    .line 52
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/x;->c(Landroid/content/Context;)I

    move-result p0

    .line 53
    packed-switch p0, :pswitch_data_e

    .line 61
    :pswitch_7
    return p0

    .line 57
    :pswitch_8
    const/4 p0, 0x4

    return p0

    .line 55
    :pswitch_a
    const/4 p0, 0x1

    return p0

    .line 59
    :pswitch_c
    const/4 p0, 0x0

    return p0

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_c
        :pswitch_7
        :pswitch_7
        :pswitch_a
        :pswitch_8
    .end packed-switch
.end method

.method public static c(Landroid/content/Context;)I
    .registers 4

    .line 67
    const/4 v0, 0x1

    :try_start_1
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 70
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 71
    if-eqz v1, :cond_5a

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_5a

    .line 74
    :cond_16
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 75
    packed-switch v2, :pswitch_data_5e

    .line 117
    return v0

    .line 77
    :pswitch_1e
    const/4 p0, 0x4

    return p0

    .line 79
    :pswitch_20
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 82
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    const/4 v2, 0x3

    packed-switch p0, :pswitch_data_66

    .line 106
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object p0

    goto :goto_3a

    .line 104
    :pswitch_35
    const/4 p0, 0x5

    return p0

    .line 100
    :pswitch_37
    return v2

    .line 89
    :pswitch_38
    const/4 p0, 0x2

    return p0

    .line 107
    :goto_3a
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_59

    .line 108
    const-string v1, "TD-SCDMA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_58

    const-string v1, "WCDMA"

    .line 109
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_58

    const-string v1, "CDMA2000"

    .line 110
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_56
    .catchall {:try_start_1 .. :try_end_56} :catchall_5c

    if-eqz p0, :cond_59

    .line 111
    :cond_58
    return v2

    .line 114
    :cond_59
    return v0

    .line 72
    :cond_5a
    :goto_5a
    const/4 p0, 0x0

    return p0

    .line 119
    :catchall_5c
    move-exception p0

    .line 120
    return v0

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1e
    .end packed-switch

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_38
        :pswitch_38
        :pswitch_37
        :pswitch_38
        :pswitch_37
        :pswitch_37
        :pswitch_38
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_38
        :pswitch_37
        :pswitch_35
        :pswitch_37
        :pswitch_37
        :pswitch_38
        :pswitch_37
        :pswitch_35
        :pswitch_35
    .end packed-switch
.end method

.method public static d(Landroid/content/Context;)Z
    .registers 2

    .line 125
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/x;->c(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static e(Landroid/content/Context;)Z
    .registers 2

    .line 129
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/x;->c(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 139
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/x;->c(Landroid/content/Context;)I

    move-result p0

    .line 141
    packed-switch p0, :pswitch_data_1a

    .line 155
    const-string p0, "mobile"

    goto :goto_19

    .line 152
    :pswitch_a
    nop

    .line 153
    const-string p0, "4g"

    goto :goto_19

    .line 143
    :pswitch_e
    nop

    .line 144
    const-string p0, "wifi"

    goto :goto_19

    .line 149
    :pswitch_12
    nop

    .line 150
    const-string p0, "3g"

    goto :goto_19

    .line 146
    :pswitch_16
    nop

    .line 147
    const-string p0, "2g"

    .line 158
    :goto_19
    return-object p0

    :pswitch_data_1a
    .packed-switch 0x2
        :pswitch_16
        :pswitch_12
        :pswitch_e
        :pswitch_a
    .end packed-switch
.end method
