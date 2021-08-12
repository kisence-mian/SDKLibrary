.class public final Lcom/tramini/plugin/a/g/h;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Z
    .registers 4

    .line 25
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 26
    if-eqz v0, :cond_46

    .line 27
    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 28
    check-cast v1, Ljava/net/NetworkInterface;

    .line 29
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_e

    .line 32
    const-string v2, "tun0"

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    const-string v2, "ppp0"

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_40
    .catchall {:try_start_0 .. :try_end_40} :catchall_47

    if-eqz v1, :cond_43

    goto :goto_44

    .line 35
    :cond_43
    goto :goto_e

    .line 33
    :cond_44
    :goto_44
    const/4 v0, 0x1

    return v0

    .line 38
    :cond_46
    goto :goto_48

    .line 37
    :catchall_47
    move-exception v0

    .line 39
    :goto_48
    const/4 v0, 0x0

    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 2

    .line 66
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0}, Lcom/tramini/plugin/a/g/h;->b(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_10

    invoke-static {}, Lcom/tramini/plugin/a/g/h;->a()Z

    move-result p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_11

    if-eqz p0, :cond_e

    goto :goto_10

    :cond_e
    const/4 p0, 0x0

    return p0

    :cond_10
    :goto_10
    return v0

    .line 68
    :catch_11
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    return v0
.end method

.method private static b(Landroid/content/Context;)Z
    .registers 6

    .line 47
    const/4 v0, 0x0

    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    const/4 v3, 0x1

    if-lt v1, v2, :cond_a

    move v1, v3

    goto :goto_b

    :cond_a
    move v1, v0

    .line 50
    :goto_b
    if-eqz v1, :cond_23

    .line 51
    const-string p0, "http.proxyHost"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 52
    const-string v1, "http.proxyPort"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    if-eqz v1, :cond_1c

    goto :goto_1e

    :cond_1c
    const-string v1, "-1"

    :goto_1e
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 54
    goto :goto_2e

    .line 55
    :cond_23
    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-static {p0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result p0

    move-object v4, v1

    move v1, p0

    move-object p0, v4

    .line 58
    :goto_2e
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_39

    if-nez p0, :cond_38

    const/4 p0, -0x1

    if-eq v1, p0, :cond_38

    return v3

    :cond_38
    return v0

    .line 59
    :catchall_39
    move-exception p0

    .line 61
    return v0
.end method
