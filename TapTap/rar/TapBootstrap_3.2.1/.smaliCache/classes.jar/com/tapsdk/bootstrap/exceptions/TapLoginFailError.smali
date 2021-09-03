.class public Lcom/tapsdk/bootstrap/exceptions/TapLoginFailError;
.super Lcom/tapsdk/bootstrap/exceptions/TapError;
.source "TapLoginFailError.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "detailMesage"    # Ljava/lang/String;

    .line 8
    const v0, 0x9005

    const-string v1, "login fail"

    invoke-direct {p0, v0, v1, p1}, Lcom/tapsdk/bootstrap/exceptions/TapError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    return-void
.end method
