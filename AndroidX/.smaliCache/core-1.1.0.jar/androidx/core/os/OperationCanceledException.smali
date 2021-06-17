.class public Landroidx/core/os/OperationCanceledException;
.super Ljava/lang/RuntimeException;
.source "OperationCanceledException.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/core/os/OperationCanceledException;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .line 31
    if-eqz p1, :cond_4

    move-object v0, p1

    goto :goto_6

    :cond_4
    const-string v0, "The operation has been canceled."

    :goto_6
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method
