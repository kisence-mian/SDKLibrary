.class final Lokhttp3/internal/framed/Http2$Reader;
.super Ljava/lang/Object;
.source "Http2.java"

# interfaces
.implements Lokhttp3/internal/framed/FrameReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/Http2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field private final client:Z

.field private final continuation:Lokhttp3/internal/framed/Http2$ContinuationSource;

.field final hpackReader:Lokhttp3/internal/framed/Hpack$Reader;

.field private final source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lokio/BufferedSource;IZ)V
    .registers 6
    .param p1, "source"    # Lokio/BufferedSource;
    .param p2, "headerTableSize"    # I
    .param p3, "client"    # Z

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lokhttp3/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    .line 95
    iput-boolean p3, p0, Lokhttp3/internal/framed/Http2$Reader;->client:Z

    .line 96
    new-instance v0, Lokhttp3/internal/framed/Http2$ContinuationSource;

    invoke-direct {v0, p1}, Lokhttp3/internal/framed/Http2$ContinuationSource;-><init>(Lokio/BufferedSource;)V

    iput-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->continuation:Lokhttp3/internal/framed/Http2$ContinuationSource;

    .line 97
    new-instance v1, Lokhttp3/internal/framed/Hpack$Reader;

    invoke-direct {v1, p2, v0}, Lokhttp3/internal/framed/Hpack$Reader;-><init>(ILokio/Source;)V

    iput-object v1, p0, Lokhttp3/internal/framed/Http2$Reader;->hpackReader:Lokhttp3/internal/framed/Hpack$Reader;

    .line 98
    return-void
.end method

.method private readData(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V
    .registers 11
    .param p1, "handler"    # Lokhttp3/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 218
    .local v0, "inFinished":Z
    :goto_9
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 219
    .local v1, "gzipped":Z
    :goto_f
    if-nez v1, :cond_2e

    .line 223
    and-int/lit8 v3, p3, 0x8

    if-eqz v3, :cond_1e

    iget-object v2, p0, Lokhttp3/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    .line 224
    .local v2, "padding":S
    :cond_1e
    # invokes: Lokhttp3/internal/framed/Http2;->lengthWithoutPadding(IBS)I
    invoke-static {p2, p3, v2}, Lokhttp3/internal/framed/Http2;->access$400(IBS)I

    move-result p2

    .line 226
    iget-object v3, p0, Lokhttp3/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {p1, v0, p4, v3, p2}, Lokhttp3/internal/framed/FrameReader$Handler;->data(ZILokio/BufferedSource;I)V

    .line 227
    iget-object v3, p0, Lokhttp3/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    int-to-long v4, v2

    invoke-interface {v3, v4, v5}, Lokio/BufferedSource;->skip(J)V

    .line 228
    return-void

    .line 220
    .end local v2    # "padding":S
    :cond_2e
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    # invokes: Lokhttp3/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v3, v2}, Lokhttp3/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method private readGoAway(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V
    .registers 13
    .param p1, "handler"    # Lokhttp3/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-lt p2, v1, :cond_43

    .line 330
    if-nez p4, :cond_3a

    .line 331
    iget-object v1, p0, Lokhttp3/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    .line 332
    .local v1, "lastStreamId":I
    iget-object v3, p0, Lokhttp3/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    .line 333
    .local v3, "errorCodeInt":I
    add-int/lit8 v4, p2, -0x8

    .line 334
    .local v4, "opaqueDataLength":I
    invoke-static {v3}, Lokhttp3/internal/framed/ErrorCode;->fromHttp2(I)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v5

    .line 335
    .local v5, "errorCode":Lokhttp3/internal/framed/ErrorCode;
    if-eqz v5, :cond_2b

    .line 338
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 339
    .local v0, "debugData":Lokio/ByteString;
    if-lez v4, :cond_27

    .line 340
    iget-object v2, p0, Lokhttp3/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    int-to-long v6, v4

    invoke-interface {v2, v6, v7}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    .line 342
    :cond_27
    invoke-interface {p1, v1, v5, v0}, Lokhttp3/internal/framed/FrameReader$Handler;->goAway(ILokhttp3/internal/framed/ErrorCode;Lokio/ByteString;)V

    .line 343
    return-void

    .line 336
    .end local v0    # "debugData":Lokio/ByteString;
    :cond_2b
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v2

    const-string v2, "TYPE_GOAWAY unexpected error code: %d"

    # invokes: Lokhttp3/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v2, v0}, Lokhttp3/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 330
    .end local v1    # "lastStreamId":I
    .end local v3    # "errorCodeInt":I
    .end local v4    # "opaqueDataLength":I
    .end local v5    # "errorCode":Lokhttp3/internal/framed/ErrorCode;
    :cond_3a
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "TYPE_GOAWAY streamId != 0"

    # invokes: Lokhttp3/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v1, v0}, Lokhttp3/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 329
    :cond_43
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "TYPE_GOAWAY length < 8: %s"

    # invokes: Lokhttp3/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v1, v0}, Lokhttp3/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readHeaderBlock(ISBI)Ljava/util/List;
    .registers 6
    .param p1, "length"    # I
    .param p2, "padding"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->continuation:Lokhttp3/internal/framed/Http2$ContinuationSource;

    iput p1, v0, Lokhttp3/internal/framed/Http2$ContinuationSource;->left:I

    iput p1, v0, Lokhttp3/internal/framed/Http2$ContinuationSource;->length:I

    .line 204
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->continuation:Lokhttp3/internal/framed/Http2$ContinuationSource;

    iput-short p2, v0, Lokhttp3/internal/framed/Http2$ContinuationSource;->padding:S

    .line 205
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->continuation:Lokhttp3/internal/framed/Http2$ContinuationSource;

    iput-byte p3, v0, Lokhttp3/internal/framed/Http2$ContinuationSource;->flags:B

    .line 206
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->continuation:Lokhttp3/internal/framed/Http2$ContinuationSource;

    iput p4, v0, Lokhttp3/internal/framed/Http2$ContinuationSource;->streamId:I

    .line 210
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->hpackReader:Lokhttp3/internal/framed/Hpack$Reader;

    invoke-virtual {v0}, Lokhttp3/internal/framed/Hpack$Reader;->readHeaders()V

    .line 211
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->hpackReader:Lokhttp3/internal/framed/Hpack$Reader;

    invoke-virtual {v0}, Lokhttp3/internal/framed/Hpack$Reader;->getAndResetHeaderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private readHeaders(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V
    .registers 14
    .param p1, "handler"    # Lokhttp3/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    const/4 v0, 0x0

    if-eqz p4, :cond_34

    .line 185
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    const/4 v4, 0x1

    goto :goto_b

    :cond_a
    const/4 v4, 0x0

    .line 187
    .local v4, "endStream":Z
    :goto_b
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_18

    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 189
    .local v0, "padding":S
    :cond_18
    and-int/lit8 v1, p3, 0x20

    if-eqz v1, :cond_21

    .line 190
    invoke-direct {p0, p1, p4}, Lokhttp3/internal/framed/Http2$Reader;->readPriority(Lokhttp3/internal/framed/FrameReader$Handler;I)V

    .line 191
    add-int/lit8 p2, p2, -0x5

    .line 194
    :cond_21
    # invokes: Lokhttp3/internal/framed/Http2;->lengthWithoutPadding(IBS)I
    invoke-static {p2, p3, v0}, Lokhttp3/internal/framed/Http2;->access$400(IBS)I

    move-result p2

    .line 196
    invoke-direct {p0, p2, v0, p3, p4}, Lokhttp3/internal/framed/Http2$Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object v1

    .line 198
    .local v1, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    const/4 v3, 0x0

    const/4 v6, -0x1

    sget-object v8, Lokhttp3/internal/framed/HeadersMode;->HTTP_20_HEADERS:Lokhttp3/internal/framed/HeadersMode;

    move-object v2, p1

    move v5, p4

    move-object v7, v1

    invoke-interface/range {v2 .. v8}, Lokhttp3/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lokhttp3/internal/framed/HeadersMode;)V

    .line 199
    return-void

    .line 183
    .end local v0    # "padding":S
    .end local v1    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    .end local v4    # "endStream":Z
    :cond_34
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    # invokes: Lokhttp3/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v1, v0}, Lokhttp3/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readPing(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V
    .registers 10
    .param p1, "handler"    # Lokhttp3/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne p2, v2, :cond_26

    .line 320
    if-nez p4, :cond_1d

    .line 321
    iget-object v2, p0, Lokhttp3/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    .line 322
    .local v2, "payload1":I
    iget-object v3, p0, Lokhttp3/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    .line 323
    .local v3, "payload2":I
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_19

    const/4 v0, 0x1

    .line 324
    .local v0, "ack":Z
    :cond_19
    invoke-interface {p1, v0, v2, v3}, Lokhttp3/internal/framed/FrameReader$Handler;->ping(ZII)V

    .line 325
    return-void

    .line 320
    .end local v0    # "ack":Z
    .end local v2    # "payload1":I
    .end local v3    # "payload2":I
    :cond_1d
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TYPE_PING streamId != 0"

    # invokes: Lokhttp3/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v1, v0}, Lokhttp3/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 319
    :cond_26
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "TYPE_PING length != 8: %s"

    # invokes: Lokhttp3/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readPriority(Lokhttp3/internal/framed/FrameReader$Handler;I)V
    .registers 8
    .param p1, "handler"    # Lokhttp3/internal/framed/FrameReader$Handler;
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    .line 239
    .local v0, "w1":I
    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 240
    .local v1, "exclusive":Z
    :goto_f
    const v3, 0x7fffffff

    and-int/2addr v3, v0

    .line 241
    .local v3, "streamDependency":I
    iget-object v4, p0, Lokhttp3/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readByte()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v4, v2

    .line 242
    .local v4, "weight":I
    invoke-interface {p1, p2, v3, v4, v1}, Lokhttp3/internal/framed/FrameReader$Handler;->priority(IIIZ)V

    .line 243
    return-void
.end method

.method private readPriority(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V
    .registers 8
    .param p1, "handler"    # Lokhttp3/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    const/4 v0, 0x0

    const/4 v1, 0x5

    if-ne p2, v1, :cond_13

    .line 233
    if-eqz p4, :cond_a

    .line 234
    invoke-direct {p0, p1, p4}, Lokhttp3/internal/framed/Http2$Reader;->readPriority(Lokhttp3/internal/framed/FrameReader$Handler;I)V

    .line 235
    return-void

    .line 233
    :cond_a
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TYPE_PRIORITY streamId == 0"

    # invokes: Lokhttp3/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v1, v0}, Lokhttp3/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 232
    :cond_13
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "TYPE_PRIORITY length: %d != 5"

    # invokes: Lokhttp3/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readPushPromise(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V
    .registers 8
    .param p1, "handler"    # Lokhttp3/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    const/4 v0, 0x0

    if-eqz p4, :cond_28

    .line 309
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_10

    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 310
    .local v0, "padding":S
    :cond_10
    iget-object v1, p0, Lokhttp3/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    .line 311
    .local v1, "promisedStreamId":I
    add-int/lit8 p2, p2, -0x4

    .line 312
    # invokes: Lokhttp3/internal/framed/Http2;->lengthWithoutPadding(IBS)I
    invoke-static {p2, p3, v0}, Lokhttp3/internal/framed/Http2;->access$400(IBS)I

    move-result p2

    .line 313
    invoke-direct {p0, p2, v0, p3, p4}, Lokhttp3/internal/framed/Http2$Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object v2

    .line 314
    .local v2, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    invoke-interface {p1, p4, v1, v2}, Lokhttp3/internal/framed/FrameReader$Handler;->pushPromise(IILjava/util/List;)V

    .line 315
    return-void

    .line 307
    .end local v0    # "padding":S
    .end local v1    # "promisedStreamId":I
    .end local v2    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    :cond_28
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    # invokes: Lokhttp3/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v1, v0}, Lokhttp3/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readRstStream(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V
    .registers 10
    .param p1, "handler"    # Lokhttp3/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne p2, v2, :cond_2f

    .line 248
    if-eqz p4, :cond_26

    .line 249
    iget-object v2, p0, Lokhttp3/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    .line 250
    .local v2, "errorCodeInt":I
    invoke-static {v2}, Lokhttp3/internal/framed/ErrorCode;->fromHttp2(I)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v3

    .line 251
    .local v3, "errorCode":Lokhttp3/internal/framed/ErrorCode;
    if-eqz v3, :cond_17

    .line 254
    invoke-interface {p1, p4, v3}, Lokhttp3/internal/framed/FrameReader$Handler;->rstStream(ILokhttp3/internal/framed/ErrorCode;)V

    .line 255
    return-void

    .line 252
    :cond_17
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const-string v1, "TYPE_RST_STREAM unexpected error code: %d"

    # invokes: Lokhttp3/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v1, v0}, Lokhttp3/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 248
    .end local v2    # "errorCodeInt":I
    .end local v3    # "errorCode":Lokhttp3/internal/framed/ErrorCode;
    :cond_26
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "TYPE_RST_STREAM streamId == 0"

    # invokes: Lokhttp3/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v1, v0}, Lokhttp3/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 247
    :cond_2f
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "TYPE_RST_STREAM length: %d != 4"

    # invokes: Lokhttp3/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v1, v0}, Lokhttp3/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readSettings(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V
    .registers 12
    .param p1, "handler"    # Lokhttp3/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    const/4 v0, 0x0

    if-nez p4, :cond_84

    .line 260
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_16

    .line 261
    if-nez p2, :cond_d

    .line 262
    invoke-interface {p1}, Lokhttp3/internal/framed/FrameReader$Handler;->ackSettings()V

    .line 263
    return-void

    .line 261
    :cond_d
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FRAME_SIZE_ERROR ack frame should be empty!"

    # invokes: Lokhttp3/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v1, v0}, Lokhttp3/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 266
    :cond_16
    rem-int/lit8 v1, p2, 0x6

    const/4 v2, 0x1

    if-nez v1, :cond_75

    .line 267
    new-instance v1, Lokhttp3/internal/framed/Settings;

    invoke-direct {v1}, Lokhttp3/internal/framed/Settings;-><init>()V

    .line 268
    .local v1, "settings":Lokhttp3/internal/framed/Settings;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21
    if-ge v3, p2, :cond_71

    .line 269
    iget-object v4, p0, Lokhttp3/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readShort()S

    move-result v4

    .line 270
    .local v4, "id":S
    iget-object v5, p0, Lokhttp3/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readInt()I

    move-result v5

    .line 272
    .local v5, "value":I
    packed-switch v4, :pswitch_data_90

    goto :goto_6b

    .line 295
    :pswitch_33
    goto :goto_6b

    .line 290
    :pswitch_34
    const/16 v6, 0x4000

    if-lt v5, v6, :cond_3e

    const v6, 0xffffff

    if-gt v5, v6, :cond_3e

    goto :goto_6b

    .line 291
    :cond_3e
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v0

    const-string v0, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    # invokes: Lokhttp3/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v2}, Lokhttp3/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 284
    :pswitch_4d
    const/4 v4, 0x7

    .line 285
    if-ltz v5, :cond_51

    goto :goto_6b

    .line 286
    :cond_51
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    # invokes: Lokhttp3/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v2, v0}, Lokhttp3/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 281
    :pswitch_5a
    const/4 v4, 0x4

    .line 282
    goto :goto_6b

    .line 276
    :pswitch_5c
    if-eqz v5, :cond_6b

    if-ne v5, v2, :cond_61

    goto :goto_6b

    .line 277
    :cond_61
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    # invokes: Lokhttp3/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v2, v0}, Lokhttp3/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 274
    :pswitch_6a
    nop

    .line 299
    :cond_6b
    :goto_6b
    invoke-virtual {v1, v4, v0, v5}, Lokhttp3/internal/framed/Settings;->set(III)Lokhttp3/internal/framed/Settings;

    .line 268
    .end local v4    # "id":S
    .end local v5    # "value":I
    add-int/lit8 v3, v3, 0x6

    goto :goto_21

    .line 301
    .end local v3    # "i":I
    :cond_71
    invoke-interface {p1, v0, v1}, Lokhttp3/internal/framed/FrameReader$Handler;->settings(ZLokhttp3/internal/framed/Settings;)V

    .line 302
    return-void

    .line 266
    .end local v1    # "settings":Lokhttp3/internal/framed/Settings;
    :cond_75
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "TYPE_SETTINGS length %% 6 != 0: %s"

    # invokes: Lokhttp3/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 259
    :cond_84
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TYPE_SETTINGS streamId != 0"

    # invokes: Lokhttp3/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v1, v0}, Lokhttp3/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    goto :goto_8e

    :goto_8d
    throw v0

    :goto_8e
    goto :goto_8d

    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_5c
        :pswitch_5a
        :pswitch_4d
        :pswitch_34
        :pswitch_33
    .end packed-switch
.end method

.method private readWindowUpdate(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V
    .registers 12
    .param p1, "handler"    # Lokhttp3/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne p2, v2, :cond_29

    .line 348
    iget-object v2, p0, Lokhttp3/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v2, v4

    .line 349
    .local v2, "increment":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1a

    .line 350
    invoke-interface {p1, p4, v2, v3}, Lokhttp3/internal/framed/FrameReader$Handler;->windowUpdate(IJ)V

    .line 351
    return-void

    .line 349
    :cond_1a
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v0

    const-string v0, "windowSizeIncrement was 0"

    # invokes: Lokhttp3/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 347
    .end local v2    # "increment":J
    :cond_29
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "TYPE_WINDOW_UPDATE length !=4: %s"

    # invokes: Lokhttp3/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->close()V

    .line 355
    return-void
.end method

.method public nextFrame(Lokhttp3/internal/framed/FrameReader$Handler;)Z
    .registers 10
    .param p1, "handler"    # Lokhttp3/internal/framed/FrameReader$Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lokhttp3/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    const-wide/16 v2, 0x9

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->require(J)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_87

    .line 114
    nop

    .line 128
    iget-object v1, p0, Lokhttp3/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    # invokes: Lokhttp3/internal/framed/Http2;->readMedium(Lokio/BufferedSource;)I
    invoke-static {v1}, Lokhttp3/internal/framed/Http2;->access$300(Lokio/BufferedSource;)I

    move-result v1

    .line 129
    .local v1, "length":I
    const/4 v2, 0x1

    if-ltz v1, :cond_78

    const/16 v3, 0x4000

    if-gt v1, v3, :cond_78

    .line 132
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 133
    .local v0, "type":B
    iget-object v3, p0, Lokhttp3/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 134
    .local v3, "flags":B
    iget-object v4, p0, Lokhttp3/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v4

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    .line 135
    .local v4, "streamId":I
    # getter for: Lokhttp3/internal/framed/Http2;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lokhttp3/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_49

    # getter for: Lokhttp3/internal/framed/Http2;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lokhttp3/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v5

    invoke-static {v2, v4, v1, v0, v3}, Lokhttp3/internal/framed/Http2$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 137
    :cond_49
    packed-switch v0, :pswitch_data_8a

    .line 176
    iget-object v5, p0, Lokhttp3/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    int-to-long v6, v1

    invoke-interface {v5, v6, v7}, Lokio/BufferedSource;->skip(J)V

    goto :goto_77

    .line 171
    :pswitch_53
    invoke-direct {p0, p1, v1, v3, v4}, Lokhttp3/internal/framed/Http2$Reader;->readWindowUpdate(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V

    .line 172
    goto :goto_77

    .line 167
    :pswitch_57
    invoke-direct {p0, p1, v1, v3, v4}, Lokhttp3/internal/framed/Http2$Reader;->readGoAway(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V

    .line 168
    goto :goto_77

    .line 163
    :pswitch_5b
    invoke-direct {p0, p1, v1, v3, v4}, Lokhttp3/internal/framed/Http2$Reader;->readPing(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V

    .line 164
    goto :goto_77

    .line 159
    :pswitch_5f
    invoke-direct {p0, p1, v1, v3, v4}, Lokhttp3/internal/framed/Http2$Reader;->readPushPromise(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V

    .line 160
    goto :goto_77

    .line 155
    :pswitch_63
    invoke-direct {p0, p1, v1, v3, v4}, Lokhttp3/internal/framed/Http2$Reader;->readSettings(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V

    .line 156
    goto :goto_77

    .line 151
    :pswitch_67
    invoke-direct {p0, p1, v1, v3, v4}, Lokhttp3/internal/framed/Http2$Reader;->readRstStream(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V

    .line 152
    goto :goto_77

    .line 147
    :pswitch_6b
    invoke-direct {p0, p1, v1, v3, v4}, Lokhttp3/internal/framed/Http2$Reader;->readPriority(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V

    .line 148
    goto :goto_77

    .line 143
    :pswitch_6f
    invoke-direct {p0, p1, v1, v3, v4}, Lokhttp3/internal/framed/Http2$Reader;->readHeaders(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V

    .line 144
    goto :goto_77

    .line 139
    :pswitch_73
    invoke-direct {p0, p1, v1, v3, v4}, Lokhttp3/internal/framed/Http2$Reader;->readData(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V

    .line 140
    nop

    .line 178
    :goto_77
    return v2

    .line 130
    .end local v0    # "type":B
    .end local v3    # "flags":B
    .end local v4    # "streamId":I
    :cond_78
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "FRAME_SIZE_ERROR: %s"

    # invokes: Lokhttp3/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v2}, Lokhttp3/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 112
    .end local v1    # "length":I
    :catch_87
    move-exception v1

    .line 113
    .local v1, "e":Ljava/io/IOException;
    return v0

    nop

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_73
        :pswitch_6f
        :pswitch_6b
        :pswitch_67
        :pswitch_63
        :pswitch_5f
        :pswitch_5b
        :pswitch_57
        :pswitch_53
    .end packed-switch
.end method

.method public readConnectionPreface()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Reader;->client:Z

    if-eqz v0, :cond_5

    return-void

    .line 102
    :cond_5
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    # getter for: Lokhttp3/internal/framed/Http2;->CONNECTION_PREFACE:Lokio/ByteString;
    invoke-static {}, Lokhttp3/internal/framed/Http2;->access$000()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    .line 103
    .local v0, "connectionPreface":Lokio/ByteString;
    # getter for: Lokhttp3/internal/framed/Http2;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lokhttp3/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_37

    # getter for: Lokhttp3/internal/framed/Http2;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lokhttp3/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "<< CONNECTION %s"

    invoke-static {v5, v4}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 104
    :cond_37
    # getter for: Lokhttp3/internal/framed/Http2;->CONNECTION_PREFACE:Lokio/ByteString;
    invoke-static {}, Lokhttp3/internal/framed/Http2;->access$000()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 107
    return-void

    .line 105
    :cond_42
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Expected a connection header but was %s"

    # invokes: Lokhttp3/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v2, v1}, Lokhttp3/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method
