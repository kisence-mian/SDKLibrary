.class public Lcom/tapsdk/bootstrap/exceptions/UndefinedError;
.super Lcom/tapsdk/bootstrap/exceptions/TapError;
.source "UndefinedError.java"


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 8
    const v0, 0x13880

    const-string v1, "Not initialized yet"

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/tapsdk/bootstrap/exceptions/TapError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    return-void
.end method
