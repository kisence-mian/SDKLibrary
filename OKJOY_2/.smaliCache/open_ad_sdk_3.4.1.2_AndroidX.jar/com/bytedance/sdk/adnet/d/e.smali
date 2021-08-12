.class public Lcom/bytedance/sdk/adnet/d/e;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .registers 7

    .line 31
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 32
    if-nez p0, :cond_c

    .line 33
    return v0

    .line 35
    :cond_c
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object p0

    .line 36
    if-eqz p0, :cond_2e

    .line 37
    array-length v1, p0

    move v2, v0

    :goto_14
    if-ge v2, v1, :cond_2e

    aget-object v3, p0, v2

    .line 38
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

    .line 37
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 39
    :cond_2c
    :goto_2c
    const/4 p0, 0x1

    return p0

    .line 46
    :cond_2e
    goto :goto_39

    .line 44
    :catchall_2f
    move-exception p0

    .line 45
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ignored"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :goto_39
    return v0
.end method
