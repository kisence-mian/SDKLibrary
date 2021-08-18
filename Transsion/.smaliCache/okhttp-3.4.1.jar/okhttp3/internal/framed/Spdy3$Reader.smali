.class final Lokhttp3/internal/framed/Spdy3$Reader;
.super Ljava/lang/Object;
.source "Spdy3.java"

# interfaces
.implements Lokhttp3/internal/framed/FrameReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/Spdy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field private final client:Z

.field private final headerBlockReader:Lokhttp3/internal/framed/NameValueBlockReader;

.field private final source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lokio/BufferedSource;Z)V
    .registers 4
    .param p1, "source"    # Lokio/BufferedSource;
    .param p2, "client"    # Z

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    .line 114
    new-instance v0, Lokhttp3/internal/framed/NameValueBlockReader;

    invoke-direct {v0, p1}, Lokhttp3/internal/framed/NameValueBlockReader;-><init>(Lokio/BufferedSource;)V

    iput-object v0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->headerBlockReader:Lokhttp3/internal/framed/NameValueBlockReader;

    .line 115
    iput-boolean p2, p0, Lokhttp3/internal/framed/Spdy3$Reader;->client:Z

    .line 116
    return-void
.end method

.method private static varargs ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .registers 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readGoAway(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .registers 10
    .param p1, "handler"    # Lokhttp3/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne p3, v2, :cond_31

    .line 251
    iget-object v2, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    .line 252
    .local v2, "lastGoodStreamId":I
    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    .line 253
    .local v3, "errorCodeInt":I
    invoke-static {v3}, Lokhttp3/internal/framed/ErrorCode;->fromSpdyGoAway(I)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v4

    .line 254
    .local v4, "errorCode":Lokhttp3/internal/framed/ErrorCode;
    if-eqz v4, :cond_22

    .line 257
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-interface {p1, v2, v4, v0}, Lokhttp3/internal/framed/FrameReader$Handler;->goAway(ILokhttp3/internal/framed/ErrorCode;Lokio/ByteString;)V

    .line 258
    return-void

    .line 255
    :cond_22
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v0

    const-string v0, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 250
    .end local v2    # "lastGoodStreamId":I
    .end local v3    # "errorCodeInt":I
    .end local v4    # "errorCode":Lokhttp3/internal/framed/ErrorCode;
    :cond_31
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "TYPE_GOAWAY length: %d != 8"

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readHeaders(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .registers 14
    .param p1, "handler"    # Lokhttp3/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    .line 227
    .local v0, "w1":I
    const v1, 0x7fffffff

    and-int/2addr v1, v0

    .line 228
    .local v1, "streamId":I
    iget-object v2, p0, Lokhttp3/internal/framed/Spdy3$Reader;->headerBlockReader:Lokhttp3/internal/framed/NameValueBlockReader;

    add-int/lit8 v3, p3, -0x4

    invoke-virtual {v2, v3}, Lokhttp3/internal/framed/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v9

    .line 229
    .local v9, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    sget-object v8, Lokhttp3/internal/framed/HeadersMode;->SPDY_HEADERS:Lokhttp3/internal/framed/HeadersMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, -0x1

    move-object v2, p1

    move v5, v1

    move-object v7, v9

    invoke-interface/range {v2 .. v8}, Lokhttp3/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lokhttp3/internal/framed/HeadersMode;)V

    .line 230
    return-void
.end method

.method private readPing(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .registers 9
    .param p1, "handler"    # Lokhttp3/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne p3, v2, :cond_1c

    .line 244
    iget-object v2, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    .line 245
    .local v2, "id":I
    iget-boolean v3, p0, Lokhttp3/internal/framed/Spdy3$Reader;->client:Z

    and-int/lit8 v4, v2, 0x1

    if-ne v4, v1, :cond_13

    const/4 v4, 0x1

    goto :goto_14

    :cond_13
    const/4 v4, 0x0

    :goto_14
    if-ne v3, v4, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    .line 246
    .local v1, "ack":Z
    :goto_18
    invoke-interface {p1, v1, v2, v0}, Lokhttp3/internal/framed/FrameReader$Handler;->ping(ZII)V

    .line 247
    return-void

    .line 243
    .end local v1    # "ack":Z
    .end local v2    # "id":I
    :cond_1c
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "TYPE_PING length: %d != 4"

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readRstStream(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .registers 10
    .param p1, "handler"    # Lokhttp3/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne p3, v2, :cond_2f

    .line 216
    iget-object v2, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    .line 217
    .local v2, "streamId":I
    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    .line 218
    .local v3, "errorCodeInt":I
    invoke-static {v3}, Lokhttp3/internal/framed/ErrorCode;->fromSpdy3Rst(I)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v4

    .line 219
    .local v4, "errorCode":Lokhttp3/internal/framed/ErrorCode;
    if-eqz v4, :cond_20

    .line 222
    invoke-interface {p1, v2, v4}, Lokhttp3/internal/framed/FrameReader$Handler;->rstStream(ILokhttp3/internal/framed/ErrorCode;)V

    .line 223
    return-void

    .line 220
    :cond_20
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v0

    const-string v0, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 215
    .end local v2    # "streamId":I
    .end local v3    # "errorCodeInt":I
    .end local v4    # "errorCode":Lokhttp3/internal/framed/ErrorCode;
    :cond_2f
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "TYPE_RST_STREAM length: %d != 8"

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readSettings(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .registers 13
    .param p1, "handler"    # Lokhttp3/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    .line 262
    .local v0, "numberOfEntries":I
    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p3, v1, :cond_3a

    .line 265
    new-instance v1, Lokhttp3/internal/framed/Settings;

    invoke-direct {v1}, Lokhttp3/internal/framed/Settings;-><init>()V

    .line 266
    .local v1, "settings":Lokhttp3/internal/framed/Settings;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    if-ge v4, v0, :cond_31

    .line 267
    iget-object v5, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readInt()I

    move-result v5

    .line 268
    .local v5, "w1":I
    iget-object v6, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v6}, Lokio/BufferedSource;->readInt()I

    move-result v6

    .line 269
    .local v6, "value":I
    const/high16 v7, -0x1000000

    and-int/2addr v7, v5

    ushr-int/lit8 v7, v7, 0x18

    .line 270
    .local v7, "idFlags":I
    const v8, 0xffffff

    and-int/2addr v8, v5

    .line 271
    .local v8, "id":I
    invoke-virtual {v1, v8, v7, v6}, Lokhttp3/internal/framed/Settings;->set(III)Lokhttp3/internal/framed/Settings;

    .line 266
    .end local v5    # "w1":I
    .end local v6    # "value":I
    .end local v7    # "idFlags":I
    .end local v8    # "id":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 273
    .end local v4    # "i":I
    :cond_31
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_36

    const/4 v2, 0x1

    .line 274
    .local v2, "clearPrevious":Z
    :cond_36
    invoke-interface {p1, v2, v1}, Lokhttp3/internal/framed/FrameReader$Handler;->settings(ZLokhttp3/internal/framed/Settings;)V

    .line 275
    return-void

    .line 263
    .end local v1    # "settings":Lokhttp3/internal/framed/Settings;
    .end local v2    # "clearPrevious":Z
    :cond_3a
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "TYPE_SETTINGS length: %d != 4 + 8 * %d"

    invoke-static {v2, v1}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    goto :goto_51

    :goto_50
    throw v1

    :goto_51
    goto :goto_50
.end method

.method private readSynReply(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .registers 14
    .param p1, "handler"    # Lokhttp3/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    .line 208
    .local v0, "w1":I
    const v1, 0x7fffffff

    and-int/2addr v1, v0

    .line 209
    .local v1, "streamId":I
    iget-object v2, p0, Lokhttp3/internal/framed/Spdy3$Reader;->headerBlockReader:Lokhttp3/internal/framed/NameValueBlockReader;

    add-int/lit8 v3, p3, -0x4

    invoke-virtual {v2, v3}, Lokhttp3/internal/framed/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v9

    .line 210
    .local v9, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_19

    const/4 v2, 0x1

    const/4 v4, 0x1

    goto :goto_1b

    :cond_19
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 211
    .local v4, "inFinished":Z
    :goto_1b
    const/4 v3, 0x0

    const/4 v6, -0x1

    sget-object v8, Lokhttp3/internal/framed/HeadersMode;->SPDY_REPLY:Lokhttp3/internal/framed/HeadersMode;

    move-object v2, p1

    move v5, v1

    move-object v7, v9

    invoke-interface/range {v2 .. v8}, Lokhttp3/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lokhttp3/internal/framed/HeadersMode;)V

    .line 212
    return-void
.end method

.method private readSynStream(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .registers 16
    .param p1, "handler"    # Lokhttp3/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    .line 194
    .local v0, "w1":I
    iget-object v1, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    .line 195
    .local v1, "w2":I
    const v2, 0x7fffffff

    and-int v10, v0, v2

    .line 196
    .local v10, "streamId":I
    and-int/2addr v2, v1

    .line 197
    .local v2, "associatedStreamId":I
    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readShort()S

    .line 198
    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Reader;->headerBlockReader:Lokhttp3/internal/framed/NameValueBlockReader;

    add-int/lit8 v4, p3, -0xa

    invoke-virtual {v3, v4}, Lokhttp3/internal/framed/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v11

    .line 200
    .local v11, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    and-int/lit8 v3, p2, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_27

    const/4 v5, 0x1

    goto :goto_28

    :cond_27
    const/4 v5, 0x0

    .line 201
    .local v5, "inFinished":Z
    :goto_28
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_2d

    const/4 v4, 0x1

    .line 202
    .local v4, "outFinished":Z
    :cond_2d
    sget-object v9, Lokhttp3/internal/framed/HeadersMode;->SPDY_SYN_STREAM:Lokhttp3/internal/framed/HeadersMode;

    move-object v3, p1

    move v6, v10

    move v7, v2

    move-object v8, v11

    invoke-interface/range {v3 .. v9}, Lokhttp3/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lokhttp3/internal/framed/HeadersMode;)V

    .line 204
    return-void
.end method

.method private readWindowUpdate(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .registers 14
    .param p1, "handler"    # Lokhttp3/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne p3, v2, :cond_32

    .line 234
    iget-object v2, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    .line 235
    .local v2, "w1":I
    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    .line 236
    .local v3, "w2":I
    const v4, 0x7fffffff

    and-int v5, v2, v4

    .line 237
    .local v5, "streamId":I
    and-int/2addr v4, v3

    int-to-long v6, v4

    .line 238
    .local v6, "increment":J
    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_23

    .line 239
    invoke-interface {p1, v5, v6, v7}, Lokhttp3/internal/framed/FrameReader$Handler;->windowUpdate(IJ)V

    .line 240
    return-void

    .line 238
    :cond_23
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v0

    const-string v0, "windowSizeIncrement was 0"

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 233
    .end local v2    # "w1":I
    .end local v3    # "w2":I
    .end local v5    # "streamId":I
    .end local v6    # "increment":J
    :cond_32
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "TYPE_WINDOW_UPDATE length: %d != 8"

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

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

    .line 282
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->headerBlockReader:Lokhttp3/internal/framed/NameValueBlockReader;

    invoke-virtual {v0}, Lokhttp3/internal/framed/NameValueBlockReader;->close()V

    .line 283
    return-void
.end method

.method public nextFrame(Lokhttp3/internal/framed/FrameReader$Handler;)Z
    .registers 13
    .param p1, "handler"    # Lokhttp3/internal/framed/FrameReader$Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    .line 130
    .local v1, "w1":I
    iget-object v2, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_80

    .line 133
    .local v2, "w2":I
    nop

    .line 135
    const/high16 v3, -0x80000000

    and-int/2addr v3, v1

    const/4 v4, 0x1

    if-eqz v3, :cond_16

    const/4 v3, 0x1

    goto :goto_17

    :cond_16
    const/4 v3, 0x0

    .line 136
    .local v3, "control":Z
    :goto_17
    const/high16 v5, -0x1000000

    and-int/2addr v5, v2

    ushr-int/lit8 v5, v5, 0x18

    .line 137
    .local v5, "flags":I
    const v6, 0xffffff

    and-int/2addr v6, v2

    .line 139
    .local v6, "length":I
    if-eqz v3, :cond_71

    .line 140
    const/high16 v0, 0x7fff0000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x10

    .line 141
    .local v0, "version":I
    const v7, 0xffff

    and-int/2addr v7, v1

    .line 143
    .local v7, "type":I
    const/4 v8, 0x3

    if-ne v0, v8, :cond_58

    .line 147
    packed-switch v7, :pswitch_data_82

    .line 181
    :pswitch_31
    iget-object v8, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    int-to-long v9, v6

    invoke-interface {v8, v9, v10}, Lokio/BufferedSource;->skip(J)V

    .line 182
    return v4

    .line 177
    :pswitch_38
    invoke-direct {p0, p1, v5, v6}, Lokhttp3/internal/framed/Spdy3$Reader;->readWindowUpdate(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    .line 178
    return v4

    .line 173
    :pswitch_3c
    invoke-direct {p0, p1, v5, v6}, Lokhttp3/internal/framed/Spdy3$Reader;->readHeaders(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    .line 174
    return v4

    .line 169
    :pswitch_40
    invoke-direct {p0, p1, v5, v6}, Lokhttp3/internal/framed/Spdy3$Reader;->readGoAway(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    .line 170
    return v4

    .line 165
    :pswitch_44
    invoke-direct {p0, p1, v5, v6}, Lokhttp3/internal/framed/Spdy3$Reader;->readPing(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    .line 166
    return v4

    .line 161
    :pswitch_48
    invoke-direct {p0, p1, v5, v6}, Lokhttp3/internal/framed/Spdy3$Reader;->readSettings(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    .line 162
    return v4

    .line 157
    :pswitch_4c
    invoke-direct {p0, p1, v5, v6}, Lokhttp3/internal/framed/Spdy3$Reader;->readRstStream(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    .line 158
    return v4

    .line 153
    :pswitch_50
    invoke-direct {p0, p1, v5, v6}, Lokhttp3/internal/framed/Spdy3$Reader;->readSynReply(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    .line 154
    return v4

    .line 149
    :pswitch_54
    invoke-direct {p0, p1, v5, v6}, Lokhttp3/internal/framed/Spdy3$Reader;->readSynStream(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    .line 150
    return v4

    .line 144
    :cond_58
    new-instance v4, Ljava/net/ProtocolException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "version != 3: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 185
    .end local v0    # "version":I
    .end local v7    # "type":I
    :cond_71
    const v7, 0x7fffffff

    and-int/2addr v7, v1

    .line 186
    .local v7, "streamId":I
    and-int/lit8 v8, v5, 0x1

    if-eqz v8, :cond_7a

    const/4 v0, 0x1

    .line 187
    .local v0, "inFinished":Z
    :cond_7a
    iget-object v8, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {p1, v0, v7, v8, v6}, Lokhttp3/internal/framed/FrameReader$Handler;->data(ZILokio/BufferedSource;I)V

    .line 188
    return v4

    .line 131
    .end local v0    # "inFinished":Z
    .end local v1    # "w1":I
    .end local v2    # "w2":I
    .end local v3    # "control":Z
    .end local v5    # "flags":I
    .end local v6    # "length":I
    .end local v7    # "streamId":I
    :catch_80
    move-exception v1

    .line 132
    .local v1, "e":Ljava/io/IOException;
    return v0

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_54
        :pswitch_50
        :pswitch_4c
        :pswitch_48
        :pswitch_31
        :pswitch_44
        :pswitch_40
        :pswitch_3c
        :pswitch_38
    .end packed-switch
.end method

.method public readConnectionPreface()V
    .registers 1

    .line 119
    return-void
.end method
