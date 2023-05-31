.class public Lcom/taptap/sdk/exceptions/ServerError;
.super Ljava/lang/Exception;
.source "ServerError.java"


# instance fields
.field public serverCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    iput p2, p0, Lcom/taptap/sdk/exceptions/ServerError;->serverCode:I

    return-void
.end method
