.class public Lcom/tapsdk/bootstrap/init/exceptions/UnInitializedError;
.super Lcom/tapsdk/bootstrap/exceptions/TapError;
.source "UnInitializedError.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 8
    const v0, 0x13881

    const-string v1, "TapSdk not initialized yet"

    invoke-direct {p0, v0, v1, v1}, Lcom/tapsdk/bootstrap/exceptions/TapError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void
.end method
