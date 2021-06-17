.class final Lcom/facebook/internal/FileLruCache$CopyingInputStream;
.super Ljava/io/InputStream;
.source "FileLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/FileLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CopyingInputStream"
.end annotation


# instance fields
.field final input:Ljava/io/InputStream;

.field final output:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;

    .line 515
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 516
    iput-object p1, p0, Lcom/facebook/internal/FileLruCache$CopyingInputStream;->input:Ljava/io/InputStream;

    .line 517
    iput-object p2, p0, Lcom/facebook/internal/FileLruCache$CopyingInputStream;->output:Ljava/io/OutputStream;

    .line 518
    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 522
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache$CopyingInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 535
    :try_start_0
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache$CopyingInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_c

    .line 537
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache$CopyingInputStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 538
    nop

    .line 539
    return-void

    .line 537
    :catchall_c
    move-exception v0

    iget-object v1, p0, Lcom/facebook/internal/FileLruCache$CopyingInputStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 538
    throw v0
.end method

.method public mark(I)V
    .registers 3
    .param p1, "readlimit"    # I

    .line 543
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public markSupported()Z
    .registers 2

    .line 548
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 562
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache$CopyingInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 563
    .local v0, "b":I
    if-ltz v0, :cond_d

    .line 564
    iget-object v1, p0, Lcom/facebook/internal/FileLruCache$CopyingInputStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 566
    :cond_d
    return v0
.end method

.method public read([B)I
    .registers 5
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 553
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache$CopyingInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 554
    .local v0, "count":I
    if-lez v0, :cond_e

    .line 555
    iget-object v1, p0, Lcom/facebook/internal/FileLruCache$CopyingInputStream;->output:Ljava/io/OutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 557
    :cond_e
    return v0
.end method

.method public read([BII)I
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 571
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache$CopyingInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 572
    .local v0, "count":I
    if-lez v0, :cond_d

    .line 573
    iget-object v1, p0, Lcom/facebook/internal/FileLruCache$CopyingInputStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 575
    :cond_d
    return v0
.end method

.method public declared-synchronized reset()V
    .registers 2

    monitor-enter p0

    .line 580
    :try_start_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    .line 580
    .end local p0    # "this":Lcom/facebook/internal/FileLruCache$CopyingInputStream;
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 11
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 585
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 586
    .local v0, "buffer":[B
    const-wide/16 v1, 0x0

    .line 587
    .local v1, "total":J
    :goto_6
    cmp-long v3, v1, p1

    if-gez v3, :cond_1e

    .line 588
    const/4 v3, 0x0

    sub-long v4, p1, v1

    array-length v6, v0

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v5, v4

    invoke-virtual {p0, v0, v3, v5}, Lcom/facebook/internal/FileLruCache$CopyingInputStream;->read([BII)I

    move-result v3

    .line 589
    .local v3, "count":I
    if-gez v3, :cond_1b

    .line 590
    return-wide v1

    .line 592
    :cond_1b
    int-to-long v4, v3

    add-long/2addr v1, v4

    .line 593
    .end local v3    # "count":I
    goto :goto_6

    .line 594
    :cond_1e
    return-wide v1
.end method
