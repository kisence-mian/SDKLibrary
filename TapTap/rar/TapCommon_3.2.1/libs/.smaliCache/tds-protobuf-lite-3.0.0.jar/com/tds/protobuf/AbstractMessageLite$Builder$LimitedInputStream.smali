.class final Lcom/tds/protobuf/AbstractMessageLite$Builder$LimitedInputStream;
.super Ljava/io/FilterInputStream;
.source "AbstractMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/AbstractMessageLite$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LimitedInputStream"
.end annotation


# instance fields
.field private limit:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;I)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "limit"    # I

    .line 254
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 255
    iput p2, p0, Lcom/tds/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    .line 256
    return-void
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    iget v1, p0, Lcom/tds/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    iget v0, p0, Lcom/tds/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    if-gtz v0, :cond_6

    .line 266
    const/4 v0, -0x1

    return v0

    .line 268
    :cond_6
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 269
    .local v0, "result":I
    if-ltz v0, :cond_12

    .line 270
    iget v1, p0, Lcom/tds/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/tds/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    .line 272
    :cond_12
    return v0
.end method

.method public read([BII)I
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    iget v0, p0, Lcom/tds/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    if-gtz v0, :cond_6

    .line 279
    const/4 v0, -0x1

    return v0

    .line 281
    :cond_6
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 282
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 283
    .local v0, "result":I
    if-ltz v0, :cond_15

    .line 284
    iget v1, p0, Lcom/tds/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/tds/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    .line 286
    :cond_15
    return v0
.end method

.method public skip(J)J
    .registers 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    iget v0, p0, Lcom/tds/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-super {p0, v0, v1}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v0

    .line 292
    .local v0, "result":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_18

    .line 293
    iget v2, p0, Lcom/tds/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    int-to-long v2, v2

    sub-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lcom/tds/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    .line 295
    :cond_18
    return-wide v0
.end method
