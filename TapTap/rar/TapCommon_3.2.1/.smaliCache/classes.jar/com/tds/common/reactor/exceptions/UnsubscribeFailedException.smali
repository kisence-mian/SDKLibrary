.class public final Lcom/tds/common/reactor/exceptions/UnsubscribeFailedException;
.super Ljava/lang/RuntimeException;
.source "UnsubscribeFailedException.java"


# static fields
.field private static final serialVersionUID:J = 0x3fc38e1f743aa0eeL


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 27
    if-eqz p2, :cond_4

    move-object v0, p2

    goto :goto_9

    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    :goto_9
    invoke-direct {p0, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 14
    if-eqz p1, :cond_4

    move-object v0, p1

    goto :goto_9

    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    :goto_9
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 15
    return-void
.end method
