.class public Lcom/bytedance/sdk/adnet/d/f;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 31
    :try_start_1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 32
    if-nez v0, :cond_d

    move v0, v1

    .line 47
    :goto_c
    return v0

    .line 35
    :cond_d
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 36
    if-eqz v2, :cond_38

    .line 37
    array-length v3, v2

    move v0, v1

    :goto_15
    if-ge v0, v3, :cond_38

    aget-object v4, v2, v0

    .line 38
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

    .line 39
    :cond_29
    const/4 v0, 0x1

    goto :goto_c

    .line 37
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 44
    :catch_2e
    move-exception v0

    .line 45
    const-string v2, "ignored"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    move v0, v1

    .line 47
    goto :goto_c
.end method
