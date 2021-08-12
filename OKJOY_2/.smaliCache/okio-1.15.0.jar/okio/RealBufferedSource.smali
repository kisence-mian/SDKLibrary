.class final Lokio/RealBufferedSource;
.super Ljava/lang/Object;
.source "RealBufferedSource.java"

# interfaces
.implements Lokio/BufferedSource;


# instance fields
.field public final buffer:Lokio/Buffer;

.field closed:Z

.field public final source:Lokio/Source;


# direct methods
.method constructor <init>(Lokio/Source;)V
    .registers 4
    .param p1, "source"    # Lokio/Source;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    .line 33
    if-eqz p1, :cond_f

    .line 34
    iput-object p1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 35
    return-void

    .line 33
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public buffer()Lokio/Buffer;
    .registers 2

    .line 38
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    return-object v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 466
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    if-eqz v0, :cond_5

    return-void

    .line 467
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    .line 468
    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-interface {v0}, Lokio/Source;->close()V

    .line 469
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    .line 470
    return-void
.end method

.method public exhausted()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_20

    .line 57
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    iget-object v1, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0

    .line 56
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public indexOf(B)J
    .registers 8
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lokio/RealBufferedSource;->indexOf(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJ)J
    .registers 10
    .param p1, "b"    # B
    .param p2, "fromIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lokio/RealBufferedSource;->indexOf(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJJ)J
    .registers 19
    .param p1, "b"    # B
    .param p2, "fromIndex"    # J
    .param p4, "toIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    move-object v0, p0

    iget-boolean v1, v0, Lokio/RealBufferedSource;->closed:Z

    if-nez v1, :cond_60

    .line 342
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-ltz v1, :cond_43

    cmp-long v1, p4, p2

    if-ltz v1, :cond_43

    move-wide v7, p2

    .line 347
    .end local p2    # "fromIndex":J
    .local v7, "fromIndex":J
    :goto_10
    cmp-long v1, v7, p4

    const-wide/16 v9, -0x1

    if-gez v1, :cond_42

    .line 348
    iget-object v1, v0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    move v2, p1

    move-wide v3, v7

    move-wide/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v1

    .line 349
    .local v1, "result":J
    cmp-long v3, v1, v9

    if-eqz v3, :cond_25

    return-wide v1

    .line 353
    :cond_25
    iget-object v3, v0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v3, v3, Lokio/Buffer;->size:J

    .line 354
    .local v3, "lastBufferSize":J
    cmp-long v5, v3, p4

    if-gez v5, :cond_41

    iget-object v5, v0, Lokio/RealBufferedSource;->source:Lokio/Source;

    iget-object v6, v0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v11, 0x2000

    invoke-interface {v5, v6, v11, v12}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v5

    cmp-long v5, v5, v9

    if-nez v5, :cond_3c

    goto :goto_41

    .line 357
    :cond_3c
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 358
    .end local v1    # "result":J
    .end local v3    # "lastBufferSize":J
    goto :goto_10

    .line 354
    .restart local v1    # "result":J
    .restart local v3    # "lastBufferSize":J
    :cond_41
    :goto_41
    return-wide v9

    .line 359
    .end local v1    # "result":J
    .end local v3    # "lastBufferSize":J
    :cond_42
    return-wide v9

    .line 343
    .end local v7    # "fromIndex":J
    .restart local p2    # "fromIndex":J
    :cond_43
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 344
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "fromIndex=%s toIndex=%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 341
    :cond_60
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public indexOf(Lokio/ByteString;)J
    .registers 4
    .param p1, "bytes"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lokio/RealBufferedSource;->indexOf(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(Lokio/ByteString;J)J
    .registers 14
    .param p1, "bytes"    # Lokio/ByteString;
    .param p2, "fromIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 367
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_33

    .line 370
    :goto_4
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->indexOf(Lokio/ByteString;J)J

    move-result-wide v0

    .line 371
    .local v0, "result":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_11

    return-wide v0

    .line 373
    :cond_11
    iget-object v4, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v4, v4, Lokio/Buffer;->size:J

    .line 374
    .local v4, "lastBufferSize":J
    iget-object v6, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    iget-object v7, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v8, 0x2000

    invoke-interface {v6, v7, v8, v9}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-nez v6, :cond_24

    return-wide v2

    .line 377
    :cond_24
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    int-to-long v2, v2

    sub-long v2, v4, v2

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    .line 378
    .end local v0    # "result":J
    .end local v4    # "lastBufferSize":J
    goto :goto_4

    .line 367
    :cond_33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public indexOfElement(Lokio/ByteString;)J
    .registers 4
    .param p1, "targetBytes"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lokio/RealBufferedSource;->indexOfElement(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOfElement(Lokio/ByteString;J)J
    .registers 14
    .param p1, "targetBytes"    # Lokio/ByteString;
    .param p2, "fromIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_29

    .line 389
    :goto_4
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;J)J

    move-result-wide v0

    .line 390
    .local v0, "result":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_11

    return-wide v0

    .line 392
    :cond_11
    iget-object v4, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v4, v4, Lokio/Buffer;->size:J

    .line 393
    .local v4, "lastBufferSize":J
    iget-object v6, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    iget-object v7, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v8, 0x2000

    invoke-interface {v6, v7, v8, v9}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-nez v6, :cond_24

    return-wide v2

    .line 396
    :cond_24
    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    .line 397
    .end local v0    # "result":J
    .end local v4    # "lastBufferSize":J
    goto :goto_4

    .line 386
    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public inputStream()Ljava/io/InputStream;
    .registers 2

    .line 424
    new-instance v0, Lokio/RealBufferedSource$1;

    invoke-direct {v0, p0}, Lokio/RealBufferedSource$1;-><init>(Lokio/RealBufferedSource;)V

    return-object v0
.end method

.method public isOpen()Z
    .registers 2

    .line 462
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public rangeEquals(JLokio/ByteString;)Z
    .registers 10
    .param p1, "offset"    # J
    .param p3, "bytes"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lokio/RealBufferedSource;->rangeEquals(JLokio/ByteString;II)Z

    move-result v0

    return v0
.end method

.method public rangeEquals(JLokio/ByteString;II)Z
    .registers 12
    .param p1, "offset"    # J
    .param p3, "bytes"    # Lokio/ByteString;
    .param p4, "bytesOffset"    # I
    .param p5, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_3b

    .line 409
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_3a

    if-ltz p4, :cond_3a

    if-ltz p5, :cond_3a

    .line 412
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v0

    sub-int/2addr v0, p4

    if-ge v0, p5, :cond_17

    goto :goto_3a

    .line 415
    :cond_17
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    if-ge v0, p5, :cond_38

    .line 416
    int-to-long v2, v0

    add-long/2addr v2, p1

    .line 417
    .local v2, "bufferOffset":J
    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Lokio/RealBufferedSource;->request(J)Z

    move-result v4

    if-nez v4, :cond_26

    return v1

    .line 418
    :cond_26
    iget-object v4, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v4, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v4

    add-int v5, p4, v0

    invoke-virtual {p3, v5}, Lokio/ByteString;->getByte(I)B

    move-result v5

    if-eq v4, v5, :cond_35

    return v1

    .line 415
    .end local v2    # "bufferOffset":J
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 420
    .end local v0    # "i":I
    :cond_38
    const/4 v0, 0x1

    return v0

    .line 413
    :cond_3a
    :goto_3a
    return v1

    .line 407
    :cond_3b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 6
    .param p1, "sink"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v0, v0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    .line 150
    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    iget-object v1, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    .line 151
    .local v0, "read":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1c

    const/4 v2, -0x1

    return v2

    .line 154
    .end local v0    # "read":J
    :cond_1c
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public read([B)I
    .registers 4
    .param p1, "sink"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lokio/RealBufferedSource;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 11
    .param p1, "sink"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 139
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v0, v0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_23

    .line 140
    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    iget-object v1, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    .line 141
    .local v0, "read":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_23

    const/4 v2, -0x1

    return v2

    .line 144
    .end local v0    # "read":J
    :cond_23
    int-to-long v0, p3

    iget-object v2, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v2, v2, Lokio/Buffer;->size:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 145
    .local v0, "toRead":I
    iget-object v1, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v1, p1, p2, v0}, Lokio/Buffer;->read([BII)I

    move-result v1

    return v1
.end method

.method public read(Lokio/Buffer;J)J
    .registers 9
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    if-eqz p1, :cond_55

    .line 43
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3c

    .line 44
    iget-boolean v2, p0, Lokio/RealBufferedSource;->closed:Z

    if-nez v2, :cond_34

    .line 46
    iget-object v2, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v2, v2, Lokio/Buffer;->size:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_25

    .line 47
    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    iget-object v1, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    .line 48
    .local v0, "read":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_25

    return-wide v2

    .line 51
    .end local v0    # "read":J
    :cond_25
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v0, v0, Lokio/Buffer;->size:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 52
    .local v0, "toRead":J
    iget-object v2, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v2, p1, v0, v1}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide v2

    return-wide v2

    .line 44
    .end local v0    # "toRead":J
    :cond_34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readAll(Lokio/Sink;)J
    .registers 9
    .param p1, "sink"    # Lokio/Sink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    if-eqz p1, :cond_42

    .line 171
    const-wide/16 v0, 0x0

    .line 172
    .local v0, "totalBytesWritten":J
    :goto_4
    iget-object v2, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    iget-object v3, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v4, 0x2000

    invoke-interface {v2, v3, v4, v5}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_27

    .line 173
    iget-object v2, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->completeSegmentByteCount()J

    move-result-wide v5

    .line 174
    .local v5, "emitByteCount":J
    cmp-long v2, v5, v3

    if-lez v2, :cond_26

    .line 175
    add-long/2addr v0, v5

    .line 176
    iget-object v2, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-interface {p1, v2, v5, v6}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 178
    .end local v5    # "emitByteCount":J
    :cond_26
    goto :goto_4

    .line 179
    :cond_27
    iget-object v2, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-lez v2, :cond_41

    .line 180
    iget-object v2, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 181
    iget-object v2, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v3

    invoke-interface {p1, v2, v3, v4}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 183
    :cond_41
    return-wide v0

    .line 169
    .end local v0    # "totalBytesWritten":J
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readByte()B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 75
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v0

    return v0
.end method

.method public readByteArray()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 108
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public readByteArray(J)[B
    .registers 4
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->require(J)V

    .line 113
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v0

    return-object v0
.end method

.method public readByteString()Lokio/ByteString;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 80
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public readByteString(J)Lokio/ByteString;
    .registers 4
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->require(J)V

    .line 85
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0, p1, p2}, Lokio/Buffer;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public readDecimalLong()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 287
    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_6
    add-int/lit8 v1, v0, 0x1

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lokio/RealBufferedSource;->request(J)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 288
    iget-object v1, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v1

    .line 289
    .local v1, "b":B
    const/16 v2, 0x30

    if-lt v1, v2, :cond_1e

    const/16 v2, 0x39

    if-le v1, v2, :cond_25

    :cond_1e
    if-nez v0, :cond_28

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_25

    goto :goto_28

    .line 287
    .end local v1    # "b":B
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 291
    .restart local v1    # "b":B
    :cond_28
    :goto_28
    if-eqz v0, :cond_2b

    goto :goto_41

    .line 292
    :cond_2b
    new-instance v2, Ljava/lang/NumberFormatException;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 293
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    .line 292
    const-string v4, "Expected leading [0-9] or \'-\' character but was %#x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 299
    .end local v0    # "pos":I
    .end local v1    # "b":B
    :cond_41
    :goto_41
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readDecimalLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFully(Lokio/Buffer;J)V
    .registers 6
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lokio/RealBufferedSource;->require(J)V
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_3} :catch_a

    .line 164
    nop

    .line 165
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->readFully(Lokio/Buffer;J)V

    .line 166
    return-void

    .line 160
    :catch_a
    move-exception v0

    .line 162
    .local v0, "e":Ljava/io/EOFException;
    iget-object v1, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {p1, v1}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 163
    throw v0
.end method

.method public readFully([B)V
    .registers 8
    .param p1, "sink"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    :try_start_0
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_c

    .line 132
    nop

    .line 133
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->readFully([B)V

    .line 134
    return-void

    .line 123
    :catch_c
    move-exception v0

    .line 125
    .local v0, "e":Ljava/io/EOFException;
    const/4 v1, 0x0

    .line 126
    .local v1, "offset":I
    :goto_e
    iget-object v2, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v2, v2, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2c

    .line 127
    iget-object v2, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v3, v2, Lokio/Buffer;->size:J

    long-to-int v3, v3

    invoke-virtual {v2, p1, v1, v3}, Lokio/Buffer;->read([BII)I

    move-result v2

    .line 128
    .local v2, "read":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_26

    .line 129
    add-int/2addr v1, v2

    .line 130
    .end local v2    # "read":I
    goto :goto_e

    .line 128
    .restart local v2    # "read":I
    :cond_26
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 131
    .end local v2    # "read":I
    :cond_2c
    throw v0
.end method

.method public readHexadecimalUnsignedLong()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 305
    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_6
    add-int/lit8 v1, v0, 0x1

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lokio/RealBufferedSource;->request(J)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 306
    iget-object v1, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v1

    .line 307
    .local v1, "b":B
    const/16 v2, 0x30

    if-lt v1, v2, :cond_1e

    const/16 v2, 0x39

    if-le v1, v2, :cond_2f

    :cond_1e
    const/16 v2, 0x61

    if-lt v1, v2, :cond_26

    const/16 v2, 0x66

    if-le v1, v2, :cond_2f

    :cond_26
    const/16 v2, 0x41

    if-lt v1, v2, :cond_32

    const/16 v2, 0x46

    if-le v1, v2, :cond_2f

    goto :goto_32

    .line 305
    .end local v1    # "b":B
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 309
    .restart local v1    # "b":B
    :cond_32
    :goto_32
    if-eqz v0, :cond_35

    goto :goto_4b

    .line 310
    :cond_35
    new-instance v2, Ljava/lang/NumberFormatException;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 311
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    .line 310
    const-string v4, "Expected leading [0-9a-fA-F] character but was %#x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 317
    .end local v0    # "pos":I
    .end local v1    # "b":B
    :cond_4b
    :goto_4b
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readHexadecimalUnsignedLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readInt()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 266
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readInt()I

    move-result v0

    return v0
.end method

.method public readIntLe()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 271
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readIntLe()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 276
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readLongLe()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 281
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readLongLe()J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 256
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readShort()S

    move-result v0

    return v0
.end method

.method public readShortLe()S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 261
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readShortLe()S

    move-result v0

    return v0
.end method

.method public readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 6
    .param p1, "byteCount"    # J
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->require(J)V

    .line 205
    if-eqz p3, :cond_c

    .line 206
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 205
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    if-eqz p1, :cond_10

    .line 199
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 200
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 197
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readUtf8()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 188
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8(J)Ljava/lang/String;
    .registers 4
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->require(J)V

    .line 193
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0, p1, p2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8CodePoint()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 242
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->getByte(J)B

    move-result v0

    .line 243
    .local v0, "b0":B
    and-int/lit16 v1, v0, 0xe0

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_19

    .line 244
    const-wide/16 v1, 0x2

    invoke-virtual {p0, v1, v2}, Lokio/RealBufferedSource;->require(J)V

    goto :goto_30

    .line 245
    :cond_19
    and-int/lit16 v1, v0, 0xf0

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_25

    .line 246
    const-wide/16 v1, 0x3

    invoke-virtual {p0, v1, v2}, Lokio/RealBufferedSource;->require(J)V

    goto :goto_30

    .line 247
    :cond_25
    and-int/lit16 v1, v0, 0xf8

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_30

    .line 248
    const-wide/16 v1, 0x4

    invoke-virtual {p0, v1, v2}, Lokio/RealBufferedSource;->require(J)V

    .line 251
    :cond_30
    :goto_30
    iget-object v1, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readUtf8CodePoint()I

    move-result v1

    return v1
.end method

.method public readUtf8Line()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 210
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lokio/RealBufferedSource;->indexOf(B)J

    move-result-wide v0

    .line 212
    .local v0, "newline":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_21

    .line 213
    iget-object v2, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v2, v2, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v2, v2, Lokio/Buffer;->size:J

    invoke-virtual {p0, v2, v3}, Lokio/RealBufferedSource;->readUtf8(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    return-object v2

    .line 216
    :cond_21
    iget-object v2, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8LineStrict(J)Ljava/lang/String;
    .registers 24
    .param p1, "limit"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    move-object/from16 v6, p0

    move-wide/from16 v7, p1

    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-ltz v0, :cond_b1

    .line 225
    const-wide v9, 0x7fffffffffffffffL

    cmp-long v0, v7, v9

    const-wide/16 v11, 0x1

    if-nez v0, :cond_17

    move-wide v0, v9

    goto :goto_19

    :cond_17
    add-long v0, v7, v11

    :goto_19
    move-wide v13, v0

    .line 226
    .local v13, "scanLength":J
    const/16 v1, 0xa

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move-wide v4, v13

    invoke-virtual/range {v0 .. v5}, Lokio/RealBufferedSource;->indexOf(BJJ)J

    move-result-wide v0

    .line 227
    .local v0, "newline":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_32

    iget-object v2, v6, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 228
    :cond_32
    cmp-long v2, v13, v9

    if-gez v2, :cond_60

    .line 229
    invoke-virtual {v6, v13, v14}, Lokio/RealBufferedSource;->request(J)Z

    move-result v2

    if-eqz v2, :cond_60

    iget-object v2, v6, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    sub-long v3, v13, v11

    invoke-virtual {v2, v3, v4}, Lokio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_60

    add-long/2addr v11, v13

    .line 230
    invoke-virtual {v6, v11, v12}, Lokio/RealBufferedSource;->request(J)Z

    move-result v2

    if-eqz v2, :cond_60

    iget-object v2, v6, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v2, v13, v14}, Lokio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_60

    .line 231
    iget-object v2, v6, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v2, v13, v14}, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 233
    :cond_60
    new-instance v16, Lokio/Buffer;

    invoke-direct/range {v16 .. v16}, Lokio/Buffer;-><init>()V

    .line 234
    .local v16, "data":Lokio/Buffer;
    iget-object v15, v6, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v17, 0x0

    const-wide/16 v2, 0x20

    invoke-virtual {v15}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v19

    invoke-virtual/range {v15 .. v20}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 235
    new-instance v2, Ljava/io/EOFException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\n not found: limit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v6, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " content="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 236
    invoke-virtual/range {v16 .. v16}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2026

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 224
    .end local v0    # "newline":J
    .end local v13    # "scanLength":J
    .end local v16    # "data":Lokio/Buffer;
    :cond_b1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public request(J)Z
    .registers 7
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2e

    .line 66
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_26

    .line 67
    :cond_a
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v0, v0, Lokio/Buffer;->size:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_24

    .line 68
    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    iget-object v1, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 70
    :cond_24
    const/4 v0, 0x1

    return v0

    .line 66
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public require(J)V
    .registers 4
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->request(J)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 62
    return-void

    .line 61
    :cond_7
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public select(Lokio/Options;)I
    .registers 8
    .param p1, "options"    # Lokio/Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_33

    .line 92
    :goto_4
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lokio/Buffer;->selectPrefix(Lokio/Options;Z)I

    move-result v0

    .line 93
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    return v1

    .line 94
    :cond_f
    const/4 v2, -0x2

    if-ne v0, v2, :cond_24

    .line 96
    iget-object v2, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    iget-object v3, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v4, 0x2000

    invoke-interface {v2, v3, v4, v5}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_23

    return v1

    .line 103
    .end local v0    # "index":I
    :cond_23
    goto :goto_4

    .line 99
    .restart local v0    # "index":I
    :cond_24
    iget-object v1, p1, Lokio/Options;->byteStrings:[Lokio/ByteString;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    .line 100
    .local v1, "selectedSize":I
    iget-object v2, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lokio/Buffer;->skip(J)V

    .line 101
    return v0

    .line 89
    .end local v0    # "index":I
    .end local v1    # "selectedSize":I
    :cond_33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)V
    .registers 7
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_3b

    .line 322
    :goto_4
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_3a

    .line 323
    iget-object v2, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v2, v2, Lokio/Buffer;->size:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    iget-object v1, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_23

    goto :goto_29

    .line 324
    :cond_23
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 326
    :cond_29
    :goto_29
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 327
    .local v0, "toSkip":J
    iget-object v2, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->skip(J)V

    .line 328
    sub-long/2addr p1, v0

    .line 329
    .end local v0    # "toSkip":J
    goto :goto_4

    .line 330
    :cond_3a
    return-void

    .line 321
    :cond_3b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .line 473
    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-interface {v0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
