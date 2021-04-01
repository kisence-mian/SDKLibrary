.class public final Lcom/tramini/plugin/a/f/e;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Z
    .registers 4

    .prologue
    .line 18
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 19
    if-eqz v0, :cond_45

    .line 20
    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 21
    check-cast v0, Ljava/net/NetworkInterface;

    .line 22
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_e

    .line 25
    const-string v2, "tun0"

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    const-string v2, "ppp0"

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3f} :catch_44

    move-result v0

    if-eqz v0, :cond_e

    .line 26
    :cond_42
    const/4 v0, 0x1

    .line 32
    :goto_43
    return v0

    :catch_44
    move-exception v0

    :cond_45
    const/4 v0, 0x0

    goto :goto_43
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 59
    :try_start_1
    invoke-static {p0}, Lcom/tramini/plugin/a/f/e;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {}, Lcom/tramini/plugin/a/f/e;->a()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_10

    move-result v1

    if-eqz v1, :cond_e

    .line 63
    :cond_d
    :goto_d
    return v0

    .line 59
    :cond_e
    const/4 v0, 0x0

    goto :goto_d

    .line 61
    :catch_10
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

.method private static b(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 40
    :try_start_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_27

    move v2, v0

    .line 43
    :goto_9
    if-eqz v2, :cond_2c

    .line 44
    const-string v2, "http.proxyHost"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    const-string v3, "http.proxyPort"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    if-eqz v3, :cond_29

    :goto_19
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 51
    :goto_1d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_35

    const/4 v2, -0x1

    if-eq v3, v2, :cond_35

    .line 54
    :goto_26
    return v0

    :cond_27
    move v2, v1

    .line 40
    goto :goto_9

    .line 46
    :cond_29
    const-string v3, "-1"

    goto :goto_19

    .line 48
    :cond_2c
    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-static {p0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_33} :catch_37

    move-result v3

    goto :goto_1d

    :cond_35
    move v0, v1

    .line 51
    goto :goto_26

    .line 54
    :catch_37
    move-exception v0

    move v0, v1

    goto :goto_26
.end method
