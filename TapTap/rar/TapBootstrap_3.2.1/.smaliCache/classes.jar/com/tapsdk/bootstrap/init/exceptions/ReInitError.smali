.class public Lcom/tapsdk/bootstrap/init/exceptions/ReInitError;
.super Lcom/tapsdk/bootstrap/exceptions/TapError;
.source "ReInitError.java"


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 9
    const v0, 0x9001

    const-string v1, "you shouldn\'t init twice"

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/tapsdk/bootstrap/exceptions/TapError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void
.end method
