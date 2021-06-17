.class final Lcom/appsflyer/internal/u;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/u$e;,
        Lcom/appsflyer/internal/u$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static values(Landroid/content/Context;)Lcom/appsflyer/internal/u$a;
    .registers 13

    .line 86
    const-string v0, "unknown"

    .line 87
    nop

    .line 88
    nop

    .line 90
    nop

    .line 1069
    const/4 v1, 0x0

    :try_start_6
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_a0

    .line 1070
    const-string v3, "MOBILE"

    const-string v4, "WIFI"

    if-eqz v2, :cond_77

    .line 1073
    const/16 v5, 0x15

    :try_start_16
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-gt v5, v6, :cond_45

    .line 2034
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v5

    .line 2035
    array-length v6, v5

    :goto_21
    if-ge v7, v6, :cond_43

    aget-object v9, v5, v7

    .line 2036
    invoke-virtual {v2, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v9

    .line 2037
    invoke-static {v9}, Lcom/appsflyer/internal/u;->values(Landroid/net/NetworkInfo;)Z

    move-result v10

    if-eqz v10, :cond_40

    .line 2038
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v8, v2, :cond_37

    .line 2039
    move-object v0, v4

    goto :goto_78

    .line 2041
    :cond_37
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_3f

    .line 2042
    move-object v0, v3

    goto :goto_78

    .line 2044
    :cond_3f
    goto :goto_78

    .line 2035
    :cond_40
    add-int/lit8 v7, v7, 0x1

    goto :goto_21

    .line 2047
    :cond_43
    nop

    .line 1074
    goto :goto_78

    .line 2051
    :cond_45
    invoke-virtual {v2, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-static {v5}, Lcom/appsflyer/internal/u;->values(Landroid/net/NetworkInfo;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 2052
    move-object v0, v4

    goto :goto_78

    .line 2054
    :cond_51
    invoke-virtual {v2, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-static {v5}, Lcom/appsflyer/internal/u;->values(Landroid/net/NetworkInfo;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 2055
    move-object v0, v3

    goto :goto_78

    .line 2057
    :cond_5d
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 2058
    invoke-static {v2}, Lcom/appsflyer/internal/u;->values(Landroid/net/NetworkInfo;)Z

    move-result v5

    if-eqz v5, :cond_77

    .line 2059
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v8, v5, :cond_6f

    .line 2060
    move-object v0, v4

    goto :goto_78

    .line 2061
    :cond_6f
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_77

    .line 2062
    move-object v0, v3

    goto :goto_78

    .line 2065
    :cond_77
    nop

    .line 90
    :goto_78
    nop

    .line 93
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 94
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v2
    :try_end_85
    .catchall {:try_start_16 .. :try_end_85} :catchall_a0

    .line 95
    :try_start_85
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 96
    if-eqz v1, :cond_91

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 97
    :cond_91
    const/4 v3, 0x2

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p0

    if-ne v3, p0, :cond_9a

    .line 98
    const-string v1, "CDMA"
    :try_end_9a
    .catchall {:try_start_85 .. :try_end_9a} :catchall_9b

    .line 104
    :cond_9a
    goto :goto_aa

    .line 102
    :catchall_9b
    move-exception p0

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    goto :goto_a2

    :catchall_a0
    move-exception p0

    move-object v2, v1

    .line 103
    :goto_a2
    const-string v3, "Exception while collecting network info. "

    invoke-static {v3, p0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    .line 105
    :goto_aa
    new-instance p0, Lcom/appsflyer/internal/u$a;

    invoke-direct {p0, v0, v1, v2}, Lcom/appsflyer/internal/u$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static values(Landroid/net/NetworkInfo;)Z
    .registers 1

    .line 29
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method
