.class public Lcom/tapsdk/bootstrap/utils/BootstrapLogger;
.super Ljava/lang/Object;
.source "BootstrapLogger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Bootstrap"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 1
    .param p0, "message"    # Ljava/lang/String;

    .line 17
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .line 20
    const-string v0, "Bootstrap"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .line 12
    const-string v0, "Bootstrap"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .line 24
    const-string v0, "Bootstrap"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return-void
.end method
