.class public Lcom/tapsdk/moment/NetworkException;
.super Ljava/lang/Exception;
.source "NetworkException.java"


# instance fields
.field public code:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 17
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 18
    iput p1, p0, Lcom/tapsdk/moment/NetworkException;->code:I

    .line 19
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Throwable;

    .line 26
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    iput p1, p0, Lcom/tapsdk/moment/NetworkException;->code:I

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    return-void
.end method
