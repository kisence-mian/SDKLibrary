.class public Lcom/qq/gdt/action/h/m;
.super Ljava/lang/Object;


# direct methods
.method public static a()Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/qq/gdt/action/f;->a()Lcom/qq/gdt/action/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/f;->c()Landroid/content/Context;

    move-result-object v1

    :try_start_8
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v1, v0}, Lcom/qq/gdt/action/h/n;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "UNKNOWN"

    :goto_12
    return-object v0

    :cond_13
    const-string v0, "connectivity"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_73

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_54

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    if-eqz v2, :cond_51

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_73

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_39

    const-string v0, "WIFI"

    goto :goto_12

    :cond_39
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_73

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_73

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-nez v0, :cond_73

    const-string v0, "UNKNOWN"

    goto :goto_12

    :cond_51
    const-string v0, "UNKNOWN"

    goto :goto_12

    :cond_54
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_60

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_63

    :cond_60
    const-string v0, "UNKNOWN"

    goto :goto_12

    :cond_63
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_73

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_73

    const-string v0, "WIFI"

    goto :goto_12

    :cond_73
    const-string v0, "phone"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_80

    const-string v0, "UNKNOWN"

    goto :goto_12

    :cond_80
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_9c

    :pswitch_87
    const-string v0, "UNKNOWN"

    goto :goto_12

    :pswitch_8a
    const-string v0, "2G"

    goto :goto_12

    :pswitch_8d
    const-string v0, "3G"

    goto :goto_12

    :pswitch_90
    const-string v0, "4G"

    goto :goto_12

    :pswitch_93
    const-string v0, "5G"
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_95} :catch_97

    goto/16 :goto_12

    :catch_97
    move-exception v0

    const-string v0, "UNKNOWN"

    goto/16 :goto_12

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_8a
        :pswitch_8a
        :pswitch_8d
        :pswitch_8a
        :pswitch_8d
        :pswitch_8d
        :pswitch_8a
        :pswitch_8d
        :pswitch_8d
        :pswitch_8d
        :pswitch_8a
        :pswitch_8d
        :pswitch_90
        :pswitch_8d
        :pswitch_8d
        :pswitch_8a
        :pswitch_8d
        :pswitch_90
        :pswitch_87
        :pswitch_93
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lcom/qq/gdt/action/h/n;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return v1

    :cond_b
    :try_start_b
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_a

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_48

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-nez v3, :cond_43

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-nez v3, :cond_43

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-nez v3, :cond_43

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_46

    :cond_43
    move v0, v2

    :goto_44
    move v1, v0

    goto :goto_a

    :cond_46
    move v0, v1

    goto :goto_44

    :cond_48
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_56

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_51} :catch_58

    move-result v0

    if-eqz v0, :cond_56

    :goto_54
    move v1, v2

    goto :goto_a

    :cond_56
    move v2, v1

    goto :goto_54

    :catch_58
    move-exception v0

    const-string v2, "Check network available exception"

    invoke-static {v2, v0}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method
