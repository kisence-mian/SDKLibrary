.class public final Lcom/alphab/a/b;
.super Ljava/lang/Object;
.source "NetUtils.java"


# direct methods
.method public static a()Z
    .registers 4

    .prologue
    .line 67
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_4c

    .line 69
    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 70
    instance-of v2, v0, Ljava/net/NetworkInterface;

    if-eqz v2, :cond_e

    .line 71
    check-cast v0, Ljava/net/NetworkInterface;

    .line 72
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_e

    .line 75
    const-string v2, "tun0"

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    const-string v2, "ppp0"

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_43} :catch_48

    move-result v0

    if-eqz v0, :cond_e

    .line 76
    :cond_46
    const/4 v0, 0x1

    .line 84
    :goto_47
    return v0

    .line 82
    :catch_48
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    :cond_4c
    const/4 v0, 0x0

    goto :goto_47
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 36
    .line 37
    if-nez p0, :cond_5

    .line 58
    :goto_4
    return v1

    .line 41
    :cond_5
    :try_start_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_5b

    move v2, v0

    .line 44
    :goto_c
    if-eqz v2, :cond_60

    .line 45
    const-string v2, "http.proxyHost"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 46
    const-string v3, "http.proxyPort"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 47
    if-eqz v3, :cond_5d

    :goto_1c
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 52
    :goto_20
    const-string v4, "address = "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "~"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v4, "port = "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "~"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_69

    const/4 v2, -0x1

    if-eq v3, v2, :cond_69

    :goto_59
    move v1, v0

    .line 58
    goto :goto_4

    :cond_5b
    move v2, v1

    .line 41
    goto :goto_c

    .line 47
    :cond_5d
    const-string v3, "-1"

    goto :goto_1c

    .line 49
    :cond_60
    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-static {p0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_67} :catch_6b

    move-result v3

    goto :goto_20

    :cond_69
    move v0, v1

    .line 54
    goto :goto_59

    .line 56
    :catch_6b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v1

    goto :goto_59
.end method
