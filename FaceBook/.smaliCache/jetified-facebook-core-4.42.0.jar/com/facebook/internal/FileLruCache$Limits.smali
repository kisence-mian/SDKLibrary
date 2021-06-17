.class public final Lcom/facebook/internal/FileLruCache$Limits;
.super Ljava/lang/Object;
.source "FileLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/FileLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Limits"
.end annotation


# instance fields
.field private byteCount:I

.field private fileCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 610
    const/16 v0, 0x400

    iput v0, p0, Lcom/facebook/internal/FileLruCache$Limits;->fileCount:I

    .line 611
    const/high16 v0, 0x100000

    iput v0, p0, Lcom/facebook/internal/FileLruCache$Limits;->byteCount:I

    .line 612
    return-void
.end method


# virtual methods
.method getByteCount()I
    .registers 2

    .line 615
    iget v0, p0, Lcom/facebook/internal/FileLruCache$Limits;->byteCount:I

    return v0
.end method

.method getFileCount()I
    .registers 2

    .line 619
    iget v0, p0, Lcom/facebook/internal/FileLruCache$Limits;->fileCount:I

    return v0
.end method

.method setByteCount(I)V
    .registers 4
    .param p1, "n"    # I

    .line 623
    if-ltz p1, :cond_5

    .line 626
    iput p1, p0, Lcom/facebook/internal/FileLruCache$Limits;->byteCount:I

    .line 627
    return-void

    .line 624
    :cond_5
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Cache byte-count limit must be >= 0"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setFileCount(I)V
    .registers 4
    .param p1, "n"    # I

    .line 630
    if-ltz p1, :cond_5

    .line 633
    iput p1, p0, Lcom/facebook/internal/FileLruCache$Limits;->fileCount:I

    .line 634
    return-void

    .line 631
    :cond_5
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Cache file count limit must be >= 0"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
