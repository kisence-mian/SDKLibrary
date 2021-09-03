.class public Lcom/tapsdk/bootstrap/exceptions/InvalidAccountError;
.super Lcom/tapsdk/bootstrap/exceptions/TapError;
.source "InvalidAccountError.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "detailMessage"    # Ljava/lang/String;

    .line 8
    const v0, 0x13884

    const-string v1, "invalid account"

    invoke-direct {p0, v0, v1, p1}, Lcom/tapsdk/bootstrap/exceptions/TapError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    return-void
.end method
