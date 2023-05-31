.class public Lcom/tonyodev/fetch/exception/DownloadInterruptedException;
.super Ljava/lang/RuntimeException;
.source "DownloadInterruptedException.java"


# instance fields
.field private errorCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 11
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 12
    iput p2, p0, Lcom/tonyodev/fetch/exception/DownloadInterruptedException;->errorCode:I

    .line 13
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    .prologue
    .line 16
    iget v0, p0, Lcom/tonyodev/fetch/exception/DownloadInterruptedException;->errorCode:I

    return v0
.end method
