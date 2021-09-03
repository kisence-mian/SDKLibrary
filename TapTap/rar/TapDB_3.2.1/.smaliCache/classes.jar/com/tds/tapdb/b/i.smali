.class public Lcom/tds/tapdb/b/i;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/net/ConnectivityManager;)Ljava/lang/String;
    .registers 5

    const/16 v0, 0x1e

    if-eqz p1, :cond_24

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v0, :cond_1b

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v1}, Lcom/tds/tapdb/b/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_16

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->hasCarrierPrivileges()Z

    move-result p0

    if-eqz p0, :cond_1b

    :cond_16
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result p0

    goto :goto_25

    :cond_1b
    :try_start_1b
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1f} :catch_20

    goto :goto_25

    :catch_20
    move-exception p0

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/Exception;)V

    :cond_24
    const/4 p0, 0x0

    :goto_25
    const-string p1, "3"

    if-nez p0, :cond_3a

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v0, :cond_2e

    return-object p1

    :cond_2e
    if-eqz p2, :cond_3a

    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p2

    if-eqz p2, :cond_3a

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    :cond_3a
    packed-switch p0, :pswitch_data_4a

    :pswitch_3d
    return-object p1

    :pswitch_3e
    const-string p0, "7"

    return-object p0

    :pswitch_41
    const-string p0, "6"

    return-object p0

    :pswitch_44
    const-string p0, "5"

    return-object p0

    :pswitch_47
    const-string p0, "4"

    return-object p0

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_47
        :pswitch_47
        :pswitch_44
        :pswitch_47
        :pswitch_44
        :pswitch_44
        :pswitch_47
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_44
        :pswitch_44
        :pswitch_3d
        :pswitch_3d
        :pswitch_41
        :pswitch_41
        :pswitch_3e
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lcom/tds/tapdb/b/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    :try_start_a
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-static {p0}, Lcom/tds/tapdb/b/i;->a(Landroid/net/ConnectivityManager;)Z

    move-result p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_17

    return p0

    :catch_17
    move-exception p0

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/Exception;)V

    return v1
.end method

.method private static a(Landroid/net/ConnectivityManager;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_27

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1a

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_27

    invoke-static {p0}, Lcom/tds/tapdb/b/i;->a(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    return p0

    :cond_1a
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_27

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_27

    const/4 v0, 0x1

    :cond_27
    return v0
.end method

.method public static a(Landroid/net/NetworkCapabilities;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2e

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_2d

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_2d

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_2d

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_2d

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_2e

    :cond_2d
    move v0, v1

    :cond_2e
    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "Unknown"

    :try_start_2
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v1}, Lcom/tds/tapdb/b/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    return-object v0

    :cond_b
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_25

    invoke-static {v1}, Lcom/tds/tapdb/b/i;->a(Landroid/net/ConnectivityManager;)Z

    move-result v2

    if-nez v2, :cond_1c

    return-object v0

    :cond_1c
    invoke-static {v1}, Lcom/tds/tapdb/b/i;->b(Landroid/net/ConnectivityManager;)Z

    move-result v2
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_32

    if-eqz v2, :cond_25

    const-string p0, "2"

    return-object p0

    :cond_25
    :try_start_25
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-static {p0, v2, v1}, Lcom/tds/tapdb/b/i;->a(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/net/ConnectivityManager;)Ljava/lang/String;

    move-result-object p0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_31} :catch_32

    return-object p0

    :catch_32
    move-exception p0

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/Exception;)V

    return-object v0
.end method

.method private static b(Landroid/net/ConnectivityManager;)Z
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x17

    if-lt v0, v3, :cond_1a

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_19

    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    return p0

    :cond_19
    return v1

    :cond_1a
    invoke-virtual {p0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_27

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0

    if-eqz p0, :cond_27

    move v1, v2

    :cond_27
    return v1
.end method
