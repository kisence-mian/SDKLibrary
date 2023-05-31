.class public final Lcom/tonyodev/fetch/exception/EnqueueException;
.super Ljava/lang/RuntimeException;
.source "EnqueueException.java"


# instance fields
.field private errorCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 31
    iput p2, p0, Lcom/tonyodev/fetch/exception/EnqueueException;->errorCode:I

    .line 32
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Lcom/tonyodev/fetch/exception/EnqueueException;->errorCode:I

    return v0
.end method
