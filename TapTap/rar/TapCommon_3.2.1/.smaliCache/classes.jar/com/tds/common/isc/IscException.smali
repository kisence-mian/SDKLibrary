.class public Lcom/tds/common/isc/IscException;
.super Ljava/lang/Exception;
.source "IscException.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 7
    return-void
.end method

.method constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 10
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 11
    return-void
.end method
