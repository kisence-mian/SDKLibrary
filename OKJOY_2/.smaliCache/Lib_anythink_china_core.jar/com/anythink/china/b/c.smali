.class public final Lcom/anythink/china/b/c;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 9

    .line 64
    const-string v0, ""

    :try_start_2
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 65
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 66
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wlan0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 69
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v1

    .line 70
    if-nez v1, :cond_2d

    .line 71
    return-object v0

    .line 74
    :cond_2d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_35
    const/4 v6, 0x1

    if-ge v5, v3, :cond_4e

    aget-byte v7, v1, v5

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    .line 76
    const-string v8, "%02X:"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v7, v6, v4

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    .line 78
    :cond_4e
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 81
    :cond_5c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_60} :catch_62

    return-object v0

    .line 85
    :cond_61
    goto :goto_66

    .line 84
    :catch_62
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    :goto_66
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 34
    nop

    .line 35
    if-nez p0, :cond_6

    .line 36
    const-string p0, ""

    return-object p0

    .line 38
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 39
    nop

    .line 41
    const/4 v0, 0x0

    :try_start_14
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_18} :catch_19

    .line 44
    goto :goto_1e

    .line 43
    :catch_19
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, v0

    .line 46
    :goto_1e
    if-nez p0, :cond_21

    .line 47
    return-object v0

    .line 49
    :cond_21
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    .line 50
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 51
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 53
    :cond_31
    return-object p0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 94
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    const-string v1, "mac"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 95
    const-string p0, ""

    return-object p0

    .line 99
    :cond_f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1a

    .line 100
    invoke-static {p0}, Lcom/anythink/china/b/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1e

    .line 102
    :cond_1a
    invoke-static {}, Lcom/anythink/china/b/c;->a()Ljava/lang/String;

    move-result-object p0

    .line 105
    :goto_1e
    return-object p0
.end method
