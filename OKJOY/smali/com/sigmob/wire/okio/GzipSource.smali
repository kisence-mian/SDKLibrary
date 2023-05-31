.class public final Lcom/sigmob/wire/okio/GzipSource;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/wire/okio/Source;


# static fields
.field private static final FCOMMENT:B = 0x4t

.field private static final FEXTRA:B = 0x2t

.field private static final FHCRC:B = 0x1t

.field private static final FNAME:B = 0x3t

.field private static final SECTION_BODY:B = 0x1t

.field private static final SECTION_DONE:B = 0x3t

.field private static final SECTION_HEADER:B = 0x0t

.field private static final SECTION_TRAILER:B = 0x2t


# instance fields
.field private final crc:Ljava/util/zip/CRC32;

.field private final inflater:Ljava/util/zip/Inflater;

.field private final inflaterSource:Lcom/sigmob/wire/okio/InflaterSource;

.field private section:I

.field private final source:Lcom/sigmob/wire/okio/BufferedSource;


# direct methods
.method public constructor <init>(Lcom/sigmob/wire/okio/Source;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/wire/okio/GzipSource;->section:I

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/sigmob/wire/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    if-nez p1, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lcom/sigmob/wire/okio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    invoke-static {p1}, Lcom/sigmob/wire/okio/Okio;->buffer(Lcom/sigmob/wire/okio/Source;)Lcom/sigmob/wire/okio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    new-instance v0, Lcom/sigmob/wire/okio/InflaterSource;

    iget-object v1, p0, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    iget-object v2, p0, Lcom/sigmob/wire/okio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    invoke-direct {v0, v1, v2}, Lcom/sigmob/wire/okio/InflaterSource;-><init>(Lcom/sigmob/wire/okio/BufferedSource;Ljava/util/zip/Inflater;)V

    iput-object v0, p0, Lcom/sigmob/wire/okio/GzipSource;->inflaterSource:Lcom/sigmob/wire/okio/InflaterSource;

    return-void
.end method

.method private checkEqual(Ljava/lang/String;II)V
    .registers 9

    if-eq p3, p2, :cond_22

    new-instance v0, Ljava/io/IOException;

    const-string v1, "%s: actual 0x%08x != expected 0x%08x"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    return-void
.end method

.method private consumeHeader()V
    .registers 11

    iget-object v0, p0, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    const-wide/16 v2, 0xa

    invoke-interface {v0, v2, v3}, Lcom/sigmob/wire/okio/BufferedSource;->require(J)V

    iget-object v0, p0, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSource;->buffer()Lcom/sigmob/wire/okio/Buffer;

    move-result-object v0

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v2, v3}, Lcom/sigmob/wire/okio/Buffer;->getByte(J)B

    move-result v7

    shr-int/lit8 v0, v7, 0x1

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9d

    const/4 v0, 0x1

    move v6, v0

    :goto_1c
    if-eqz v6, :cond_2c

    iget-object v0, p0, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSource;->buffer()Lcom/sigmob/wire/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/wire/okio/GzipSource;->updateCrc(Lcom/sigmob/wire/okio/Buffer;JJ)V

    :cond_2c
    iget-object v0, p0, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSource;->readShort()S

    move-result v0

    const-string v1, "ID1ID2"

    const/16 v2, 0x1f8b

    invoke-direct {p0, v1, v2, v0}, Lcom/sigmob/wire/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    const-wide/16 v2, 0x8

    invoke-interface {v0, v2, v3}, Lcom/sigmob/wire/okio/BufferedSource;->skip(J)V

    shr-int/lit8 v0, v7, 0x2

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_83

    iget-object v0, p0, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    const-wide/16 v2, 0x2

    invoke-interface {v0, v2, v3}, Lcom/sigmob/wire/okio/BufferedSource;->require(J)V

    if-eqz v6, :cond_5e

    iget-object v0, p0, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSource;->buffer()Lcom/sigmob/wire/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/wire/okio/GzipSource;->updateCrc(Lcom/sigmob/wire/okio/Buffer;JJ)V

    :cond_5e
    iget-object v0, p0, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSource;->buffer()Lcom/sigmob/wire/okio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Buffer;->readShortLe()S

    move-result v8

    iget-object v0, p0, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    int-to-long v2, v8

    invoke-interface {v0, v2, v3}, Lcom/sigmob/wire/okio/BufferedSource;->require(J)V

    if-eqz v6, :cond_7d

    iget-object v0, p0, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSource;->buffer()Lcom/sigmob/wire/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    int-to-long v4, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/wire/okio/GzipSource;->updateCrc(Lcom/sigmob/wire/okio/Buffer;JJ)V

    :cond_7d
    iget-object v0, p0, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    int-to-long v2, v8

    invoke-interface {v0, v2, v3}, Lcom/sigmob/wire/okio/BufferedSource;->skip(J)V

    :cond_83
    shr-int/lit8 v0, v7, 0x3

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_ba

    iget-object v0, p0, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sigmob/wire/okio/BufferedSource;->indexOf(B)J

    move-result-wide v8

    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-nez v0, :cond_a1

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_9d
    const/4 v0, 0x0

    move v6, v0

    goto/16 :goto_1c

    :cond_a1
    if-eqz v6, :cond_b2

    iget-object v0, p0, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSource;->buffer()Lcom/sigmob/wire/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    add-long/2addr v4, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/wire/okio/GzipSource;->updateCrc(Lcom/sigmob/wire/okio/Buffer;JJ)V

    :cond_b2
    iget-object v0, p0, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    const-wide/16 v2, 0x1

    add-long/2addr v2, v8

    invoke-interface {v0, v2, v3}, Lcom/sigmob/wire/okio/BufferedSource;->skip(J)V

    :cond_ba
    shr-int/lit8 v0, v7, 0x4

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_ed

    iget-object v0, p0, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sigmob/wire/okio/BufferedSource;->indexOf(B)J

    move-result-wide v8

    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-nez v0, :cond_d4

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_d4
    if-eqz v6, :cond_e5

    iget-object v0, p0, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSource;->buffer()Lcom/sigmob/wire/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    add-long/2addr v4, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/wire/okio/GzipSource;->updateCrc(Lcom/sigmob/wire/okio/Buffer;JJ)V

    :cond_e5
    iget-object v0, p0, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    const-wide/16 v2, 0x1

    add-long/2addr v2, v8

    invoke-interface {v0, v2, v3}, Lcom/sigmob/wire/okio/BufferedSource;->skip(J)V

    :cond_ed
    if-eqz v6, :cond_107

    const-string v0, "FHCRC"

    iget-object v1, p0, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v1}, Lcom/sigmob/wire/okio/BufferedSource;->readShortLe()S

    move-result v1

    iget-object v2, p0, Lcom/sigmob/wire/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sigmob/wire/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/sigmob/wire/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    :cond_107
    return-void
.end method

.method private consumeTrailer()V
    .registers 5

    const-string v0, "CRC"

    iget-object v1, p0, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v1}, Lcom/sigmob/wire/okio/BufferedSource;->readIntLe()I

    move-result v1

    iget-object v2, p0, Lcom/sigmob/wire/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sigmob/wire/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    const-string v0, "ISIZE"

    iget-object v1, p0, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v1}, Lcom/sigmob/wire/okio/BufferedSource;->readIntLe()I

    move-result v1

    iget-object v2, p0, Lcom/sigmob/wire/okio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getTotalOut()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sigmob/wire/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    return-void
.end method

.method private updateCrc(Lcom/sigmob/wire/okio/Buffer;JJ)V
    .registers 14

    const-wide/16 v2, 0x0

    iget-object v0, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    :goto_4
    iget v1, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v4, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    cmp-long v1, p2, v4

    if-ltz v1, :cond_18

    iget v1, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v4, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    sub-long/2addr p2, v4

    iget-object v0, v0, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    goto :goto_4

    :cond_18
    :goto_18
    cmp-long v1, p4, v2

    if-lez v1, :cond_37

    iget v1, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    int-to-long v4, v1

    add-long/2addr v4, p2

    long-to-int v1, v4

    iget v4, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    sub-int/2addr v4, v1

    int-to-long v4, v4

    invoke-static {v4, v5, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    iget-object v5, p0, Lcom/sigmob/wire/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    iget-object v6, v0, Lcom/sigmob/wire/okio/Segment;->data:[B

    invoke-virtual {v5, v6, v1, v4}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long v4, v4

    sub-long/2addr p4, v4

    iget-object v0, v0, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    move-wide p2, v2

    goto :goto_18

    :cond_37
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/GzipSource;->inflaterSource:Lcom/sigmob/wire/okio/InflaterSource;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/InflaterSource;->close()V

    return-void
.end method

.method public read(Lcom/sigmob/wire/okio/Buffer;J)J
    .registers 12

    const-wide/16 v0, -0x1

    const/4 v7, 0x2

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v2, p2, v4

    if-gez v2, :cond_23

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

    :cond_23
    cmp-long v2, p2, v4

    if-nez v2, :cond_28

    :goto_27
    return-wide v4

    :cond_28
    iget v2, p0, Lcom/sigmob/wire/okio/GzipSource;->section:I

    if-nez v2, :cond_31

    invoke-direct {p0}, Lcom/sigmob/wire/okio/GzipSource;->consumeHeader()V

    iput v3, p0, Lcom/sigmob/wire/okio/GzipSource;->section:I

    :cond_31
    iget v2, p0, Lcom/sigmob/wire/okio/GzipSource;->section:I

    if-ne v2, v3, :cond_49

    iget-wide v2, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    iget-object v4, p0, Lcom/sigmob/wire/okio/GzipSource;->inflaterSource:Lcom/sigmob/wire/okio/InflaterSource;

    invoke-virtual {v4, p1, p2, p3}, Lcom/sigmob/wire/okio/InflaterSource;->read(Lcom/sigmob/wire/okio/Buffer;J)J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-eqz v6, :cond_47

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/wire/okio/GzipSource;->updateCrc(Lcom/sigmob/wire/okio/Buffer;JJ)V

    goto :goto_27

    :cond_47
    iput v7, p0, Lcom/sigmob/wire/okio/GzipSource;->section:I

    :cond_49
    iget v2, p0, Lcom/sigmob/wire/okio/GzipSource;->section:I

    if-ne v2, v7, :cond_63

    invoke-direct {p0}, Lcom/sigmob/wire/okio/GzipSource;->consumeTrailer()V

    const/4 v2, 0x3

    iput v2, p0, Lcom/sigmob/wire/okio/GzipSource;->section:I

    iget-object v2, p0, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v2}, Lcom/sigmob/wire/okio/BufferedSource;->exhausted()Z

    move-result v2

    if-nez v2, :cond_63

    new-instance v0, Ljava/io/IOException;

    const-string v1, "gzip finished without exhausting source"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_63
    move-wide v4, v0

    goto :goto_27
.end method

.method public timeout()Lcom/sigmob/wire/okio/Timeout;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSource;->timeout()Lcom/sigmob/wire/okio/Timeout;

    move-result-object v0

    return-object v0
.end method
