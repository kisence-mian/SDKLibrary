.class public Lcom/tencent/turingfd/sdk/ams/ad/double;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/turingfd/sdk/ams/ad/double$do;
    }
.end annotation


# instance fields
.field public Jb:Ljava/net/HttpURLConnection;

.field public Kb:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/double;->Jb:Ljava/net/HttpURLConnection;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/double;->Kb:Z

    return-void
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_7
    if-eqz v0, :cond_12

    const-string v0, "http.proxyHost"

    .line 2
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    :goto_f
    return-object v0

    .line 1
    :cond_10
    const/4 v0, 0x0

    goto :goto_7

    .line 3
    :cond_12
    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method public static k(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_7
    if-eqz v0, :cond_19

    const-string v0, "http.proxyPort"

    .line 2
    :try_start_b
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_12} :catch_16

    move-result v0

    .line 3
    :goto_13
    return v0

    .line 1
    :cond_14
    const/4 v0, 0x0

    goto :goto_7

    .line 2
    :catch_16
    move-exception v0

    const/4 v0, -0x1

    goto :goto_13

    .line 3
    :cond_19
    invoke-static {p0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v0

    goto :goto_13
.end method
