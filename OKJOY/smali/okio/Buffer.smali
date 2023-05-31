.class public final Lokio/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"

# interfaces
.implements Lokio/BufferedSource;
.implements Lokio/BufferedSink;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/Buffer$UnsafeCursor;
    }
.end annotation


# static fields
.field private static final DIGITS:[B

.field static final REPLACEMENT_CHARACTER:I = 0xfffd


# instance fields
.field head:Lokio/Segment;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field size:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lokio/Buffer;->DIGITS:[B

    return-void

    :array_a
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method private digest(Ljava/lang/String;)Lokio/ByteString;
    .registers 9
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 1704
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 1705
    .local v1, "messageDigest":Ljava/security/MessageDigest;
    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v3, :cond_33

    .line 1706
    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v3, v3, Lokio/Segment;->data:[B

    iget-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v4, v4, Lokio/Segment;->pos:I

    iget-object v5, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v5, v5, Lokio/Segment;->limit:I

    iget-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v6, v6, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 1707
    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v2, v3, Lokio/Segment;->next:Lokio/Segment;

    .local v2, "s":Lokio/Segment;
    :goto_20
    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v2, v3, :cond_33

    .line 1708
    iget-object v3, v2, Lokio/Segment;->data:[B

    iget v4, v2, Lokio/Segment;->pos:I

    iget v5, v2, Lokio/Segment;->limit:I

    iget v6, v2, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 1707
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_20

    .line 1711
    .end local v2    # "s":Lokio/Segment;
    :cond_33
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lokio/ByteString;->of([B)Lokio/ByteString;
    :try_end_3a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_3a} :catch_3c

    move-result-object v3

    return-object v3

    .line 1712
    .end local v1    # "messageDigest":Ljava/security/MessageDigest;
    :catch_3c
    move-exception v0

    .line 1713
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method private hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;
    .registers 10
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # Lokio/ByteString;

    .prologue
    .line 1734
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 1735
    .local v1, "mac":Ljavax/crypto/Mac;
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lokio/ByteString;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 1736
    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v3, :cond_3f

    .line 1737
    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v3, v3, Lokio/Segment;->data:[B

    iget-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v4, v4, Lokio/Segment;->pos:I

    iget-object v5, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v5, v5, Lokio/Segment;->limit:I

    iget-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v6, v6, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v3, v4, v5}, Ljavax/crypto/Mac;->update([BII)V

    .line 1738
    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v2, v3, Lokio/Segment;->next:Lokio/Segment;

    .local v2, "s":Lokio/Segment;
    :goto_2c
    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v2, v3, :cond_3f

    .line 1739
    iget-object v3, v2, Lokio/Segment;->data:[B

    iget v4, v2, Lokio/Segment;->pos:I

    iget v5, v2, Lokio/Segment;->limit:I

    iget v6, v2, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v3, v4, v5}, Ljavax/crypto/Mac;->update([BII)V

    .line 1738
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_2c

    .line 1742
    .end local v2    # "s":Lokio/Segment;
    :cond_3f
    invoke-virtual {v1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v3

    invoke-static {v3}, Lokio/ByteString;->of([B)Lokio/ByteString;
    :try_end_46
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_46} :catch_48
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_46} :catch_4f

    move-result-object v3

    return-object v3

    .line 1743
    .end local v1    # "mac":Ljavax/crypto/Mac;
    :catch_48
    move-exception v0

    .line 1744
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1745
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_4f
    move-exception v0

    .line 1746
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private rangeEquals(Lokio/Segment;ILokio/ByteString;II)Z
    .registers 11
    .param p1, "segment"    # Lokio/Segment;
    .param p2, "segmentPos"    # I
    .param p3, "bytes"    # Lokio/ByteString;
    .param p4, "bytesOffset"    # I
    .param p5, "bytesLimit"    # I

    .prologue
    .line 1635
    iget v2, p1, Lokio/Segment;->limit:I

    .line 1636
    .local v2, "segmentLimit":I
    iget-object v0, p1, Lokio/Segment;->data:[B

    .line 1638
    .local v0, "data":[B
    move v1, p4

    .local v1, "i":I
    :goto_5
    if-ge v1, p5, :cond_20

    .line 1639
    if-ne p2, v2, :cond_11

    .line 1640
    iget-object p1, p1, Lokio/Segment;->next:Lokio/Segment;

    .line 1641
    iget-object v0, p1, Lokio/Segment;->data:[B

    .line 1642
    iget p2, p1, Lokio/Segment;->pos:I

    .line 1643
    iget v2, p1, Lokio/Segment;->limit:I

    .line 1646
    :cond_11
    aget-byte v3, v0, p2

    invoke-virtual {p3, v1}, Lokio/ByteString;->getByte(I)B

    move-result v4

    if-eq v3, v4, :cond_1b

    .line 1647
    const/4 v3, 0x0

    .line 1654
    :goto_1a
    return v3

    .line 1650
    :cond_1b
    add-int/lit8 p2, p2, 0x1

    .line 1651
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1654
    :cond_20
    const/4 v3, 0x1

    goto :goto_1a
.end method

.method private readFrom(Ljava/io/InputStream;JZ)V
    .registers 13
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "byteCount"    # J
    .param p4, "forever"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    if-nez p1, :cond_17

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "in == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 255
    .local v0, "bytesRead":I
    .local v1, "maxToCopy":I
    .local v2, "tail":Lokio/Segment;
    :cond_a
    iget v3, v2, Lokio/Segment;->limit:I

    add-int/2addr v3, v0

    iput v3, v2, Lokio/Segment;->limit:I

    .line 256
    iget-wide v4, p0, Lokio/Buffer;->size:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lokio/Buffer;->size:J

    .line 257
    int-to-long v4, v0

    sub-long/2addr p2, v4

    .line 247
    .end local v0    # "bytesRead":I
    .end local v1    # "maxToCopy":I
    .end local v2    # "tail":Lokio/Segment;
    :cond_17
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-gtz v3, :cond_1f

    if-eqz p4, :cond_3b

    .line 248
    :cond_1f
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v2

    .line 249
    .restart local v2    # "tail":Lokio/Segment;
    iget v3, v2, Lokio/Segment;->limit:I

    rsub-int v3, v3, 0x2000

    int-to-long v4, v3

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    .line 250
    .restart local v1    # "maxToCopy":I
    iget-object v3, v2, Lokio/Segment;->data:[B

    iget v4, v2, Lokio/Segment;->limit:I

    invoke-virtual {p1, v3, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 251
    .restart local v0    # "bytesRead":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_a

    .line 252
    if-eqz p4, :cond_3c

    .line 259
    .end local v0    # "bytesRead":I
    .end local v1    # "maxToCopy":I
    .end local v2    # "tail":Lokio/Segment;
    :cond_3b
    return-void

    .line 253
    .restart local v0    # "bytesRead":I
    .restart local v1    # "maxToCopy":I
    .restart local v2    # "tail":Lokio/Segment;
    :cond_3c
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3
.end method


# virtual methods
.method public buffer()Lokio/Buffer;
    .registers 1

    .prologue
    .line 71
    return-object p0
.end method

.method public final clear()V
    .registers 5

    .prologue
    .line 922
    :try_start_0
    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->skip(J)V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_6

    .line 926
    return-void

    .line 923
    :catch_6
    move-exception v0

    .line 924
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lokio/Buffer;
    .registers 7

    .prologue
    .line 1806
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 1807
    .local v0, "result":Lokio/Buffer;
    iget-wide v2, p0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_e

    .line 1815
    :goto_d
    return-object v0

    .line 1809
    :cond_e
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-virtual {v2}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v2

    iput-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1810
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v4, v0, Lokio/Buffer;->head:Lokio/Segment;

    iput-object v4, v3, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v4, v2, Lokio/Segment;->next:Lokio/Segment;

    .line 1811
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v1, v2, Lokio/Segment;->next:Lokio/Segment;

    .local v1, "s":Lokio/Segment;
    :goto_24
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v1, v2, :cond_36

    .line 1812
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {v1}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 1811
    iget-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_24

    .line 1814
    :cond_36
    iget-wide v2, p0, Lokio/Buffer;->size:J

    iput-wide v2, v0, Lokio/Buffer;->size:J

    goto :goto_d
.end method

.method public close()V
    .registers 1

    .prologue
    .line 1665
    return-void
.end method

.method public final completeSegmentByteCount()J
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 267
    iget-wide v0, p0, Lokio/Buffer;->size:J

    .line 268
    .local v0, "result":J
    cmp-long v3, v0, v4

    if-nez v3, :cond_9

    .line 276
    :goto_8
    return-wide v4

    .line 271
    :cond_9
    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v2, v3, Lokio/Segment;->prev:Lokio/Segment;

    .line 272
    .local v2, "tail":Lokio/Segment;
    iget v3, v2, Lokio/Segment;->limit:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_1e

    iget-boolean v3, v2, Lokio/Segment;->owner:Z

    if-eqz v3, :cond_1e

    .line 273
    iget v3, v2, Lokio/Segment;->limit:I

    iget v4, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v4, v3

    sub-long/2addr v0, v4

    :cond_1e
    move-wide v4, v0

    .line 276
    goto :goto_8
.end method

.method public final copyTo(Ljava/io/OutputStream;)Lokio/Buffer;
    .registers 8
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lokio/Buffer;->size:J

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Ljava/io/OutputStream;JJ)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public final copyTo(Ljava/io/OutputStream;JJ)Lokio/Buffer;
    .registers 16
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "offset"    # J
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_a
    iget-wide v0, p0, Lokio/Buffer;->size:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 152
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_18

    .line 169
    :cond_17
    return-object p0

    .line 155
    :cond_18
    iget-object v7, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 156
    .local v7, "s":Lokio/Segment;
    :goto_1a
    iget v0, v7, Lokio/Segment;->limit:I

    iget v1, v7, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_2e

    .line 157
    iget v0, v7, Lokio/Segment;->limit:I

    iget v1, v7, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr p2, v0

    .line 156
    iget-object v7, v7, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_1a

    .line 161
    :cond_2e
    :goto_2e
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_17

    .line 162
    iget v0, v7, Lokio/Segment;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p2

    long-to-int v6, v0

    .line 163
    .local v6, "pos":I
    iget v0, v7, Lokio/Segment;->limit:I

    sub-int/2addr v0, v6

    int-to-long v0, v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v8, v0

    .line 164
    .local v8, "toCopy":I
    iget-object v0, v7, Lokio/Segment;->data:[B

    invoke-virtual {p1, v0, v6, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 165
    int-to-long v0, v8

    sub-long/2addr p4, v0

    .line 166
    const-wide/16 p2, 0x0

    .line 161
    iget-object v7, v7, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_2e
.end method

.method public final copyTo(Lokio/Buffer;JJ)Lokio/Buffer;
    .registers 16
    .param p1, "out"    # Lokio/Buffer;
    .param p2, "offset"    # J
    .param p4, "byteCount"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 174
    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_c
    iget-wide v0, p0, Lokio/Buffer;->size:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 176
    cmp-long v0, p4, v8

    if-nez v0, :cond_18

    .line 200
    :cond_17
    return-object p0

    .line 178
    :cond_18
    iget-wide v0, p1, Lokio/Buffer;->size:J

    add-long/2addr v0, p4

    iput-wide v0, p1, Lokio/Buffer;->size:J

    .line 181
    iget-object v7, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 182
    .local v7, "s":Lokio/Segment;
    :goto_1f
    iget v0, v7, Lokio/Segment;->limit:I

    iget v1, v7, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_33

    .line 183
    iget v0, v7, Lokio/Segment;->limit:I

    iget v1, v7, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr p2, v0

    .line 182
    iget-object v7, v7, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_1f

    .line 187
    :cond_33
    :goto_33
    cmp-long v0, p4, v8

    if-lez v0, :cond_17

    .line 188
    invoke-virtual {v7}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v6

    .line 189
    .local v6, "copy":Lokio/Segment;
    iget v0, v6, Lokio/Segment;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p2

    long-to-int v0, v0

    iput v0, v6, Lokio/Segment;->pos:I

    .line 190
    iget v0, v6, Lokio/Segment;->pos:I

    long-to-int v1, p4

    add-int/2addr v0, v1

    iget v1, v6, Lokio/Segment;->limit:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v6, Lokio/Segment;->limit:I

    .line 191
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_64

    .line 192
    iput-object v6, v6, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v6, v6, Lokio/Segment;->next:Lokio/Segment;

    iput-object v6, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 196
    :goto_58
    iget v0, v6, Lokio/Segment;->limit:I

    iget v1, v6, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr p4, v0

    .line 197
    const-wide/16 p2, 0x0

    .line 187
    iget-object v7, v7, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_33

    .line 194
    :cond_64
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {v0, v6}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    goto :goto_58
.end method

.method public emit()Lokio/BufferedSink;
    .registers 1

    .prologue
    .line 101
    return-object p0
.end method

.method public emitCompleteSegments()Lokio/Buffer;
    .registers 1

    .prologue
    .line 97
    return-object p0
.end method

.method public bridge synthetic emitCompleteSegments()Lokio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0}, Lokio/Buffer;->emitCompleteSegments()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 20
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1751
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_8

    const/4 v14, 0x1

    .line 1780
    :goto_7
    return v14

    .line 1752
    :cond_8
    move-object/from16 v0, p1

    instance-of v14, v0, Lokio/Buffer;

    if-nez v14, :cond_10

    const/4 v14, 0x0

    goto :goto_7

    :cond_10
    move-object/from16 v13, p1

    .line 1753
    check-cast v13, Lokio/Buffer;

    .line 1754
    .local v13, "that":Lokio/Buffer;
    move-object/from16 v0, p0

    iget-wide v14, v0, Lokio/Buffer;->size:J

    iget-wide v0, v13, Lokio/Buffer;->size:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_22

    const/4 v14, 0x0

    goto :goto_7

    .line 1755
    :cond_22
    move-object/from16 v0, p0

    iget-wide v14, v0, Lokio/Buffer;->size:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_2e

    const/4 v14, 0x1

    goto :goto_7

    .line 1757
    :cond_2e
    move-object/from16 v0, p0

    iget-object v11, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1758
    .local v11, "sa":Lokio/Segment;
    iget-object v12, v13, Lokio/Buffer;->head:Lokio/Segment;

    .line 1759
    .local v12, "sb":Lokio/Segment;
    iget v5, v11, Lokio/Segment;->pos:I

    .line 1760
    .local v5, "posA":I
    iget v9, v12, Lokio/Segment;->pos:I

    .line 1762
    .local v9, "posB":I
    const-wide/16 v6, 0x0

    .local v6, "pos":J
    :goto_3a
    move-object/from16 v0, p0

    iget-wide v14, v0, Lokio/Buffer;->size:J

    cmp-long v14, v6, v14

    if-gez v14, :cond_7c

    .line 1763
    iget v14, v11, Lokio/Segment;->limit:I

    sub-int/2addr v14, v5

    iget v15, v12, Lokio/Segment;->limit:I

    sub-int/2addr v15, v9

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    int-to-long v2, v14

    .line 1765
    .local v2, "count":J
    const/4 v4, 0x0

    .local v4, "i":I
    move v10, v9

    .end local v9    # "posB":I
    .local v10, "posB":I
    move v8, v5

    .end local v5    # "posA":I
    .local v8, "posA":I
    :goto_50
    int-to-long v14, v4

    cmp-long v14, v14, v2

    if-gez v14, :cond_6a

    .line 1766
    iget-object v14, v11, Lokio/Segment;->data:[B

    add-int/lit8 v5, v8, 0x1

    .end local v8    # "posA":I
    .restart local v5    # "posA":I
    aget-byte v14, v14, v8

    iget-object v15, v12, Lokio/Segment;->data:[B

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "posB":I
    .restart local v9    # "posB":I
    aget-byte v15, v15, v10

    if-eq v14, v15, :cond_65

    const/4 v14, 0x0

    goto :goto_7

    .line 1765
    :cond_65
    add-int/lit8 v4, v4, 0x1

    move v10, v9

    .end local v9    # "posB":I
    .restart local v10    # "posB":I
    move v8, v5

    .end local v5    # "posA":I
    .restart local v8    # "posA":I
    goto :goto_50

    .line 1769
    :cond_6a
    iget v14, v11, Lokio/Segment;->limit:I

    if-ne v8, v14, :cond_80

    .line 1770
    iget-object v11, v11, Lokio/Segment;->next:Lokio/Segment;

    .line 1771
    iget v5, v11, Lokio/Segment;->pos:I

    .line 1774
    .end local v8    # "posA":I
    .restart local v5    # "posA":I
    :goto_72
    iget v14, v12, Lokio/Segment;->limit:I

    if-ne v10, v14, :cond_7e

    .line 1775
    iget-object v12, v12, Lokio/Segment;->next:Lokio/Segment;

    .line 1776
    iget v9, v12, Lokio/Segment;->pos:I

    .line 1762
    .end local v10    # "posB":I
    .restart local v9    # "posB":I
    :goto_7a
    add-long/2addr v6, v2

    goto :goto_3a

    .line 1780
    .end local v2    # "count":J
    .end local v4    # "i":I
    :cond_7c
    const/4 v14, 0x1

    goto :goto_7

    .end local v9    # "posB":I
    .restart local v2    # "count":J
    .restart local v4    # "i":I
    .restart local v10    # "posB":I
    :cond_7e
    move v9, v10

    .end local v10    # "posB":I
    .restart local v9    # "posB":I
    goto :goto_7a

    .end local v5    # "posA":I
    .end local v9    # "posB":I
    .restart local v8    # "posA":I
    .restart local v10    # "posB":I
    :cond_80
    move v5, v8

    .end local v8    # "posA":I
    .restart local v5    # "posA":I
    goto :goto_72
.end method

.method public exhausted()Z
    .registers 5

    .prologue
    .line 105
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public flush()V
    .registers 1

    .prologue
    .line 1658
    return-void
.end method

.method public final getByte(J)B
    .registers 12
    .param p1, "pos"    # J

    .prologue
    .line 302
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 303
    iget-wide v0, p0, Lokio/Buffer;->size:J

    sub-long/2addr v0, p1

    cmp-long v0, v0, p1

    if-lez v0, :cond_2a

    .line 304
    iget-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 305
    .local v6, "s":Lokio/Segment;
    :goto_11
    iget v0, v6, Lokio/Segment;->limit:I

    iget v1, v6, Lokio/Segment;->pos:I

    sub-int v7, v0, v1

    .line 306
    .local v7, "segmentByteCount":I
    int-to-long v0, v7

    cmp-long v0, p1, v0

    if-gez v0, :cond_25

    iget-object v0, v6, Lokio/Segment;->data:[B

    iget v1, v6, Lokio/Segment;->pos:I

    long-to-int v2, p1

    add-int/2addr v1, v2

    aget-byte v0, v0, v1

    .line 313
    .end local v7    # "segmentByteCount":I
    :goto_24
    return v0

    .line 307
    .restart local v7    # "segmentByteCount":I
    :cond_25
    int-to-long v0, v7

    sub-long/2addr p1, v0

    .line 304
    iget-object v6, v6, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_11

    .line 310
    .end local v6    # "s":Lokio/Segment;
    .end local v7    # "segmentByteCount":I
    :cond_2a
    iget-wide v0, p0, Lokio/Buffer;->size:J

    sub-long/2addr p1, v0

    .line 311
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v6, v0, Lokio/Segment;->prev:Lokio/Segment;

    .line 312
    .restart local v6    # "s":Lokio/Segment;
    :goto_31
    iget v0, v6, Lokio/Segment;->limit:I

    iget v1, v6, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr p1, v0

    .line 313
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_47

    iget-object v0, v6, Lokio/Segment;->data:[B

    iget v1, v6, Lokio/Segment;->pos:I

    long-to-int v2, p1

    add-int/2addr v1, v2

    aget-byte v0, v0, v1

    goto :goto_24

    .line 311
    :cond_47
    iget-object v6, v6, Lokio/Segment;->prev:Lokio/Segment;

    goto :goto_31
.end method

.method public hashCode()I
    .registers 7

    .prologue
    .line 1784
    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1785
    .local v3, "s":Lokio/Segment;
    if-nez v3, :cond_6

    const/4 v2, 0x0

    .line 1793
    :goto_5
    return v2

    .line 1786
    :cond_6
    const/4 v2, 0x1

    .line 1788
    .local v2, "result":I
    :cond_7
    iget v1, v3, Lokio/Segment;->pos:I

    .local v1, "pos":I
    iget v0, v3, Lokio/Segment;->limit:I

    .local v0, "limit":I
    :goto_b
    if-ge v1, v0, :cond_18

    .line 1789
    mul-int/lit8 v4, v2, 0x1f

    iget-object v5, v3, Lokio/Segment;->data:[B

    aget-byte v5, v5, v1

    add-int v2, v4, v5

    .line 1788
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1791
    :cond_18
    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    .line 1792
    iget-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v3, v4, :cond_7

    goto :goto_5
.end method

.method public final hmacSha1(Lokio/ByteString;)Lokio/ByteString;
    .registers 3
    .param p1, "key"    # Lokio/ByteString;

    .prologue
    .line 1719
    const-string v0, "HmacSHA1"

    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final hmacSha256(Lokio/ByteString;)Lokio/ByteString;
    .registers 3
    .param p1, "key"    # Lokio/ByteString;

    .prologue
    .line 1724
    const-string v0, "HmacSHA256"

    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final hmacSha512(Lokio/ByteString;)Lokio/ByteString;
    .registers 3
    .param p1, "key"    # Lokio/ByteString;

    .prologue
    .line 1729
    const-string v0, "HmacSHA512"

    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(B)J
    .registers 8
    .param p1, "b"    # B

    .prologue
    .line 1405
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJ)J
    .registers 10
    .param p1, "b"    # B
    .param p2, "fromIndex"    # J

    .prologue
    .line 1413
    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJJ)J
    .registers 22
    .param p1, "b"    # B
    .param p2, "fromIndex"    # J
    .param p4, "toIndex"    # J

    .prologue
    .line 1417
    const-wide/16 v10, 0x0

    cmp-long v10, p2, v10

    if-ltz v10, :cond_a

    cmp-long v10, p4, p2

    if-gez v10, :cond_32

    .line 1418
    :cond_a
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "size=%s fromIndex=%s toIndex=%s"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lokio/Buffer;->size:J

    .line 1419
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1422
    :cond_32
    move-object/from16 v0, p0

    iget-wide v10, v0, Lokio/Buffer;->size:J

    cmp-long v10, p4, v10

    if-lez v10, :cond_40

    move-object/from16 v0, p0

    iget-wide v0, v0, Lokio/Buffer;->size:J

    move-wide/from16 p4, v0

    .line 1423
    :cond_40
    cmp-long v10, p2, p4

    if-nez v10, :cond_47

    const-wide/16 v10, -0x1

    .line 1469
    :goto_46
    return-wide v10

    .line 1431
    :cond_47
    move-object/from16 v0, p0

    iget-object v9, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1432
    .local v9, "s":Lokio/Segment;
    if-nez v9, :cond_50

    .line 1434
    const-wide/16 v10, -0x1

    goto :goto_46

    .line 1435
    :cond_50
    move-object/from16 v0, p0

    iget-wide v10, v0, Lokio/Buffer;->size:J

    sub-long v10, v10, p2

    cmp-long v10, v10, p2

    if-gez v10, :cond_6c

    .line 1437
    move-object/from16 v0, p0

    iget-wide v6, v0, Lokio/Buffer;->size:J

    .line 1438
    .local v6, "offset":J
    :goto_5e
    cmp-long v10, v6, p2

    if-lez v10, :cond_89

    .line 1439
    iget-object v9, v9, Lokio/Segment;->prev:Lokio/Segment;

    .line 1440
    iget v10, v9, Lokio/Segment;->limit:I

    iget v11, v9, Lokio/Segment;->pos:I

    sub-int/2addr v10, v11

    int-to-long v10, v10

    sub-long/2addr v6, v10

    goto :goto_5e

    .line 1444
    .end local v6    # "offset":J
    :cond_6c
    const-wide/16 v6, 0x0

    .line 1445
    .restart local v6    # "offset":J
    :goto_6e
    iget v10, v9, Lokio/Segment;->limit:I

    iget v11, v9, Lokio/Segment;->pos:I

    sub-int/2addr v10, v11

    int-to-long v10, v10

    add-long v4, v6, v10

    .local v4, "nextOffset":J
    cmp-long v10, v4, p2

    if-gez v10, :cond_89

    .line 1446
    iget-object v9, v9, Lokio/Segment;->next:Lokio/Segment;

    .line 1447
    move-wide v6, v4

    goto :goto_6e

    .line 1464
    .end local v4    # "nextOffset":J
    .local v2, "data":[B
    .local v3, "limit":I
    .local v8, "pos":I
    :cond_7e
    iget v10, v9, Lokio/Segment;->limit:I

    iget v11, v9, Lokio/Segment;->pos:I

    sub-int/2addr v10, v11

    int-to-long v10, v10

    add-long/2addr v6, v10

    .line 1465
    move-wide/from16 p2, v6

    .line 1466
    iget-object v9, v9, Lokio/Segment;->next:Lokio/Segment;

    .line 1453
    .end local v2    # "data":[B
    .end local v3    # "limit":I
    .end local v8    # "pos":I
    :cond_89
    cmp-long v10, v6, p4

    if-gez v10, :cond_b6

    .line 1454
    iget-object v2, v9, Lokio/Segment;->data:[B

    .line 1455
    .restart local v2    # "data":[B
    iget v10, v9, Lokio/Segment;->limit:I

    int-to-long v10, v10

    iget v12, v9, Lokio/Segment;->pos:I

    int-to-long v12, v12

    add-long v12, v12, p4

    sub-long/2addr v12, v6

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v3, v10

    .line 1456
    .restart local v3    # "limit":I
    iget v10, v9, Lokio/Segment;->pos:I

    int-to-long v10, v10

    add-long v10, v10, p2

    sub-long/2addr v10, v6

    long-to-int v8, v10

    .line 1457
    .restart local v8    # "pos":I
    :goto_a4
    if-ge v8, v3, :cond_7e

    .line 1458
    aget-byte v10, v2, v8

    move/from16 v0, p1

    if-ne v10, v0, :cond_b3

    .line 1459
    iget v10, v9, Lokio/Segment;->pos:I

    sub-int v10, v8, v10

    int-to-long v10, v10

    add-long/2addr v10, v6

    goto :goto_46

    .line 1457
    :cond_b3
    add-int/lit8 v8, v8, 0x1

    goto :goto_a4

    .line 1469
    .end local v2    # "data":[B
    .end local v3    # "limit":I
    .end local v8    # "pos":I
    :cond_b6
    const-wide/16 v10, -0x1

    goto :goto_46
.end method

.method public indexOf(Lokio/ByteString;)J
    .registers 4
    .param p1, "bytes"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1473
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->indexOf(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(Lokio/ByteString;J)J
    .registers 24
    .param p1, "bytes"    # Lokio/ByteString;
    .param p2, "fromIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1477
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v2

    if-nez v2, :cond_e

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "bytes is empty"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1478
    :cond_e
    const-wide/16 v4, 0x0

    cmp-long v2, p2, v4

    if-gez v2, :cond_1c

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "fromIndex < 0"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1486
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1487
    .local v3, "s":Lokio/Segment;
    if-nez v3, :cond_25

    .line 1489
    const-wide/16 v4, -0x1

    .line 1528
    :goto_24
    return-wide v4

    .line 1490
    :cond_25
    move-object/from16 v0, p0

    iget-wide v4, v0, Lokio/Buffer;->size:J

    sub-long v4, v4, p2

    cmp-long v2, v4, p2

    if-gez v2, :cond_41

    .line 1492
    move-object/from16 v0, p0

    iget-wide v12, v0, Lokio/Buffer;->size:J

    .line 1493
    .local v12, "offset":J
    :goto_33
    cmp-long v2, v12, p2

    if-lez v2, :cond_53

    .line 1494
    iget-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    .line 1495
    iget v2, v3, Lokio/Segment;->limit:I

    iget v4, v3, Lokio/Segment;->pos:I

    sub-int/2addr v2, v4

    int-to-long v4, v2

    sub-long/2addr v12, v4

    goto :goto_33

    .line 1499
    .end local v12    # "offset":J
    :cond_41
    const-wide/16 v12, 0x0

    .line 1500
    .restart local v12    # "offset":J
    :goto_43
    iget v2, v3, Lokio/Segment;->limit:I

    iget v4, v3, Lokio/Segment;->pos:I

    sub-int/2addr v2, v4

    int-to-long v4, v2

    add-long v10, v12, v4

    .local v10, "nextOffset":J
    cmp-long v2, v10, p2

    if-gez v2, :cond_53

    .line 1501
    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    .line 1502
    move-wide v12, v10

    goto :goto_43

    .line 1509
    .end local v10    # "nextOffset":J
    :cond_53
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lokio/ByteString;->getByte(I)B

    move-result v8

    .line 1510
    .local v8, "b0":B
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v7

    .line 1511
    .local v7, "bytesSize":I
    move-object/from16 v0, p0

    iget-wide v4, v0, Lokio/Buffer;->size:J

    int-to-long v0, v7

    move-wide/from16 v18, v0

    sub-long v4, v4, v18

    const-wide/16 v18, 0x1

    add-long v16, v4, v18

    .line 1512
    .local v16, "resultLimit":J
    :goto_6b
    cmp-long v2, v12, v16

    if-gez v2, :cond_b4

    .line 1514
    iget-object v9, v3, Lokio/Segment;->data:[B

    .line 1515
    .local v9, "data":[B
    iget v2, v3, Lokio/Segment;->limit:I

    int-to-long v4, v2

    iget v2, v3, Lokio/Segment;->pos:I

    int-to-long v0, v2

    move-wide/from16 v18, v0

    add-long v18, v18, v16

    sub-long v18, v18, v12

    move-wide/from16 v0, v18

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v15, v4

    .line 1516
    .local v15, "segmentLimit":I
    iget v2, v3, Lokio/Segment;->pos:I

    int-to-long v4, v2

    add-long v4, v4, p2

    sub-long/2addr v4, v12

    long-to-int v14, v4

    .local v14, "pos":I
    :goto_8b
    if-ge v14, v15, :cond_a8

    .line 1517
    aget-byte v2, v9, v14

    if-ne v2, v8, :cond_a5

    add-int/lit8 v4, v14, 0x1

    const/4 v6, 0x1

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lokio/Buffer;->rangeEquals(Lokio/Segment;ILokio/ByteString;II)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 1518
    iget v2, v3, Lokio/Segment;->pos:I

    sub-int v2, v14, v2

    int-to-long v4, v2

    add-long/2addr v4, v12

    goto :goto_24

    .line 1516
    :cond_a5
    add-int/lit8 v14, v14, 0x1

    goto :goto_8b

    .line 1523
    :cond_a8
    iget v2, v3, Lokio/Segment;->limit:I

    iget v4, v3, Lokio/Segment;->pos:I

    sub-int/2addr v2, v4

    int-to-long v4, v2

    add-long/2addr v12, v4

    .line 1524
    move-wide/from16 p2, v12

    .line 1525
    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    .line 1526
    goto :goto_6b

    .line 1528
    .end local v9    # "data":[B
    .end local v14    # "pos":I
    .end local v15    # "segmentLimit":I
    :cond_b4
    const-wide/16 v4, -0x1

    goto/16 :goto_24
.end method

.method public indexOfElement(Lokio/ByteString;)J
    .registers 4
    .param p1, "targetBytes"    # Lokio/ByteString;

    .prologue
    .line 1532
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOfElement(Lokio/ByteString;J)J
    .registers 22
    .param p1, "targetBytes"    # Lokio/ByteString;
    .param p2, "fromIndex"    # J

    .prologue
    .line 1536
    const-wide/16 v16, 0x0

    cmp-long v15, p2, v16

    if-gez v15, :cond_e

    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "fromIndex < 0"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 1544
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1545
    .local v12, "s":Lokio/Segment;
    if-nez v12, :cond_17

    .line 1547
    const-wide/16 v16, -0x1

    .line 1605
    :goto_16
    return-wide v16

    .line 1548
    :cond_17
    move-object/from16 v0, p0

    iget-wide v0, v0, Lokio/Buffer;->size:J

    move-wide/from16 v16, v0

    sub-long v16, v16, p2

    cmp-long v15, v16, p2

    if-gez v15, :cond_3b

    .line 1550
    move-object/from16 v0, p0

    iget-wide v10, v0, Lokio/Buffer;->size:J

    .line 1551
    .local v10, "offset":J
    :goto_27
    cmp-long v15, v10, p2

    if-lez v15, :cond_52

    .line 1552
    iget-object v12, v12, Lokio/Segment;->prev:Lokio/Segment;

    .line 1553
    iget v15, v12, Lokio/Segment;->limit:I

    iget v0, v12, Lokio/Segment;->pos:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-long v0, v15

    move-wide/from16 v16, v0

    sub-long v10, v10, v16

    goto :goto_27

    .line 1557
    .end local v10    # "offset":J
    :cond_3b
    const-wide/16 v10, 0x0

    .line 1558
    .restart local v10    # "offset":J
    :goto_3d
    iget v15, v12, Lokio/Segment;->limit:I

    iget v0, v12, Lokio/Segment;->pos:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-long v0, v15

    move-wide/from16 v16, v0

    add-long v8, v10, v16

    .local v8, "nextOffset":J
    cmp-long v15, v8, p2

    if-gez v15, :cond_52

    .line 1559
    iget-object v12, v12, Lokio/Segment;->next:Lokio/Segment;

    .line 1560
    move-wide v10, v8

    goto :goto_3d

    .line 1568
    .end local v8    # "nextOffset":J
    :cond_52
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_ab

    .line 1570
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lokio/ByteString;->getByte(I)B

    move-result v3

    .line 1571
    .local v3, "b0":B
    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lokio/ByteString;->getByte(I)B

    move-result v4

    .line 1572
    .local v4, "b1":B
    :goto_6a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lokio/Buffer;->size:J

    move-wide/from16 v16, v0

    cmp-long v15, v10, v16

    if-gez v15, :cond_fc

    .line 1573
    iget-object v5, v12, Lokio/Segment;->data:[B

    .line 1574
    .local v5, "data":[B
    iget v15, v12, Lokio/Segment;->pos:I

    int-to-long v0, v15

    move-wide/from16 v16, v0

    add-long v16, v16, p2

    sub-long v16, v16, v10

    move-wide/from16 v0, v16

    long-to-int v7, v0

    .local v7, "pos":I
    iget v6, v12, Lokio/Segment;->limit:I

    .local v6, "limit":I
    :goto_84
    if-ge v7, v6, :cond_99

    .line 1575
    aget-byte v2, v5, v7

    .line 1576
    .local v2, "b":I
    if-eq v2, v3, :cond_8c

    if-ne v2, v4, :cond_96

    .line 1577
    :cond_8c
    iget v15, v12, Lokio/Segment;->pos:I

    sub-int v15, v7, v15

    int-to-long v0, v15

    move-wide/from16 v16, v0

    add-long v16, v16, v10

    goto :goto_16

    .line 1574
    :cond_96
    add-int/lit8 v7, v7, 0x1

    goto :goto_84

    .line 1582
    .end local v2    # "b":I
    :cond_99
    iget v15, v12, Lokio/Segment;->limit:I

    iget v0, v12, Lokio/Segment;->pos:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-long v0, v15

    move-wide/from16 v16, v0

    add-long v10, v10, v16

    .line 1583
    move-wide/from16 p2, v10

    .line 1584
    iget-object v12, v12, Lokio/Segment;->next:Lokio/Segment;

    .line 1585
    goto :goto_6a

    .line 1588
    .end local v3    # "b0":B
    .end local v4    # "b1":B
    .end local v5    # "data":[B
    .end local v6    # "limit":I
    .end local v7    # "pos":I
    :cond_ab
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->internalArray()[B

    move-result-object v14

    .line 1589
    .local v14, "targetByteArray":[B
    :goto_af
    move-object/from16 v0, p0

    iget-wide v0, v0, Lokio/Buffer;->size:J

    move-wide/from16 v16, v0

    cmp-long v15, v10, v16

    if-gez v15, :cond_fc

    .line 1590
    iget-object v5, v12, Lokio/Segment;->data:[B

    .line 1591
    .restart local v5    # "data":[B
    iget v15, v12, Lokio/Segment;->pos:I

    int-to-long v0, v15

    move-wide/from16 v16, v0

    add-long v16, v16, p2

    sub-long v16, v16, v10

    move-wide/from16 v0, v16

    long-to-int v7, v0

    .restart local v7    # "pos":I
    iget v6, v12, Lokio/Segment;->limit:I

    .restart local v6    # "limit":I
    :goto_c9
    if-ge v7, v6, :cond_ea

    .line 1592
    aget-byte v2, v5, v7

    .line 1593
    .restart local v2    # "b":I
    array-length v0, v14

    move/from16 v16, v0

    const/4 v15, 0x0

    :goto_d1
    move/from16 v0, v16

    if-ge v15, v0, :cond_e7

    aget-byte v13, v14, v15

    .line 1594
    .local v13, "t":B
    if-ne v2, v13, :cond_e4

    iget v15, v12, Lokio/Segment;->pos:I

    sub-int v15, v7, v15

    int-to-long v0, v15

    move-wide/from16 v16, v0

    add-long v16, v16, v10

    goto/16 :goto_16

    .line 1593
    :cond_e4
    add-int/lit8 v15, v15, 0x1

    goto :goto_d1

    .line 1591
    .end local v13    # "t":B
    :cond_e7
    add-int/lit8 v7, v7, 0x1

    goto :goto_c9

    .line 1599
    .end local v2    # "b":I
    :cond_ea
    iget v15, v12, Lokio/Segment;->limit:I

    iget v0, v12, Lokio/Segment;->pos:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-long v0, v15

    move-wide/from16 v16, v0

    add-long v10, v10, v16

    .line 1600
    move-wide/from16 p2, v10

    .line 1601
    iget-object v12, v12, Lokio/Segment;->next:Lokio/Segment;

    .line 1602
    goto :goto_af

    .line 1605
    .end local v5    # "data":[B
    .end local v6    # "limit":I
    .end local v7    # "pos":I
    .end local v14    # "targetByteArray":[B
    :cond_fc
    const-wide/16 v16, -0x1

    goto/16 :goto_16
.end method

.method public inputStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 117
    new-instance v0, Lokio/Buffer$2;

    invoke-direct {v0, p0}, Lokio/Buffer$2;-><init>(Lokio/Buffer;)V

    return-object v0
.end method

.method public isOpen()Z
    .registers 2

    .prologue
    .line 1661
    const/4 v0, 0x1

    return v0
.end method

.method public final md5()Lokio/ByteString;
    .registers 2

    .prologue
    .line 1684
    const-string v0, "MD5"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public outputStream()Ljava/io/OutputStream;
    .registers 2

    .prologue
    .line 75
    new-instance v0, Lokio/Buffer$1;

    invoke-direct {v0, p0}, Lokio/Buffer$1;-><init>(Lokio/Buffer;)V

    return-object v0
.end method

.method public rangeEquals(JLokio/ByteString;)Z
    .registers 11
    .param p1, "offset"    # J
    .param p3, "bytes"    # Lokio/ByteString;

    .prologue
    .line 1609
    const/4 v5, 0x0

    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lokio/Buffer;->rangeEquals(JLokio/ByteString;II)Z

    move-result v0

    return v0
.end method

.method public rangeEquals(JLokio/ByteString;II)Z
    .registers 13
    .param p1, "offset"    # J
    .param p3, "bytes"    # Lokio/ByteString;
    .param p4, "bytesOffset"    # I
    .param p5, "byteCount"    # I

    .prologue
    const/4 v1, 0x0

    .line 1614
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_1a

    if-ltz p4, :cond_1a

    if-ltz p5, :cond_1a

    iget-wide v2, p0, Lokio/Buffer;->size:J

    sub-long/2addr v2, p1

    int-to-long v4, p5

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1a

    .line 1618
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v2

    sub-int/2addr v2, p4

    if-ge v2, p5, :cond_1b

    .line 1626
    :cond_1a
    :goto_1a
    return v1

    .line 1621
    :cond_1b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1c
    if-ge v0, p5, :cond_2f

    .line 1622
    int-to-long v2, v0

    add-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v2

    add-int v3, p4, v0

    invoke-virtual {p3, v3}, Lokio/ByteString;->getByte(I)B

    move-result v3

    if-ne v2, v3, :cond_1a

    .line 1621
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 1626
    :cond_2f
    const/4 v1, 0x1

    goto :goto_1a
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 8
    .param p1, "sink"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 899
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 900
    .local v0, "s":Lokio/Segment;
    if-nez v0, :cond_6

    const/4 v1, -0x1

    .line 913
    :cond_5
    :goto_5
    return v1

    .line 902
    :cond_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    iget v3, v0, Lokio/Segment;->limit:I

    iget v4, v0, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 903
    .local v1, "toCopy":I
    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->pos:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 905
    iget v2, v0, Lokio/Segment;->pos:I

    add-int/2addr v2, v1

    iput v2, v0, Lokio/Segment;->pos:I

    .line 906
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 908
    iget v2, v0, Lokio/Segment;->pos:I

    iget v3, v0, Lokio/Segment;->limit:I

    if-ne v2, v3, :cond_5

    .line 909
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 910
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_5
.end method

.method public read([B)I
    .registers 4
    .param p1, "sink"    # [B

    .prologue
    .line 867
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 12
    .param p1, "sink"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .prologue
    .line 880
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 882
    iget-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 883
    .local v6, "s":Lokio/Segment;
    if-nez v6, :cond_d

    const/4 v7, -0x1

    .line 895
    :cond_c
    :goto_c
    return v7

    .line 884
    :cond_d
    iget v0, v6, Lokio/Segment;->limit:I

    iget v1, v6, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 885
    .local v7, "toCopy":I
    iget-object v0, v6, Lokio/Segment;->data:[B

    iget v1, v6, Lokio/Segment;->pos:I

    invoke-static {v0, v1, p1, p2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 887
    iget v0, v6, Lokio/Segment;->pos:I

    add-int/2addr v0, v7

    iput v0, v6, Lokio/Segment;->pos:I

    .line 888
    iget-wide v0, p0, Lokio/Buffer;->size:J

    int-to-long v2, v7

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 890
    iget v0, v6, Lokio/Segment;->pos:I

    iget v1, v6, Lokio/Segment;->limit:I

    if-ne v0, v1, :cond_c

    .line 891
    invoke-virtual {v6}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v0

    iput-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 892
    invoke-static {v6}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_c
.end method

.method public read(Lokio/Buffer;J)J
    .registers 8
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 1396
    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1397
    :cond_c
    cmp-long v0, p2, v2

    if-gez v0, :cond_29

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

    .line 1398
    :cond_29
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_32

    const-wide/16 v0, -0x1

    .line 1401
    :goto_31
    return-wide v0

    .line 1399
    :cond_32
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_3a

    iget-wide p2, p0, Lokio/Buffer;->size:J

    .line 1400
    :cond_3a
    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    move-wide v0, p2

    .line 1401
    goto :goto_31
.end method

.method public readAll(Lokio/Sink;)J
    .registers 6
    .param p1, "sink"    # Lokio/Sink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 675
    iget-wide v0, p0, Lokio/Buffer;->size:J

    .line 676
    .local v0, "byteCount":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_b

    .line 677
    invoke-interface {p1, p0, v0, v1}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 679
    :cond_b
    return-wide v0
.end method

.method public final readAndWriteUnsafe()Lokio/Buffer$UnsafeCursor;
    .registers 2

    .prologue
    .line 1849
    new-instance v0, Lokio/Buffer$UnsafeCursor;

    invoke-direct {v0}, Lokio/Buffer$UnsafeCursor;-><init>()V

    invoke-virtual {p0, v0}, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    move-result-object v0

    return-object v0
.end method

.method public final readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    .registers 4
    .param p1, "unsafeCursor"    # Lokio/Buffer$UnsafeCursor;

    .prologue
    .line 1853
    iget-object v0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v0, :cond_c

    .line 1854
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already attached to a buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1857
    :cond_c
    iput-object p0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 1858
    const/4 v0, 0x1

    iput-boolean v0, p1, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    .line 1859
    return-object p1
.end method

.method public readByte()B
    .registers 11

    .prologue
    .line 280
    iget-wide v6, p0, Lokio/Buffer;->size:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_10

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "size == 0"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 282
    :cond_10
    iget-object v5, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 283
    .local v5, "segment":Lokio/Segment;
    iget v3, v5, Lokio/Segment;->pos:I

    .line 284
    .local v3, "pos":I
    iget v2, v5, Lokio/Segment;->limit:I

    .line 286
    .local v2, "limit":I
    iget-object v1, v5, Lokio/Segment;->data:[B

    .line 287
    .local v1, "data":[B
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pos":I
    .local v4, "pos":I
    aget-byte v0, v1, v3

    .line 288
    .local v0, "b":B
    iget-wide v6, p0, Lokio/Buffer;->size:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lokio/Buffer;->size:J

    .line 290
    if-ne v4, v2, :cond_2f

    .line 291
    invoke-virtual {v5}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v6

    iput-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 292
    invoke-static {v5}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 297
    :goto_2e
    return v0

    .line 294
    :cond_2f
    iput v4, v5, Lokio/Segment;->pos:I

    goto :goto_2e
.end method

.method public readByteArray()[B
    .registers 5

    .prologue
    .line 849
    :try_start_0
    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->readByteArray(J)[B
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 850
    :catch_7
    move-exception v0

    .line 851
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public readByteArray(J)[B
    .registers 10
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 856
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 857
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_28

    .line 858
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 861
    :cond_28
    long-to-int v0, p1

    new-array v6, v0, [B

    .line 862
    .local v6, "result":[B
    invoke-virtual {p0, v6}, Lokio/Buffer;->readFully([B)V

    .line 863
    return-object v6
.end method

.method public readByteString()Lokio/ByteString;
    .registers 3

    .prologue
    .line 540
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/Buffer;->readByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public readByteString(J)Lokio/ByteString;
    .registers 6
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 544
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public readDecimalLong()J
    .registers 25

    .prologue
    .line 426
    move-object/from16 v0, p0

    iget-wide v0, v0, Lokio/Buffer;->size:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_14

    new-instance v20, Ljava/lang/IllegalStateException;

    const-string v21, "size == 0"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 429
    :cond_14
    const-wide/16 v18, 0x0

    .line 430
    .local v18, "value":J
    const/16 v16, 0x0

    .line 431
    .local v16, "seen":I
    const/4 v10, 0x0

    .line 432
    .local v10, "negative":Z
    const/4 v8, 0x0

    .line 434
    .local v8, "done":Z
    const-wide v14, -0xcccccccccccccccL

    .line 435
    .local v14, "overflowZone":J
    const-wide/16 v12, -0x7

    .line 438
    .local v12, "overflowDigit":J
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v17, v0

    .line 440
    .local v17, "segment":Lokio/Segment;
    move-object/from16 v0, v17

    iget-object v6, v0, Lokio/Segment;->data:[B

    .line 441
    .local v6, "data":[B
    move-object/from16 v0, v17

    iget v11, v0, Lokio/Segment;->pos:I

    .line 442
    .local v11, "pos":I
    move-object/from16 v0, v17

    iget v9, v0, Lokio/Segment;->limit:I

    .line 444
    .local v9, "limit":I
    :goto_33
    if-ge v11, v9, :cond_c5

    .line 445
    aget-byte v4, v6, v11

    .line 446
    .local v4, "b":B
    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v4, v0, :cond_97

    const/16 v20, 0x39

    move/from16 v0, v20

    if-gt v4, v0, :cond_97

    .line 447
    rsub-int/lit8 v7, v4, 0x30

    .line 450
    .local v7, "digit":I
    cmp-long v20, v18, v14

    if-ltz v20, :cond_54

    cmp-long v20, v18, v14

    if-nez v20, :cond_89

    int-to-long v0, v7

    move-wide/from16 v20, v0

    cmp-long v20, v20, v12

    if-gez v20, :cond_89

    .line 451
    :cond_54
    new-instance v20, Lokio/Buffer;

    invoke-direct/range {v20 .. v20}, Lokio/Buffer;-><init>()V

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v5

    .line 452
    .local v5, "buffer":Lokio/Buffer;
    if-nez v10, :cond_6c

    invoke-virtual {v5}, Lokio/Buffer;->readByte()B

    .line 453
    :cond_6c
    new-instance v20, Ljava/lang/NumberFormatException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Number too large: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v5}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 455
    .end local v5    # "buffer":Lokio/Buffer;
    :cond_89
    const-wide/16 v20, 0xa

    mul-long v18, v18, v20

    .line 456
    int-to-long v0, v7

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    .line 444
    .end local v7    # "digit":I
    :goto_92
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v16, v16, 0x1

    goto :goto_33

    .line 457
    :cond_97
    const/16 v20, 0x2d

    move/from16 v0, v20

    if-ne v4, v0, :cond_a5

    if-nez v16, :cond_a5

    .line 458
    const/4 v10, 0x1

    .line 459
    const-wide/16 v20, 0x1

    sub-long v12, v12, v20

    goto :goto_92

    .line 461
    :cond_a5
    if-nez v16, :cond_c4

    .line 462
    new-instance v20, Ljava/lang/NumberFormatException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 463
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 466
    :cond_c4
    const/4 v8, 0x1

    .line 471
    .end local v4    # "b":B
    :cond_c5
    if-ne v11, v9, :cond_f4

    .line 472
    invoke-virtual/range {v17 .. v17}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lokio/Buffer;->head:Lokio/Segment;

    .line 473
    invoke-static/range {v17 .. v17}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 477
    :goto_d4
    if-nez v8, :cond_de

    move-object/from16 v0, p0

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v20, v0

    if-nez v20, :cond_21

    .line 479
    :cond_de
    move-object/from16 v0, p0

    iget-wide v0, v0, Lokio/Buffer;->size:J

    move-wide/from16 v20, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lokio/Buffer;->size:J

    .line 480
    if-eqz v10, :cond_f9

    .end local v18    # "value":J
    :goto_f3
    return-wide v18

    .line 475
    .restart local v18    # "value":J
    :cond_f4
    move-object/from16 v0, v17

    iput v11, v0, Lokio/Segment;->pos:I

    goto :goto_d4

    .line 480
    :cond_f9
    move-wide/from16 v0, v18

    neg-long v0, v0

    move-wide/from16 v18, v0

    goto :goto_f3
.end method

.method public final readFrom(Ljava/io/InputStream;)Lokio/Buffer;
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lokio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    .line 235
    return-object p0
.end method

.method public final readFrom(Ljava/io/InputStream;J)Lokio/Buffer;
    .registers 8
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1f

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

    .line 241
    :cond_1f
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lokio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    .line 242
    return-object p0
.end method

.method public readFully(Lokio/Buffer;J)V
    .registers 6
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 667
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, v0, p2

    if-gez v0, :cond_11

    .line 668
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p1, p0, v0, v1}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 669
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 671
    :cond_11
    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 672
    return-void
.end method

.method public readFully([B)V
    .registers 5
    .param p1, "sink"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 871
    const/4 v0, 0x0

    .line 872
    .local v0, "offset":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_15

    .line 873
    array-length v2, p1

    sub-int/2addr v2, v0

    invoke-virtual {p0, p1, v0, v2}, Lokio/Buffer;->read([BII)I

    move-result v1

    .line 874
    .local v1, "read":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 875
    :cond_13
    add-int/2addr v0, v1

    .line 876
    goto :goto_1

    .line 877
    .end local v1    # "read":I
    :cond_15
    return-void
.end method

.method public readHexadecimalUnsignedLong()J
    .registers 19

    .prologue
    .line 484
    move-object/from16 v0, p0

    iget-wide v14, v0, Lokio/Buffer;->size:J

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_12

    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v14, "size == 0"

    invoke-direct {v11, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 486
    :cond_12
    const-wide/16 v12, 0x0

    .line 487
    .local v12, "value":J
    const/4 v9, 0x0

    .line 488
    .local v9, "seen":I
    const/4 v6, 0x0

    .line 491
    .local v6, "done":Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v10, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 493
    .local v10, "segment":Lokio/Segment;
    iget-object v4, v10, Lokio/Segment;->data:[B

    .line 494
    .local v4, "data":[B
    iget v8, v10, Lokio/Segment;->pos:I

    .line 495
    .local v8, "pos":I
    iget v7, v10, Lokio/Segment;->limit:I

    .line 497
    .local v7, "limit":I
    :goto_20
    if-ge v8, v7, :cond_9b

    .line 500
    aget-byte v2, v4, v8

    .line 501
    .local v2, "b":B
    const/16 v11, 0x30

    if-lt v2, v11, :cond_61

    const/16 v11, 0x39

    if-gt v2, v11, :cond_61

    .line 502
    add-int/lit8 v5, v2, -0x30

    .line 518
    .local v5, "digit":I
    :goto_2e
    const-wide/high16 v14, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v14, v12

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_be

    .line 519
    new-instance v11, Lokio/Buffer;

    invoke-direct {v11}, Lokio/Buffer;-><init>()V

    invoke-virtual {v11, v12, v13}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object v11

    invoke-virtual {v11, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v3

    .line 520
    .local v3, "buffer":Lokio/Buffer;
    new-instance v11, Ljava/lang/NumberFormatException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Number too large: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 503
    .end local v3    # "buffer":Lokio/Buffer;
    .end local v5    # "digit":I
    :cond_61
    const/16 v11, 0x61

    if-lt v2, v11, :cond_6e

    const/16 v11, 0x66

    if-gt v2, v11, :cond_6e

    .line 504
    add-int/lit8 v11, v2, -0x61

    add-int/lit8 v5, v11, 0xa

    .restart local v5    # "digit":I
    goto :goto_2e

    .line 505
    .end local v5    # "digit":I
    :cond_6e
    const/16 v11, 0x41

    if-lt v2, v11, :cond_7b

    const/16 v11, 0x46

    if-gt v2, v11, :cond_7b

    .line 506
    add-int/lit8 v11, v2, -0x41

    add-int/lit8 v5, v11, 0xa

    .restart local v5    # "digit":I
    goto :goto_2e

    .line 508
    .end local v5    # "digit":I
    :cond_7b
    if-nez v9, :cond_9a

    .line 509
    new-instance v11, Ljava/lang/NumberFormatException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 510
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 513
    :cond_9a
    const/4 v6, 0x1

    .line 527
    .end local v2    # "b":B
    :cond_9b
    if-ne v8, v7, :cond_c8

    .line 528
    invoke-virtual {v10}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 529
    invoke-static {v10}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 533
    :goto_a8
    if-nez v6, :cond_b0

    move-object/from16 v0, p0

    iget-object v11, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v11, :cond_16

    .line 535
    :cond_b0
    move-object/from16 v0, p0

    iget-wide v14, v0, Lokio/Buffer;->size:J

    int-to-long v0, v9

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lokio/Buffer;->size:J

    .line 536
    return-wide v12

    .line 523
    .restart local v2    # "b":B
    .restart local v5    # "digit":I
    :cond_be
    const/4 v11, 0x4

    shl-long/2addr v12, v11

    .line 524
    int-to-long v14, v5

    or-long/2addr v12, v14

    .line 497
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_20

    .line 531
    .end local v2    # "b":B
    .end local v5    # "digit":I
    :cond_c8
    iput v8, v10, Lokio/Segment;->pos:I

    goto :goto_a8
.end method

.method public readInt()I
    .registers 11

    .prologue
    const-wide/16 v8, 0x4

    .line 348
    iget-wide v6, p0, Lokio/Buffer;->size:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_23

    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "size < 4: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lokio/Buffer;->size:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 350
    :cond_23
    iget-object v5, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 351
    .local v5, "segment":Lokio/Segment;
    iget v3, v5, Lokio/Segment;->pos:I

    .line 352
    .local v3, "pos":I
    iget v2, v5, Lokio/Segment;->limit:I

    .line 355
    .local v2, "limit":I
    sub-int v6, v2, v3

    const/4 v7, 0x4

    if-ge v6, v7, :cond_51

    .line 356
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    .line 357
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    .line 358
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    .line 359
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    or-int v1, v6, v7

    .line 376
    :goto_50
    return v1

    .line 362
    :cond_51
    iget-object v0, v5, Lokio/Segment;->data:[B

    .line 363
    .local v0, "data":[B
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pos":I
    .local v4, "pos":I
    aget-byte v6, v0, v3

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    aget-byte v7, v0, v4

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    aget-byte v7, v0, v3

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    aget-byte v7, v0, v4

    and-int/lit16 v7, v7, 0xff

    or-int v1, v6, v7

    .line 367
    .local v1, "i":I
    iget-wide v6, p0, Lokio/Buffer;->size:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lokio/Buffer;->size:J

    .line 369
    if-ne v3, v2, :cond_86

    .line 370
    invoke-virtual {v5}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v6

    iput-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 371
    invoke-static {v5}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_50

    .line 373
    :cond_86
    iput v3, v5, Lokio/Segment;->pos:I

    goto :goto_50
.end method

.method public readIntLe()I
    .registers 2

    .prologue
    .line 418
    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result v0

    invoke-static {v0}, Lokio/Util;->reverseBytesInt(I)I

    move-result v0

    return v0
.end method

.method public readLong()J
    .registers 15

    .prologue
    .line 380
    iget-wide v8, p0, Lokio/Buffer;->size:J

    const-wide/16 v10, 0x8

    cmp-long v5, v8, v10

    if-gez v5, :cond_23

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "size < 8: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lokio/Buffer;->size:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 382
    :cond_23
    iget-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 383
    .local v4, "segment":Lokio/Segment;
    iget v2, v4, Lokio/Segment;->pos:I

    .line 384
    .local v2, "pos":I
    iget v1, v4, Lokio/Segment;->limit:I

    .line 387
    .local v1, "limit":I
    sub-int v5, v1, v2

    const/16 v8, 0x8

    if-ge v5, v8, :cond_4b

    .line 388
    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result v5

    int-to-long v8, v5

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    const/16 v5, 0x20

    shl-long/2addr v8, v5

    .line 389
    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result v5

    int-to-long v10, v5

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    or-long v6, v8, v10

    .line 410
    :goto_4a
    return-wide v6

    .line 392
    :cond_4b
    iget-object v0, v4, Lokio/Segment;->data:[B

    .line 393
    .local v0, "data":[B
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .local v3, "pos":I
    aget-byte v5, v0, v2

    int-to-long v8, v5

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    const/16 v5, 0x38

    shl-long/2addr v8, v5

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    aget-byte v5, v0, v3

    int-to-long v10, v5

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v5, 0x30

    shl-long/2addr v10, v5

    or-long/2addr v8, v10

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .restart local v3    # "pos":I
    aget-byte v5, v0, v2

    int-to-long v10, v5

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v5, 0x28

    shl-long/2addr v10, v5

    or-long/2addr v8, v10

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    aget-byte v5, v0, v3

    int-to-long v10, v5

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v5, 0x20

    shl-long/2addr v10, v5

    or-long/2addr v8, v10

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .restart local v3    # "pos":I
    aget-byte v5, v0, v2

    int-to-long v10, v5

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v5, 0x18

    shl-long/2addr v10, v5

    or-long/2addr v8, v10

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    aget-byte v5, v0, v3

    int-to-long v10, v5

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v5, 0x10

    shl-long/2addr v10, v5

    or-long/2addr v8, v10

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .restart local v3    # "pos":I
    aget-byte v5, v0, v2

    int-to-long v10, v5

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v5, 0x8

    shl-long/2addr v10, v5

    or-long/2addr v8, v10

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    aget-byte v5, v0, v3

    int-to-long v10, v5

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    or-long v6, v8, v10

    .line 401
    .local v6, "v":J
    iget-wide v8, p0, Lokio/Buffer;->size:J

    const-wide/16 v10, 0x8

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lokio/Buffer;->size:J

    .line 403
    if-ne v2, v1, :cond_bd

    .line 404
    invoke-virtual {v4}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v5

    iput-object v5, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 405
    invoke-static {v4}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_4a

    .line 407
    :cond_bd
    iput v2, v4, Lokio/Segment;->pos:I

    goto :goto_4a
.end method

.method public readLongLe()J
    .registers 3

    .prologue
    .line 422
    invoke-virtual {p0}, Lokio/Buffer;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lokio/Util;->reverseBytesLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .registers 11

    .prologue
    const-wide/16 v8, 0x2

    .line 319
    iget-wide v6, p0, Lokio/Buffer;->size:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_23

    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "size < 2: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lokio/Buffer;->size:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 321
    :cond_23
    iget-object v5, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 322
    .local v5, "segment":Lokio/Segment;
    iget v2, v5, Lokio/Segment;->pos:I

    .line 323
    .local v2, "pos":I
    iget v1, v5, Lokio/Segment;->limit:I

    .line 326
    .local v1, "limit":I
    sub-int v6, v1, v2

    const/4 v7, 0x2

    if-ge v6, v7, :cond_40

    .line 327
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    .line 328
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    or-int v4, v6, v7

    .line 329
    .local v4, "s":I
    int-to-short v6, v4

    .line 344
    :goto_3f
    return v6

    .line 332
    .end local v4    # "s":I
    :cond_40
    iget-object v0, v5, Lokio/Segment;->data:[B

    .line 333
    .local v0, "data":[B
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .local v3, "pos":I
    aget-byte v6, v0, v2

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    aget-byte v7, v0, v3

    and-int/lit16 v7, v7, 0xff

    or-int v4, v6, v7

    .line 335
    .restart local v4    # "s":I
    iget-wide v6, p0, Lokio/Buffer;->size:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lokio/Buffer;->size:J

    .line 337
    if-ne v2, v1, :cond_64

    .line 338
    invoke-virtual {v5}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v6

    iput-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 339
    invoke-static {v5}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 344
    :goto_62
    int-to-short v6, v4

    goto :goto_3f

    .line 341
    :cond_64
    iput v2, v5, Lokio/Segment;->pos:I

    goto :goto_62
.end method

.method public readShortLe()S
    .registers 2

    .prologue
    .line 414
    invoke-virtual {p0}, Lokio/Buffer;->readShort()S

    move-result v0

    invoke-static {v0}, Lokio/Util;->reverseBytesShort(S)S

    move-result v0

    return v0
.end method

.method public readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 13
    .param p1, "byteCount"    # J
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 703
    iget-wide v0, p0, Lokio/Buffer;->size:J

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 704
    if-nez p3, :cond_12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 705
    :cond_12
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_32

    .line 706
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 708
    :cond_32
    cmp-long v0, p1, v2

    if-nez v0, :cond_39

    const-string v6, ""

    .line 725
    :cond_38
    :goto_38
    return-object v6

    .line 710
    :cond_39
    iget-object v7, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 711
    .local v7, "s":Lokio/Segment;
    iget v0, v7, Lokio/Segment;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    iget v2, v7, Lokio/Segment;->limit:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_50

    .line 713
    new-instance v6, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v0

    invoke-direct {v6, v0, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_38

    .line 716
    :cond_50
    new-instance v6, Ljava/lang/String;

    iget-object v0, v7, Lokio/Segment;->data:[B

    iget v1, v7, Lokio/Segment;->pos:I

    long-to-int v2, p1

    invoke-direct {v6, v0, v1, v2, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 717
    .local v6, "result":Ljava/lang/String;
    iget v0, v7, Lokio/Segment;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, v7, Lokio/Segment;->pos:I

    .line 718
    iget-wide v0, p0, Lokio/Buffer;->size:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 720
    iget v0, v7, Lokio/Segment;->pos:I

    iget v1, v7, Lokio/Segment;->limit:I

    if-ne v0, v1, :cond_38

    .line 721
    invoke-virtual {v7}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v0

    iput-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 722
    invoke-static {v7}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_38
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 6
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 696
    :try_start_0
    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v2, v3, p1}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 697
    :catch_7
    move-exception v0

    .line 698
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final readUnsafe()Lokio/Buffer$UnsafeCursor;
    .registers 2

    .prologue
    .line 1835
    new-instance v0, Lokio/Buffer$UnsafeCursor;

    invoke-direct {v0}, Lokio/Buffer$UnsafeCursor;-><init>()V

    invoke-virtual {p0, v0}, Lokio/Buffer;->readUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    move-result-object v0

    return-object v0
.end method

.method public final readUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    .registers 4
    .param p1, "unsafeCursor"    # Lokio/Buffer$UnsafeCursor;

    .prologue
    .line 1839
    iget-object v0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v0, :cond_c

    .line 1840
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already attached to a buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1843
    :cond_c
    iput-object p0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 1844
    const/4 v0, 0x0

    iput-boolean v0, p1, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    .line 1845
    return-object p1
.end method

.method public readUtf8()Ljava/lang/String;
    .registers 5

    .prologue
    .line 684
    :try_start_0
    iget-wide v2, p0, Lokio/Buffer;->size:J

    sget-object v1, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2, v3, v1}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    return-object v1

    .line 685
    :catch_9
    move-exception v0

    .line 686
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public readUtf8(J)Ljava/lang/String;
    .registers 4
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 691
    sget-object v0, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8CodePoint()I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const v6, 0xfffd

    .line 773
    iget-wide v8, p0, Lokio/Buffer;->size:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_11

    new-instance v6, Ljava/io/EOFException;

    invoke-direct {v6}, Ljava/io/EOFException;-><init>()V

    throw v6

    .line 775
    :cond_11
    invoke-virtual {p0, v10, v11}, Lokio/Buffer;->getByte(J)B

    move-result v1

    .line 780
    .local v1, "b0":B
    and-int/lit16 v7, v1, 0x80

    if-nez v7, :cond_5d

    .line 782
    and-int/lit8 v3, v1, 0x7f

    .line 783
    .local v3, "codePoint":I
    const/4 v2, 0x1

    .line 784
    .local v2, "byteCount":I
    const/4 v5, 0x0

    .line 810
    .local v5, "min":I
    :goto_1d
    iget-wide v8, p0, Lokio/Buffer;->size:J

    int-to-long v10, v2

    cmp-long v7, v8, v10

    if-gez v7, :cond_88

    .line 811
    new-instance v6, Ljava/io/EOFException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "size < "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lokio/Buffer;->size:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (to read code point prefixed 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 812
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 786
    .end local v2    # "byteCount":I
    .end local v3    # "codePoint":I
    .end local v5    # "min":I
    :cond_5d
    and-int/lit16 v7, v1, 0xe0

    const/16 v8, 0xc0

    if-ne v7, v8, :cond_69

    .line 788
    and-int/lit8 v3, v1, 0x1f

    .line 789
    .restart local v3    # "codePoint":I
    const/4 v2, 0x2

    .line 790
    .restart local v2    # "byteCount":I
    const/16 v5, 0x80

    .restart local v5    # "min":I
    goto :goto_1d

    .line 792
    .end local v2    # "byteCount":I
    .end local v3    # "codePoint":I
    .end local v5    # "min":I
    :cond_69
    and-int/lit16 v7, v1, 0xf0

    const/16 v8, 0xe0

    if-ne v7, v8, :cond_75

    .line 794
    and-int/lit8 v3, v1, 0xf

    .line 795
    .restart local v3    # "codePoint":I
    const/4 v2, 0x3

    .line 796
    .restart local v2    # "byteCount":I
    const/16 v5, 0x800

    .restart local v5    # "min":I
    goto :goto_1d

    .line 798
    .end local v2    # "byteCount":I
    .end local v3    # "codePoint":I
    .end local v5    # "min":I
    :cond_75
    and-int/lit16 v7, v1, 0xf8

    const/16 v8, 0xf0

    if-ne v7, v8, :cond_81

    .line 800
    and-int/lit8 v3, v1, 0x7

    .line 801
    .restart local v3    # "codePoint":I
    const/4 v2, 0x4

    .line 802
    .restart local v2    # "byteCount":I
    const/high16 v5, 0x10000

    .restart local v5    # "min":I
    goto :goto_1d

    .line 806
    .end local v2    # "byteCount":I
    .end local v3    # "codePoint":I
    .end local v5    # "min":I
    :cond_81
    const-wide/16 v8, 0x1

    invoke-virtual {p0, v8, v9}, Lokio/Buffer;->skip(J)V

    move v3, v6

    .line 844
    :cond_87
    :goto_87
    return v3

    .line 818
    .restart local v2    # "byteCount":I
    .restart local v3    # "codePoint":I
    .restart local v5    # "min":I
    :cond_88
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_89
    if-ge v4, v2, :cond_a4

    .line 819
    int-to-long v8, v4

    invoke-virtual {p0, v8, v9}, Lokio/Buffer;->getByte(J)B

    move-result v0

    .line 820
    .local v0, "b":B
    and-int/lit16 v7, v0, 0xc0

    const/16 v8, 0x80

    if-ne v7, v8, :cond_9e

    .line 822
    shl-int/lit8 v3, v3, 0x6

    .line 823
    and-int/lit8 v7, v0, 0x3f

    or-int/2addr v3, v7

    .line 818
    add-int/lit8 v4, v4, 0x1

    goto :goto_89

    .line 825
    :cond_9e
    int-to-long v8, v4

    invoke-virtual {p0, v8, v9}, Lokio/Buffer;->skip(J)V

    move v3, v6

    .line 826
    goto :goto_87

    .line 830
    .end local v0    # "b":B
    :cond_a4
    int-to-long v8, v2

    invoke-virtual {p0, v8, v9}, Lokio/Buffer;->skip(J)V

    .line 832
    const v7, 0x10ffff

    if-le v3, v7, :cond_af

    move v3, v6

    .line 833
    goto :goto_87

    .line 836
    :cond_af
    const v7, 0xd800

    if-lt v3, v7, :cond_bb

    const v7, 0xdfff

    if-gt v3, v7, :cond_bb

    move v3, v6

    .line 837
    goto :goto_87

    .line 840
    :cond_bb
    if-ge v3, v5, :cond_87

    move v3, v6

    .line 841
    goto :goto_87
.end method

.method public readUtf8Line()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 729
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lokio/Buffer;->indexOf(B)J

    move-result-wide v0

    .line 731
    .local v0, "newline":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1d

    .line 732
    iget-wide v2, p0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1b

    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v2

    .line 735
    :goto_1a
    return-object v2

    .line 732
    :cond_1b
    const/4 v2, 0x0

    goto :goto_1a

    .line 735
    :cond_1d
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_1a
.end method

.method readUtf8Line(J)Ljava/lang/String;
    .registers 10
    .param p1, "newline"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x1

    .line 758
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_1f

    sub-long v2, p1, v4

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1f

    .line 760
    sub-long v2, p1, v4

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    .line 761
    .local v0, "result":Ljava/lang/String;
    const-wide/16 v2, 0x2

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->skip(J)V

    move-object v1, v0

    .line 768
    .end local v0    # "result":Ljava/lang/String;
    .local v1, "result":Ljava/lang/String;
    :goto_1e
    return-object v1

    .line 766
    .end local v1    # "result":Ljava/lang/String;
    :cond_1f
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    .line 767
    .restart local v0    # "result":Ljava/lang/String;
    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->skip(J)V

    move-object v1, v0

    .line 768
    .end local v0    # "result":Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_1e
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 739
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8LineStrict(J)Ljava/lang/String;
    .registers 20
    .param p1, "limit"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 743
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_21

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "limit < 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 744
    :cond_21
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, p1, v2

    if-nez v2, :cond_46

    const-wide v6, 0x7fffffffffffffffL

    .line 745
    .local v6, "scanLength":J
    :goto_2f
    const/16 v3, 0xa

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v14

    .line 746
    .local v14, "newline":J
    const-wide/16 v2, -0x1

    cmp-long v2, v14, v2

    if-eqz v2, :cond_4b

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v2

    .line 749
    :goto_45
    return-object v2

    .line 744
    .end local v6    # "scanLength":J
    .end local v14    # "newline":J
    :cond_46
    const-wide/16 v2, 0x1

    add-long v6, p1, v2

    goto :goto_2f

    .line 747
    .restart local v6    # "scanLength":J
    .restart local v14    # "newline":J
    :cond_4b
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v2, v6, v2

    if-gez v2, :cond_72

    const-wide/16 v2, 0x1

    sub-long v2, v6, v2

    .line 748
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_72

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lokio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_72

    .line 749
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_45

    .line 751
    :cond_72
    new-instance v9, Lokio/Buffer;

    invoke-direct {v9}, Lokio/Buffer;-><init>()V

    .line 752
    .local v9, "data":Lokio/Buffer;
    const-wide/16 v10, 0x0

    const-wide/16 v2, 0x20

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 753
    new-instance v2, Ljava/io/EOFException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\n not found: limit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v4

    move-wide/from16 v0, p1

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " content="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 754
    invoke-virtual {v9}, Lokio/Buffer;->readByteString()Lokio/ByteString;

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
.end method

.method public request(J)Z
    .registers 6
    .param p1, "byteCount"    # J

    .prologue
    .line 113
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public require(J)V
    .registers 6
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 109
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_c

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 110
    :cond_c
    return-void
.end method

.method segmentSizes()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1673
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v2, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1679
    :cond_8
    return-object v0

    .line 1674
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1675
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v2, v2, Lokio/Segment;->limit:I

    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v3, v3, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1676
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v1, v2, Lokio/Segment;->next:Lokio/Segment;

    .local v1, "s":Lokio/Segment;
    :goto_22
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v1, v2, :cond_8

    .line 1677
    iget v2, v1, Lokio/Segment;->limit:I

    iget v3, v1, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1676
    iget-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_22
.end method

.method public select(Lokio/Options;)I
    .registers 8
    .param p1, "options"    # Lokio/Options;

    .prologue
    const/4 v3, -0x1

    .line 548
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lokio/Buffer;->selectPrefix(Lokio/Options;Z)I

    move-result v1

    .line 549
    .local v1, "index":I
    if-ne v1, v3, :cond_a

    move v1, v3

    .line 558
    .end local v1    # "index":I
    :goto_9
    return v1

    .line 552
    .restart local v1    # "index":I
    :cond_a
    iget-object v3, p1, Lokio/Options;->byteStrings:[Lokio/ByteString;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v2

    .line 554
    .local v2, "selectedSize":I
    int-to-long v4, v2

    :try_start_13
    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->skip(J)V
    :try_end_16
    .catch Ljava/io/EOFException; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_9

    .line 555
    :catch_17
    move-exception v0

    .line 556
    .local v0, "e":Ljava/io/EOFException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method selectPrefix(Lokio/Options;Z)I
    .registers 25
    .param p1, "options"    # Lokio/Options;
    .param p2, "selectTruncated"    # Z

    .prologue
    .line 574
    move-object/from16 v0, p0

    iget-object v4, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 575
    .local v4, "head":Lokio/Segment;
    if-nez v4, :cond_15

    .line 576
    if-eqz p2, :cond_a

    const/4 v10, -0x2

    .line 663
    :cond_9
    :goto_9
    return v10

    .line 577
    :cond_a
    sget-object v21, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lokio/Options;->indexOf(Ljava/lang/Object;)I

    move-result v10

    goto :goto_9

    .line 580
    :cond_15
    move-object v11, v4

    .line 581
    .local v11, "s":Lokio/Segment;
    iget-object v3, v4, Lokio/Segment;->data:[B

    .line 582
    .local v3, "data":[B
    iget v7, v4, Lokio/Segment;->pos:I

    .line 583
    .local v7, "pos":I
    iget v5, v4, Lokio/Segment;->limit:I

    .line 585
    .local v5, "limit":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lokio/Options;->trie:[I

    move-object/from16 v17, v0

    .line 586
    .local v17, "trie":[I
    const/16 v19, 0x0

    .line 588
    .local v19, "triePos":I
    const/4 v10, -0x1

    .line 592
    .local v10, "prefixIndex":I
    :goto_25
    add-int/lit8 v20, v19, 0x1

    .end local v19    # "triePos":I
    .local v20, "triePos":I
    aget v14, v17, v19

    .line 594
    .local v14, "scanOrSelect":I
    add-int/lit8 v19, v20, 0x1

    .end local v20    # "triePos":I
    .restart local v19    # "triePos":I
    aget v9, v17, v20

    .line 595
    .local v9, "possiblePrefixIndex":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v9, v0, :cond_34

    .line 596
    move v10, v9

    .line 601
    :cond_34
    if-nez v11, :cond_3a

    .line 662
    :goto_36
    if-eqz p2, :cond_9

    const/4 v10, -0x2

    goto :goto_9

    .line 603
    :cond_3a
    if-gez v14, :cond_78

    .line 605
    mul-int/lit8 v12, v14, -0x1

    .line 606
    .local v12, "scanByteCount":I
    add-int v18, v19, v12

    .line 608
    .local v18, "trieLimit":I
    :goto_40
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "pos":I
    .local v8, "pos":I
    aget-byte v21, v3, v7

    move/from16 v0, v21

    and-int/lit16 v2, v0, 0xff

    .line 609
    .local v2, "b":I
    add-int/lit8 v20, v19, 0x1

    .end local v19    # "triePos":I
    .restart local v20    # "triePos":I
    aget v21, v17, v19

    move/from16 v0, v21

    if-ne v2, v0, :cond_9

    .line 610
    move/from16 v0, v20

    move/from16 v1, v18

    if-ne v0, v1, :cond_68

    const/4 v13, 0x1

    .line 613
    .local v13, "scanComplete":Z
    :goto_57
    if-ne v8, v5, :cond_ab

    .line 614
    iget-object v11, v11, Lokio/Segment;->next:Lokio/Segment;

    .line 615
    iget v7, v11, Lokio/Segment;->pos:I

    .line 616
    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    iget-object v3, v11, Lokio/Segment;->data:[B

    .line 617
    iget v5, v11, Lokio/Segment;->limit:I

    .line 618
    if-ne v11, v4, :cond_6b

    .line 619
    if-nez v13, :cond_6a

    move/from16 v19, v20

    .end local v20    # "triePos":I
    .restart local v19    # "triePos":I
    goto :goto_36

    .line 610
    .end local v7    # "pos":I
    .end local v13    # "scanComplete":Z
    .end local v19    # "triePos":I
    .restart local v8    # "pos":I
    .restart local v20    # "triePos":I
    :cond_68
    const/4 v13, 0x0

    goto :goto_57

    .line 620
    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    .restart local v13    # "scanComplete":Z
    :cond_6a
    const/4 v11, 0x0

    .line 624
    :cond_6b
    :goto_6b
    if-eqz v13, :cond_75

    .line 625
    aget v6, v17, v20

    .local v6, "nextStep":I
    move/from16 v19, v20

    .line 657
    .end local v12    # "scanByteCount":I
    .end local v13    # "scanComplete":Z
    .end local v18    # "trieLimit":I
    .end local v20    # "triePos":I
    .restart local v19    # "triePos":I
    :cond_71
    :goto_71
    if-ltz v6, :cond_a4

    move v10, v6

    goto :goto_9

    .end local v6    # "nextStep":I
    .end local v19    # "triePos":I
    .restart local v12    # "scanByteCount":I
    .restart local v13    # "scanComplete":Z
    .restart local v18    # "trieLimit":I
    .restart local v20    # "triePos":I
    :cond_75
    move/from16 v19, v20

    .line 628
    .end local v20    # "triePos":I
    .restart local v19    # "triePos":I
    goto :goto_40

    .line 631
    .end local v2    # "b":I
    .end local v12    # "scanByteCount":I
    .end local v13    # "scanComplete":Z
    .end local v18    # "trieLimit":I
    :cond_78
    move v15, v14

    .line 632
    .local v15, "selectChoiceCount":I
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    aget-byte v21, v3, v7

    move/from16 v0, v21

    and-int/lit16 v2, v0, 0xff

    .line 633
    .restart local v2    # "b":I
    add-int v16, v19, v15

    .line 635
    .local v16, "selectLimit":I
    :goto_83
    move/from16 v0, v19

    move/from16 v1, v16

    if-eq v0, v1, :cond_9

    .line 637
    aget v21, v17, v19

    move/from16 v0, v21

    if-ne v2, v0, :cond_a1

    .line 638
    add-int v21, v19, v15

    aget v6, v17, v21

    .line 646
    .restart local v6    # "nextStep":I
    if-ne v8, v5, :cond_a9

    .line 647
    iget-object v11, v11, Lokio/Segment;->next:Lokio/Segment;

    .line 648
    iget v7, v11, Lokio/Segment;->pos:I

    .line 649
    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    iget-object v3, v11, Lokio/Segment;->data:[B

    .line 650
    iget v5, v11, Lokio/Segment;->limit:I

    .line 651
    if-ne v11, v4, :cond_71

    .line 652
    const/4 v11, 0x0

    goto :goto_71

    .line 642
    .end local v6    # "nextStep":I
    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    :cond_a1
    add-int/lit8 v19, v19, 0x1

    goto :goto_83

    .line 658
    .end local v8    # "pos":I
    .end local v15    # "selectChoiceCount":I
    .end local v16    # "selectLimit":I
    .restart local v6    # "nextStep":I
    .restart local v7    # "pos":I
    :cond_a4
    neg-int v0, v6

    move/from16 v19, v0

    .line 659
    goto/16 :goto_25

    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    .restart local v15    # "selectChoiceCount":I
    .restart local v16    # "selectLimit":I
    :cond_a9
    move v7, v8

    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    goto :goto_71

    .end local v6    # "nextStep":I
    .end local v7    # "pos":I
    .end local v15    # "selectChoiceCount":I
    .end local v16    # "selectLimit":I
    .end local v19    # "triePos":I
    .restart local v8    # "pos":I
    .restart local v12    # "scanByteCount":I
    .restart local v13    # "scanComplete":Z
    .restart local v18    # "trieLimit":I
    .restart local v20    # "triePos":I
    :cond_ab
    move v7, v8

    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    goto :goto_6b
.end method

.method public final sha1()Lokio/ByteString;
    .registers 2

    .prologue
    .line 1689
    const-string v0, "SHA-1"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final sha256()Lokio/ByteString;
    .registers 2

    .prologue
    .line 1694
    const-string v0, "SHA-256"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final sha512()Lokio/ByteString;
    .registers 2

    .prologue
    .line 1699
    const-string v0, "SHA-512"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final size()J
    .registers 3

    .prologue
    .line 67
    iget-wide v0, p0, Lokio/Buffer;->size:J

    return-wide v0
.end method

.method public skip(J)V
    .registers 10
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 930
    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_44

    .line 931
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v2, :cond_10

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 933
    :cond_10
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v2, v2, Lokio/Segment;->limit:I

    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v3, v3, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    .line 934
    .local v1, "toSkip":I
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 935
    int-to-long v2, v1

    sub-long/2addr p1, v2

    .line 936
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v3, v2, Lokio/Segment;->pos:I

    add-int/2addr v3, v1

    iput v3, v2, Lokio/Segment;->pos:I

    .line 938
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v2, v2, Lokio/Segment;->pos:I

    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v3, v3, Lokio/Segment;->limit:I

    if-ne v2, v3, :cond_0

    .line 939
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 940
    .local v0, "toRecycle":Lokio/Segment;
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 941
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 944
    .end local v0    # "toRecycle":Lokio/Segment;
    .end local v1    # "toSkip":I
    :cond_44
    return-void
.end method

.method public final snapshot()Lokio/ByteString;
    .registers 5

    .prologue
    .line 1820
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_24

    .line 1821
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1823
    :cond_24
    iget-wide v0, p0, Lokio/Buffer;->size:J

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lokio/Buffer;->snapshot(I)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final snapshot(I)Lokio/ByteString;
    .registers 3
    .param p1, "byteCount"    # I

    .prologue
    .line 1830
    if-nez p1, :cond_5

    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 1831
    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lokio/SegmentedByteString;

    invoke-direct {v0, p0, p1}, Lokio/SegmentedByteString;-><init>(Lokio/Buffer;I)V

    goto :goto_4
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .prologue
    .line 1668
    sget-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1801
    invoke-virtual {p0}, Lokio/Buffer;->snapshot()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writableSegment(I)Lokio/Segment;
    .registers 5
    .param p1, "minimumCapacity"    # I

    .prologue
    const/16 v2, 0x2000

    .line 1290
    const/4 v1, 0x1

    if-lt p1, v1, :cond_7

    if-le p1, v2, :cond_d

    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1292
    :cond_d
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_22

    .line 1293
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v1

    iput-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1294
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iput-object v0, v2, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v0, v1, Lokio/Segment;->next:Lokio/Segment;

    .line 1301
    :cond_21
    :goto_21
    return-object v0

    .line 1297
    :cond_22
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, v1, Lokio/Segment;->prev:Lokio/Segment;

    .line 1298
    .local v0, "tail":Lokio/Segment;
    iget v1, v0, Lokio/Segment;->limit:I

    add-int/2addr v1, p1

    if-gt v1, v2, :cond_2f

    iget-boolean v1, v0, Lokio/Segment;->owner:Z

    if-nez v1, :cond_21

    .line 1299
    :cond_2f
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v0

    goto :goto_21
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 10
    .param p1, "source"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1114
    if-nez p1, :cond_a

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "source == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1116
    :cond_a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 1117
    .local v0, "byteCount":I
    move v1, v0

    .line 1118
    .local v1, "remaining":I
    :goto_f
    if-lez v1, :cond_2c

    .line 1119
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v2

    .line 1121
    .local v2, "tail":Lokio/Segment;
    iget v4, v2, Lokio/Segment;->limit:I

    rsub-int v4, v4, 0x2000

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1122
    .local v3, "toCopy":I
    iget-object v4, v2, Lokio/Segment;->data:[B

    iget v5, v2, Lokio/Segment;->limit:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1124
    sub-int/2addr v1, v3

    .line 1125
    iget v4, v2, Lokio/Segment;->limit:I

    add-int/2addr v4, v3

    iput v4, v2, Lokio/Segment;->limit:I

    goto :goto_f

    .line 1128
    .end local v2    # "tail":Lokio/Segment;
    .end local v3    # "toCopy":I
    :cond_2c
    iget-wide v4, p0, Lokio/Buffer;->size:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lokio/Buffer;->size:J

    .line 1129
    return v0
.end method

.method public write(Lokio/ByteString;)Lokio/Buffer;
    .registers 4
    .param p1, "byteString"    # Lokio/ByteString;

    .prologue
    .line 947
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byteString == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 948
    :cond_a
    invoke-virtual {p1, p0}, Lokio/ByteString;->write(Lokio/Buffer;)V

    .line 949
    return-object p0
.end method

.method public write([B)Lokio/Buffer;
    .registers 4
    .param p1, "source"    # [B

    .prologue
    .line 1090
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1091
    :cond_a
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public write([BII)Lokio/Buffer;
    .registers 13
    .param p1, "source"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .prologue
    .line 1095
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1096
    :cond_a
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 1098
    add-int v6, p2, p3

    .line 1099
    .local v6, "limit":I
    :goto_13
    if-ge p2, v6, :cond_32

    .line 1100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v7

    .line 1102
    .local v7, "tail":Lokio/Segment;
    sub-int v0, v6, p2

    iget v1, v7, Lokio/Segment;->limit:I

    rsub-int v1, v1, 0x2000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1103
    .local v8, "toCopy":I
    iget-object v0, v7, Lokio/Segment;->data:[B

    iget v1, v7, Lokio/Segment;->limit:I

    invoke-static {p1, p2, v0, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1105
    add-int/2addr p2, v8

    .line 1106
    iget v0, v7, Lokio/Segment;->limit:I

    add-int/2addr v0, v8

    iput v0, v7, Lokio/Segment;->limit:I

    goto :goto_13

    .line 1109
    .end local v7    # "tail":Lokio/Segment;
    .end local v8    # "toCopy":I
    :cond_32
    iget-wide v0, p0, Lokio/Buffer;->size:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 1110
    return-object p0
.end method

.method public bridge synthetic write(Lokio/ByteString;)Lokio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/Source;J)Lokio/BufferedSink;
    .registers 8
    .param p1, "source"    # Lokio/Source;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1142
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_18

    .line 1143
    invoke-interface {p1, p0, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    .line 1144
    .local v0, "read":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_16

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 1145
    :cond_16
    sub-long/2addr p2, v0

    .line 1146
    goto :goto_0

    .line 1147
    .end local v0    # "read":J
    :cond_18
    return-object p0
.end method

.method public bridge synthetic write([B)Lokio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->write([B)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic write([BII)Lokio/BufferedSink;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .registers 14
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 1355
    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1356
    :cond_c
    if-ne p1, p0, :cond_16

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == this"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1357
    :cond_16
    iget-wide v0, p1, Lokio/Buffer;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 1359
    :goto_1c
    cmp-long v0, p2, v2

    if-lez v0, :cond_5f

    .line 1361
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    iget v0, v0, Lokio/Segment;->limit:I

    iget-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gez v0, :cond_6e

    .line 1362
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_60

    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v9, v0, Lokio/Segment;->prev:Lokio/Segment;

    .line 1363
    .local v9, "tail":Lokio/Segment;
    :goto_36
    if-eqz v9, :cond_65

    iget-boolean v0, v9, Lokio/Segment;->owner:Z

    if-eqz v0, :cond_65

    iget v0, v9, Lokio/Segment;->limit:I

    int-to-long v0, v0

    add-long v4, p2, v0

    iget-boolean v0, v9, Lokio/Segment;->shared:Z

    if-eqz v0, :cond_62

    .line 1364
    const/4 v0, 0x0

    :goto_46
    int-to-long v0, v0

    sub-long v0, v4, v0

    const-wide/16 v4, 0x2000

    cmp-long v0, v0, v4

    if-gtz v0, :cond_65

    .line 1366
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    long-to-int v1, p2

    invoke-virtual {v0, v9, v1}, Lokio/Segment;->writeTo(Lokio/Segment;I)V

    .line 1367
    iget-wide v0, p1, Lokio/Buffer;->size:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lokio/Buffer;->size:J

    .line 1368
    iget-wide v0, p0, Lokio/Buffer;->size:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 1393
    .end local v9    # "tail":Lokio/Segment;
    :cond_5f
    return-void

    .line 1362
    :cond_60
    const/4 v9, 0x0

    goto :goto_36

    .line 1364
    .restart local v9    # "tail":Lokio/Segment;
    :cond_62
    iget v0, v9, Lokio/Segment;->pos:I

    goto :goto_46

    .line 1373
    :cond_65
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    long-to-int v1, p2

    invoke-virtual {v0, v1}, Lokio/Segment;->split(I)Lokio/Segment;

    move-result-object v0

    iput-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1378
    .end local v9    # "tail":Lokio/Segment;
    :cond_6e
    iget-object v8, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1379
    .local v8, "segmentToMove":Lokio/Segment;
    iget v0, v8, Lokio/Segment;->limit:I

    iget v1, v8, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v6, v0

    .line 1380
    .local v6, "movedByteCount":J
    invoke-virtual {v8}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v0

    iput-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1381
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_98

    .line 1382
    iput-object v8, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1383
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;

    iput-object v4, v1, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v4, v0, Lokio/Segment;->next:Lokio/Segment;

    .line 1389
    :goto_8c
    iget-wide v0, p1, Lokio/Buffer;->size:J

    sub-long/2addr v0, v6

    iput-wide v0, p1, Lokio/Buffer;->size:J

    .line 1390
    iget-wide v0, p0, Lokio/Buffer;->size:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 1391
    sub-long/2addr p2, v6

    .line 1392
    goto :goto_1c

    .line 1385
    :cond_98
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v9, v0, Lokio/Segment;->prev:Lokio/Segment;

    .line 1386
    .restart local v9    # "tail":Lokio/Segment;
    invoke-virtual {v9, v8}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v9

    .line 1387
    invoke-virtual {v9}, Lokio/Segment;->compact()V

    goto :goto_8c
.end method

.method public writeAll(Lokio/Source;)J
    .registers 8
    .param p1, "source"    # Lokio/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1133
    if-nez p1, :cond_a

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "source == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1134
    :cond_a
    const-wide/16 v2, 0x0

    .line 1135
    .local v2, "totalBytesRead":J
    :goto_c
    const-wide/16 v4, 0x2000

    invoke-interface {p1, p0, v4, v5}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    .local v0, "readCount":J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_1a

    .line 1136
    add-long/2addr v2, v0

    goto :goto_c

    .line 1138
    :cond_1a
    return-wide v2
.end method

.method public writeByte(I)Lokio/Buffer;
    .registers 8
    .param p1, "b"    # I

    .prologue
    .line 1151
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v0

    .line 1152
    .local v0, "tail":Lokio/Segment;
    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v2, v0, Lokio/Segment;->limit:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lokio/Segment;->limit:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 1153
    iget-wide v2, p0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 1154
    return-object p0
.end method

.method public bridge synthetic writeByte(I)Lokio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeDecimalLong(J)Lokio/Buffer;
    .registers 16
    .param p1, "v"    # J

    .prologue
    const-wide/16 v10, 0xa

    const-wide/16 v8, 0x0

    .line 1211
    cmp-long v6, p1, v8

    if-nez v6, :cond_f

    .line 1213
    const/16 v6, 0x30

    invoke-virtual {p0, v6}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object p0

    .line 1263
    .end local p0    # "this":Lokio/Buffer;
    :goto_e
    return-object p0

    .line 1216
    .restart local p0    # "this":Lokio/Buffer;
    :cond_f
    const/4 v2, 0x0

    .line 1217
    .local v2, "negative":Z
    cmp-long v6, p1, v8

    if-gez v6, :cond_21

    .line 1218
    neg-long p1, p1

    .line 1219
    cmp-long v6, p1, v8

    if-gez v6, :cond_20

    .line 1220
    const-string v6, "-9223372036854775808"

    invoke-virtual {p0, v6}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p0

    goto :goto_e

    .line 1222
    :cond_20
    const/4 v2, 0x1

    .line 1226
    :cond_21
    const-wide/32 v6, 0x5f5e100

    cmp-long v6, p1, v6

    if-gez v6, :cond_82

    .line 1229
    const-wide/16 v6, 0x2710

    cmp-long v6, p1, v6

    if-gez v6, :cond_64

    .line 1230
    const-wide/16 v6, 0x64

    cmp-long v6, p1, v6

    if-gez v6, :cond_5a

    cmp-long v6, p1, v10

    if-gez v6, :cond_58

    const/4 v5, 0x1

    .line 1245
    .local v5, "width":I
    :goto_39
    if-eqz v2, :cond_3d

    .line 1246
    add-int/lit8 v5, v5, 0x1

    .line 1249
    :cond_3d
    invoke-virtual {p0, v5}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v4

    .line 1250
    .local v4, "tail":Lokio/Segment;
    iget-object v0, v4, Lokio/Segment;->data:[B

    .line 1251
    .local v0, "data":[B
    iget v6, v4, Lokio/Segment;->limit:I

    add-int v3, v6, v5

    .line 1252
    .local v3, "pos":I
    :goto_47
    cmp-long v6, p1, v8

    if-eqz v6, :cond_102

    .line 1253
    rem-long v6, p1, v10

    long-to-int v1, v6

    .line 1254
    .local v1, "digit":I
    add-int/lit8 v3, v3, -0x1

    sget-object v6, Lokio/Buffer;->DIGITS:[B

    aget-byte v6, v6, v1

    aput-byte v6, v0, v3

    .line 1255
    div-long/2addr p1, v10

    .line 1256
    goto :goto_47

    .line 1230
    .end local v0    # "data":[B
    .end local v1    # "digit":I
    .end local v3    # "pos":I
    .end local v4    # "tail":Lokio/Segment;
    .end local v5    # "width":I
    :cond_58
    const/4 v5, 0x2

    goto :goto_39

    .line 1231
    :cond_5a
    const-wide/16 v6, 0x3e8

    cmp-long v6, p1, v6

    if-gez v6, :cond_62

    const/4 v5, 0x3

    goto :goto_39

    :cond_62
    const/4 v5, 0x4

    goto :goto_39

    .line 1233
    :cond_64
    const-wide/32 v6, 0xf4240

    cmp-long v6, p1, v6

    if-gez v6, :cond_76

    const-wide/32 v6, 0x186a0

    cmp-long v6, p1, v6

    if-gez v6, :cond_74

    const/4 v5, 0x5

    goto :goto_39

    :cond_74
    const/4 v5, 0x6

    goto :goto_39

    .line 1234
    :cond_76
    const-wide/32 v6, 0x989680

    cmp-long v6, p1, v6

    if-gez v6, :cond_7f

    const/4 v5, 0x7

    goto :goto_39

    :cond_7f
    const/16 v5, 0x8

    goto :goto_39

    .line 1236
    :cond_82
    const-wide v6, 0xe8d4a51000L

    cmp-long v6, p1, v6

    if-gez v6, :cond_b0

    .line 1237
    const-wide v6, 0x2540be400L

    cmp-long v6, p1, v6

    if-gez v6, :cond_a1

    const-wide/32 v6, 0x3b9aca00

    cmp-long v6, p1, v6

    if-gez v6, :cond_9e

    const/16 v5, 0x9

    goto :goto_39

    :cond_9e
    const/16 v5, 0xa

    goto :goto_39

    .line 1238
    :cond_a1
    const-wide v6, 0x174876e800L

    cmp-long v6, p1, v6

    if-gez v6, :cond_ad

    const/16 v5, 0xb

    goto :goto_39

    :cond_ad
    const/16 v5, 0xc

    goto :goto_39

    .line 1240
    :cond_b0
    const-wide v6, 0x38d7ea4c68000L

    cmp-long v6, p1, v6

    if-gez v6, :cond_d7

    const-wide v6, 0x9184e72a000L

    cmp-long v6, p1, v6

    if-gez v6, :cond_c6

    const/16 v5, 0xd

    goto/16 :goto_39

    .line 1241
    :cond_c6
    const-wide v6, 0x5af3107a4000L

    cmp-long v6, p1, v6

    if-gez v6, :cond_d3

    const/16 v5, 0xe

    goto/16 :goto_39

    :cond_d3
    const/16 v5, 0xf

    goto/16 :goto_39

    .line 1243
    :cond_d7
    const-wide v6, 0x16345785d8a0000L

    cmp-long v6, p1, v6

    if-gez v6, :cond_f1

    const-wide v6, 0x2386f26fc10000L

    cmp-long v6, p1, v6

    if-gez v6, :cond_ed

    const/16 v5, 0x10

    goto/16 :goto_39

    :cond_ed
    const/16 v5, 0x11

    goto/16 :goto_39

    .line 1244
    :cond_f1
    const-wide v6, 0xde0b6b3a7640000L

    cmp-long v6, p1, v6

    if-gez v6, :cond_fe

    const/16 v5, 0x12

    goto/16 :goto_39

    :cond_fe
    const/16 v5, 0x13

    goto/16 :goto_39

    .line 1257
    .restart local v0    # "data":[B
    .restart local v3    # "pos":I
    .restart local v4    # "tail":Lokio/Segment;
    .restart local v5    # "width":I
    :cond_102
    if-eqz v2, :cond_10a

    .line 1258
    add-int/lit8 v3, v3, -0x1

    const/16 v6, 0x2d

    aput-byte v6, v0, v3

    .line 1261
    :cond_10a
    iget v6, v4, Lokio/Segment;->limit:I

    add-int/2addr v6, v5

    iput v6, v4, Lokio/Segment;->limit:I

    .line 1262
    iget-wide v6, p0, Lokio/Buffer;->size:J

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, Lokio/Buffer;->size:J

    goto/16 :goto_e
.end method

.method public bridge synthetic writeDecimalLong(J)Lokio/BufferedSink;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeHexadecimalUnsignedLong(J)Lokio/Buffer;
    .registers 14
    .param p1, "v"    # J

    .prologue
    .line 1267
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-nez v5, :cond_d

    .line 1269
    const/16 v5, 0x30

    invoke-virtual {p0, v5}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object p0

    .line 1282
    .end local p0    # "this":Lokio/Buffer;
    :goto_c
    return-object p0

    .line 1272
    .restart local p0    # "this":Lokio/Buffer;
    :cond_d
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    add-int/lit8 v4, v5, 0x1

    .line 1274
    .local v4, "width":I
    invoke-virtual {p0, v4}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v3

    .line 1275
    .local v3, "tail":Lokio/Segment;
    iget-object v0, v3, Lokio/Segment;->data:[B

    .line 1276
    .local v0, "data":[B
    iget v5, v3, Lokio/Segment;->limit:I

    add-int/2addr v5, v4

    add-int/lit8 v1, v5, -0x1

    .local v1, "pos":I
    iget v2, v3, Lokio/Segment;->limit:I

    .local v2, "start":I
    :goto_26
    if-lt v1, v2, :cond_37

    .line 1277
    sget-object v5, Lokio/Buffer;->DIGITS:[B

    const-wide/16 v6, 0xf

    and-long/2addr v6, p1

    long-to-int v6, v6

    aget-byte v5, v5, v6

    aput-byte v5, v0, v1

    .line 1278
    const/4 v5, 0x4

    ushr-long/2addr p1, v5

    .line 1276
    add-int/lit8 v1, v1, -0x1

    goto :goto_26

    .line 1280
    :cond_37
    iget v5, v3, Lokio/Segment;->limit:I

    add-int/2addr v5, v4

    iput v5, v3, Lokio/Segment;->limit:I

    .line 1281
    iget-wide v6, p0, Lokio/Buffer;->size:J

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Lokio/Buffer;->size:J

    goto :goto_c
.end method

.method public bridge synthetic writeHexadecimalUnsignedLong(J)Lokio/BufferedSink;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeInt(I)Lokio/Buffer;
    .registers 10
    .param p1, "i"    # I

    .prologue
    .line 1173
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v3

    .line 1174
    .local v3, "tail":Lokio/Segment;
    iget-object v0, v3, Lokio/Segment;->data:[B

    .line 1175
    .local v0, "data":[B
    iget v1, v3, Lokio/Segment;->limit:I

    .line 1176
    .local v1, "limit":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "limit":I
    .local v2, "limit":I
    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 1177
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "limit":I
    .restart local v1    # "limit":I
    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 1178
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "limit":I
    .restart local v2    # "limit":I
    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 1179
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "limit":I
    .restart local v1    # "limit":I
    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 1180
    iput v1, v3, Lokio/Segment;->limit:I

    .line 1181
    iget-wide v4, p0, Lokio/Buffer;->size:J

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lokio/Buffer;->size:J

    .line 1182
    return-object p0
.end method

.method public bridge synthetic writeInt(I)Lokio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeIntLe(I)Lokio/Buffer;
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 1186
    invoke-static {p1}, Lokio/Util;->reverseBytesInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeIntLe(I)Lokio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeIntLe(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeLong(J)Lokio/Buffer;
    .registers 12
    .param p1, "v"    # J

    .prologue
    const/16 v8, 0x8

    const-wide/16 v6, 0xff

    .line 1190
    invoke-virtual {p0, v8}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v3

    .line 1191
    .local v3, "tail":Lokio/Segment;
    iget-object v0, v3, Lokio/Segment;->data:[B

    .line 1192
    .local v0, "data":[B
    iget v1, v3, Lokio/Segment;->limit:I

    .line 1193
    .local v1, "limit":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "limit":I
    .local v2, "limit":I
    const/16 v4, 0x38

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 1194
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "limit":I
    .restart local v1    # "limit":I
    const/16 v4, 0x30

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 1195
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "limit":I
    .restart local v2    # "limit":I
    const/16 v4, 0x28

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 1196
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "limit":I
    .restart local v1    # "limit":I
    const/16 v4, 0x20

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 1197
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "limit":I
    .restart local v2    # "limit":I
    const/16 v4, 0x18

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 1198
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "limit":I
    .restart local v1    # "limit":I
    const/16 v4, 0x10

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 1199
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "limit":I
    .restart local v2    # "limit":I
    ushr-long v4, p1, v8

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 1200
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "limit":I
    .restart local v1    # "limit":I
    and-long v4, p1, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 1201
    iput v1, v3, Lokio/Segment;->limit:I

    .line 1202
    iget-wide v4, p0, Lokio/Buffer;->size:J

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lokio/Buffer;->size:J

    .line 1203
    return-object p0
.end method

.method public bridge synthetic writeLong(J)Lokio/BufferedSink;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeLongLe(J)Lokio/Buffer;
    .registers 6
    .param p1, "v"    # J

    .prologue
    .line 1207
    invoke-static {p1, p2}, Lokio/Util;->reverseBytesLong(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeLongLe(J)Lokio/BufferedSink;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeLongLe(J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeShort(I)Lokio/Buffer;
    .registers 10
    .param p1, "s"    # I

    .prologue
    .line 1158
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v3

    .line 1159
    .local v3, "tail":Lokio/Segment;
    iget-object v0, v3, Lokio/Segment;->data:[B

    .line 1160
    .local v0, "data":[B
    iget v1, v3, Lokio/Segment;->limit:I

    .line 1161
    .local v1, "limit":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "limit":I
    .local v2, "limit":I
    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 1162
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "limit":I
    .restart local v1    # "limit":I
    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 1163
    iput v1, v3, Lokio/Segment;->limit:I

    .line 1164
    iget-wide v4, p0, Lokio/Buffer;->size:J

    const-wide/16 v6, 0x2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lokio/Buffer;->size:J

    .line 1165
    return-object p0
.end method

.method public bridge synthetic writeShort(I)Lokio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeShortLe(I)Lokio/Buffer;
    .registers 3
    .param p1, "s"    # I

    .prologue
    .line 1169
    int-to-short v0, p1

    invoke-static {v0}, Lokio/Util;->reverseBytesShort(S)S

    move-result v0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeShortLe(I)Lokio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeShortLe(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;
    .registers 9
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 1074
    if-nez p1, :cond_a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "string == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1075
    :cond_a
    if-gez p2, :cond_25

    new-instance v1, Ljava/lang/IllegalAccessError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beginIndex < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1076
    :cond_25
    if-ge p3, p2, :cond_4a

    .line 1077
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "endIndex < beginIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1079
    :cond_4a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le p3, v1, :cond_77

    .line 1080
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "endIndex > string.length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1081
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1083
    :cond_77
    if-nez p4, :cond_81

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "charset == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1084
    :cond_81
    sget-object v1, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8e

    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v1

    .line 1086
    :goto_8d
    return-object v1

    .line 1085
    :cond_8e
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 1086
    .local v0, "data":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v1

    goto :goto_8d
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;
    .registers 5
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 1069
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/BufferedSink;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2, p3, p4}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/BufferedSink;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)Lokio/Buffer;
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->writeTo(Ljava/io/OutputStream;J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Ljava/io/OutputStream;J)Lokio/Buffer;
    .registers 14
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 210
    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_c
    iget-wide v0, p0, Lokio/Buffer;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 213
    iget-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 214
    .local v6, "s":Lokio/Segment;
    :cond_14
    :goto_14
    cmp-long v0, p2, v2

    if-lez v0, :cond_48

    .line 215
    iget v0, v6, Lokio/Segment;->limit:I

    iget v1, v6, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v7, v0

    .line 216
    .local v7, "toCopy":I
    iget-object v0, v6, Lokio/Segment;->data:[B

    iget v1, v6, Lokio/Segment;->pos:I

    invoke-virtual {p1, v0, v1, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 218
    iget v0, v6, Lokio/Segment;->pos:I

    add-int/2addr v0, v7

    iput v0, v6, Lokio/Segment;->pos:I

    .line 219
    iget-wide v0, p0, Lokio/Buffer;->size:J

    int-to-long v4, v7

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 220
    int-to-long v0, v7

    sub-long/2addr p2, v0

    .line 222
    iget v0, v6, Lokio/Segment;->pos:I

    iget v1, v6, Lokio/Segment;->limit:I

    if-ne v0, v1, :cond_14

    .line 223
    move-object v8, v6

    .line 224
    .local v8, "toRecycle":Lokio/Segment;
    invoke-virtual {v8}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v6

    iput-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 225
    invoke-static {v8}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_14

    .line 229
    .end local v7    # "toCopy":I
    .end local v8    # "toRecycle":Lokio/Segment;
    :cond_48
    return-object p0
.end method

.method public writeUtf8(Ljava/lang/String;)Lokio/Buffer;
    .registers 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 953
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeUtf8(Ljava/lang/String;II)Lokio/Buffer;
    .registers 20
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 957
    if-nez p1, :cond_a

    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "string == null"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 958
    :cond_a
    if-gez p2, :cond_27

    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "beginIndex < 0: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 959
    :cond_27
    move/from16 v0, p3

    move/from16 v1, p2

    if-ge v0, v1, :cond_54

    .line 960
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "endIndex < beginIndex: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " < "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 962
    :cond_54
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    move/from16 v0, p3

    if-le v0, v12, :cond_85

    .line 963
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "endIndex > string.length: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " > "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 964
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 968
    :cond_85
    move/from16 v5, p2

    .local v5, "i":I
    move v6, v5

    .end local v5    # "i":I
    .local v6, "i":I
    :goto_88
    move/from16 v0, p3

    if-ge v6, v0, :cond_189

    .line 969
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 971
    .local v2, "c":I
    const/16 v12, 0x80

    if-ge v2, v12, :cond_e0

    .line 972
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v11

    .line 973
    .local v11, "tail":Lokio/Segment;
    iget-object v4, v11, Lokio/Segment;->data:[B

    .line 974
    .local v4, "data":[B
    iget v12, v11, Lokio/Segment;->limit:I

    sub-int v10, v12, v6

    .line 975
    .local v10, "segmentOffset":I
    rsub-int v12, v10, 0x2000

    move/from16 v0, p3

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 978
    .local v8, "runLimit":I
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    add-int v12, v10, v6

    int-to-byte v13, v2

    aput-byte v13, v4, v12

    move v6, v5

    .line 982
    .end local v5    # "i":I
    .restart local v6    # "i":I
    :goto_b3
    if-ge v6, v8, :cond_bf

    .line 983
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 984
    const/16 v12, 0x80

    if-lt v2, v12, :cond_d7

    .line 988
    :cond_bf
    add-int v12, v6, v10

    iget v13, v11, Lokio/Segment;->limit:I

    sub-int v9, v12, v13

    .line 989
    .local v9, "runSize":I
    iget v12, v11, Lokio/Segment;->limit:I

    add-int/2addr v12, v9

    iput v12, v11, Lokio/Segment;->limit:I

    .line 990
    move-object/from16 v0, p0

    iget-wide v12, v0, Lokio/Buffer;->size:J

    int-to-long v14, v9

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lokio/Buffer;->size:J

    move v5, v6

    .end local v4    # "data":[B
    .end local v6    # "i":I
    .end local v8    # "runLimit":I
    .end local v9    # "runSize":I
    .end local v10    # "segmentOffset":I
    .end local v11    # "tail":Lokio/Segment;
    .restart local v5    # "i":I
    :goto_d5
    move v6, v5

    .line 1027
    .end local v5    # "i":I
    .restart local v6    # "i":I
    goto :goto_88

    .line 985
    .restart local v4    # "data":[B
    .restart local v8    # "runLimit":I
    .restart local v10    # "segmentOffset":I
    .restart local v11    # "tail":Lokio/Segment;
    :cond_d7
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    add-int v12, v10, v6

    int-to-byte v13, v2

    aput-byte v13, v4, v12

    move v6, v5

    .end local v5    # "i":I
    .restart local v6    # "i":I
    goto :goto_b3

    .line 992
    .end local v4    # "data":[B
    .end local v8    # "runLimit":I
    .end local v10    # "segmentOffset":I
    .end local v11    # "tail":Lokio/Segment;
    :cond_e0
    const/16 v12, 0x800

    if-ge v2, v12, :cond_f9

    .line 994
    shr-int/lit8 v12, v2, 0x6

    or-int/lit16 v12, v12, 0xc0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 995
    and-int/lit8 v12, v2, 0x3f

    or-int/lit16 v12, v12, 0x80

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 996
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto :goto_d5

    .line 998
    .end local v5    # "i":I
    .restart local v6    # "i":I
    :cond_f9
    const v12, 0xd800

    if-lt v2, v12, :cond_103

    const v12, 0xdfff

    if-le v2, v12, :cond_123

    .line 1000
    :cond_103
    shr-int/lit8 v12, v2, 0xc

    or-int/lit16 v12, v12, 0xe0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1001
    shr-int/lit8 v12, v2, 0x6

    and-int/lit8 v12, v12, 0x3f

    or-int/lit16 v12, v12, 0x80

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1002
    and-int/lit8 v12, v2, 0x3f

    or-int/lit16 v12, v12, 0x80

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1003
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto :goto_d5

    .line 1008
    .end local v5    # "i":I
    .restart local v6    # "i":I
    :cond_123
    add-int/lit8 v12, v6, 0x1

    move/from16 v0, p3

    if-ge v12, v0, :cond_14c

    add-int/lit8 v12, v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1009
    .local v7, "low":I
    :goto_131
    const v12, 0xdbff

    if-gt v2, v12, :cond_140

    const v12, 0xdc00

    if-lt v7, v12, :cond_140

    const v12, 0xdfff

    if-le v7, v12, :cond_14e

    .line 1010
    :cond_140
    const/16 v12, 0x3f

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1011
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    move v6, v5

    .line 1012
    .end local v5    # "i":I
    .restart local v6    # "i":I
    goto/16 :goto_88

    .line 1008
    .end local v7    # "low":I
    :cond_14c
    const/4 v7, 0x0

    goto :goto_131

    .line 1018
    .restart local v7    # "low":I
    :cond_14e
    const/high16 v12, 0x10000

    const v13, -0xd801

    and-int/2addr v13, v2

    shl-int/lit8 v13, v13, 0xa

    const v14, -0xdc01

    and-int/2addr v14, v7

    or-int/2addr v13, v14

    add-int v3, v12, v13

    .line 1021
    .local v3, "codePoint":I
    shr-int/lit8 v12, v3, 0x12

    or-int/lit16 v12, v12, 0xf0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1022
    shr-int/lit8 v12, v3, 0xc

    and-int/lit8 v12, v12, 0x3f

    or-int/lit16 v12, v12, 0x80

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1023
    shr-int/lit8 v12, v3, 0x6

    and-int/lit8 v12, v12, 0x3f

    or-int/lit16 v12, v12, 0x80

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1024
    and-int/lit8 v12, v3, 0x3f

    or-int/lit16 v12, v12, 0x80

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1025
    add-int/lit8 v5, v6, 0x2

    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_d5

    .line 1029
    .end local v2    # "c":I
    .end local v3    # "codePoint":I
    .end local v5    # "i":I
    .end local v7    # "low":I
    .restart local v6    # "i":I
    :cond_189
    return-object p0
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeUtf8CodePoint(I)Lokio/Buffer;
    .registers 5
    .param p1, "codePoint"    # I

    .prologue
    .line 1033
    const/16 v0, 0x80

    if-ge p1, v0, :cond_8

    .line 1035
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1065
    :goto_7
    return-object p0

    .line 1037
    :cond_8
    const/16 v0, 0x800

    if-ge p1, v0, :cond_1b

    .line 1039
    shr-int/lit8 v0, p1, 0x6

    or-int/lit16 v0, v0, 0xc0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1040
    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_7

    .line 1042
    :cond_1b
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_47

    .line 1043
    const v0, 0xd800

    if-lt p1, v0, :cond_2f

    const v0, 0xdfff

    if-gt p1, v0, :cond_2f

    .line 1045
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_7

    .line 1048
    :cond_2f
    shr-int/lit8 v0, p1, 0xc

    or-int/lit16 v0, v0, 0xe0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1049
    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1050
    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_7

    .line 1053
    :cond_47
    const v0, 0x10ffff

    if-gt p1, v0, :cond_6d

    .line 1055
    shr-int/lit8 v0, p1, 0x12

    or-int/lit16 v0, v0, 0xf0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1056
    shr-int/lit8 v0, p1, 0xc

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1057
    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1058
    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_7

    .line 1061
    :cond_6d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected code point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1062
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic writeUtf8CodePoint(I)Lokio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method
