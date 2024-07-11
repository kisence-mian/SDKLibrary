.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/i;
.super Ljava/lang/Object;
.source "NetUtils.java"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 16
    :try_start_0
    const-string v0, "connectivity"

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_4d

    .line 18
    const-string v1, "unknow"

    if-nez v0, :cond_d

    .line 19
    return-object v1

    .line 22
    :cond_d
    :try_start_d
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 23
    if-eqz v2, :cond_4c

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_4c

    .line 27
    :cond_1a
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_32

    .line 29
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_32

    .line 31
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v2, :cond_2f

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v2, :cond_32

    .line 32
    :cond_2f
    const-string p0, "WIFI"

    return-object p0

    .line 37
    :cond_32
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 38
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    .line 39
    packed-switch p0, :pswitch_data_58

    .line 79
    goto :goto_4b

    .line 77
    :pswitch_42
    const-string p0, "4G"

    return-object p0

    .line 74
    :pswitch_45
    const-string p0, "3G"

    return-object p0

    .line 63
    :pswitch_48
    const-string p0, "2G"
    :try_end_4a
    .catchall {:try_start_d .. :try_end_4a} :catchall_4d

    return-object p0

    .line 79
    :goto_4b
    return-object v1

    .line 24
    :cond_4c
    :goto_4c
    return-object v1

    .line 81
    :catchall_4d
    move-exception p0

    .line 83
    const-string v0, "gecko-debug-tag"

    const-string v1, "getNetworkState:"

    invoke-static {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    const-string p0, "null"

    return-object p0

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_48
        :pswitch_48
        :pswitch_45
        :pswitch_48
        :pswitch_45
        :pswitch_45
        :pswitch_48
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_45
        :pswitch_45
    .end packed-switch
.end method
