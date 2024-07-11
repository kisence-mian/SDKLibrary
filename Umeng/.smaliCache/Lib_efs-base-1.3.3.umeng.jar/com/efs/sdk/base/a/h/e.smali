.class public final Lcom/efs/sdk/base/a/h/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .registers 5

    .line 29
    const-string v0, "efs.base"

    .line 31
    const/4 v1, 0x0

    :try_start_3
    const-string v2, "connectivity"

    .line 32
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 33
    if-nez p0, :cond_13

    .line 34
    const-string p0, "get CONNECTIVITY_SERVICE is null"

    .line 1025
    invoke-static {v0, p0, v1}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    return-object v1

    .line 38
    :cond_13
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 41
    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 43
    :cond_1f
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object p0

    .line 44
    if-eqz p0, :cond_3b

    .line 45
    const/4 v2, 0x0

    :goto_26
    array-length v3, p0

    if-ge v2, v3, :cond_3b

    .line 46
    aget-object v3, p0, v2

    if-eqz v3, :cond_38

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 47
    aget-object v1, p0, v2
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_3c

    .line 48
    goto :goto_42

    .line 45
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 55
    :cond_3b
    goto :goto_42

    .line 53
    :catchall_3c
    move-exception p0

    .line 54
    const-string v2, "get network info error"

    invoke-static {v0, v2, p0}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    :goto_42
    return-object v1
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 188
    invoke-static {p0}, Lcom/efs/sdk/base/a/h/e;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 189
    const-string p0, "denied"

    return-object p0

    .line 192
    :cond_9
    invoke-static {p0}, Lcom/efs/sdk/base/a/h/e;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    .line 194
    if-nez p0, :cond_12

    .line 195
    const-string p0, "disconnected"

    return-object p0

    .line 198
    :cond_12
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 199
    const-string p0, "wifi"

    return-object p0

    .line 201
    :cond_1c
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 202
    const-string v1, "3g"

    packed-switch v0, :pswitch_data_58

    .line 230
    :pswitch_25
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object p0

    .line 231
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 232
    const-string p0, "unknown"

    return-object p0

    .line 227
    :pswitch_32
    const-string p0, "5g"

    return-object p0

    .line 224
    :pswitch_35
    const-string p0, "4g"

    return-object p0

    .line 221
    :pswitch_38
    return-object v1

    .line 210
    :pswitch_39
    const-string p0, "2g"

    return-object p0

    .line 235
    :cond_3c
    const-string v0, "TD-SCDMA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 236
    const-string v0, "WCDMA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 237
    const-string v0, "CDMA2000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    goto :goto_56

    .line 240
    :cond_55
    return-object p0

    .line 238
    :cond_56
    :goto_56
    return-object v1

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_39
        :pswitch_39
        :pswitch_38
        :pswitch_39
        :pswitch_38
        :pswitch_38
        :pswitch_39
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_39
        :pswitch_38
        :pswitch_35
        :pswitch_38
        :pswitch_38
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_32
    .end packed-switch
.end method

.method private static c(Landroid/content/Context;)Z
    .registers 4

    .line 108
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_14

    if-nez p0, :cond_13

    const/4 p0, 0x1

    return p0

    .line 108
    :cond_13
    return v0

    .line 111
    :catchall_14
    move-exception p0

    .line 112
    return v0
.end method

.method private static d(Landroid/content/Context;)Z
    .registers 1

    .line 122
    invoke-static {p0}, Lcom/efs/sdk/base/a/h/e;->c(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method
