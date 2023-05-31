.class public Lcom/tencent/smtt/utils/Apn;
.super Ljava/lang/Object;


# static fields
.field public static final APN_2G:I = 0x1

.field public static final APN_3G:I = 0x2

.field public static final APN_4G:I = 0x4

.field public static final APN_UNKNOWN:I = 0x0

.field public static final APN_WIFI:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApnInfo(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v1, "unknown"

    :try_start_2
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_2a

    :cond_1d
    :goto_1d
    move-object v0, v1

    :goto_1e
    return-object v0

    :pswitch_1f
    const-string v0, "wifi"

    goto :goto_1e

    :pswitch_22
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_25} :catch_27

    move-result-object v0

    goto :goto_1e

    :catch_27
    move-exception v0

    goto :goto_1d

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_22
        :pswitch_1f
    .end packed-switch
.end method

.method public static getApnType(Landroid/content/Context;)I
    .registers 4

    const/4 v1, 0x0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_32

    move v0, v1

    :goto_1d
    return v0

    :pswitch_1e
    const/4 v0, 0x3

    goto :goto_1d

    :pswitch_20
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    packed-switch v0, :pswitch_data_3a

    move v0, v1

    goto :goto_1d

    :pswitch_29
    const/4 v0, 0x1

    goto :goto_1d

    :pswitch_2b
    const/4 v0, 0x2

    goto :goto_1d

    :pswitch_2d
    const/4 v0, 0x4

    goto :goto_1d

    :cond_2f
    move v0, v1

    goto :goto_1d

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1e
    .end packed-switch

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_29
        :pswitch_29
        :pswitch_2b
        :pswitch_29
        :pswitch_2b
        :pswitch_2b
        :pswitch_29
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_29
        :pswitch_2b
        :pswitch_2d
        :pswitch_2b
        :pswitch_2b
    .end packed-switch
.end method

.method public static getWifiSSID(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const/4 v1, 0x0

    :try_start_1
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_12} :catch_14

    move-result-object v0

    :goto_13
    return-object v0

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, ""

    goto :goto_13

    :cond_1b
    move-object v0, v1

    goto :goto_13
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .registers 4

    const/4 v1, 0x0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_11

    move v0, v1

    :goto_10
    return v0

    :cond_11
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1d
    const/4 v0, 0x1

    goto :goto_10

    :cond_1f
    move v0, v1

    goto :goto_10
.end method
