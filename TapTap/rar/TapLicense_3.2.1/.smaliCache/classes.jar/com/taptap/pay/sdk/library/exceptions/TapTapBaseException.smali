.class public Lcom/taptap/pay/sdk/library/exceptions/TapTapBaseException;
.super Ljava/lang/Exception;
.source "TapTapBaseException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 7
    return-void
.end method
