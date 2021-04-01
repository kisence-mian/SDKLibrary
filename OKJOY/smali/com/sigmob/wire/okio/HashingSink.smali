.class public final Lcom/sigmob/wire/okio/HashingSink;
.super Lcom/sigmob/wire/okio/ForwardingSink;


# instance fields
.field private final messageDigest:Ljava/security/MessageDigest;


# direct methods
.method private constructor <init>(Lcom/sigmob/wire/okio/Sink;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/sigmob/wire/okio/ForwardingSink;-><init>(Lcom/sigmob/wire/okio/Sink;)V

    :try_start_3
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/okio/HashingSink;->messageDigest:Ljava/security/MessageDigest;
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static md5(Lcom/sigmob/wire/okio/Sink;)Lcom/sigmob/wire/okio/HashingSink;
    .registers 3

    new-instance v0, Lcom/sigmob/wire/okio/HashingSink;

    const-string v1, "MD5"

    invoke-direct {v0, p0, v1}, Lcom/sigmob/wire/okio/HashingSink;-><init>(Lcom/sigmob/wire/okio/Sink;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sha1(Lcom/sigmob/wire/okio/Sink;)Lcom/sigmob/wire/okio/HashingSink;
    .registers 3

    new-instance v0, Lcom/sigmob/wire/okio/HashingSink;

    const-string v1, "SHA-1"

    invoke-direct {v0, p0, v1}, Lcom/sigmob/wire/okio/HashingSink;-><init>(Lcom/sigmob/wire/okio/Sink;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sha256(Lcom/sigmob/wire/okio/Sink;)Lcom/sigmob/wire/okio/HashingSink;
    .registers 3

    new-instance v0, Lcom/sigmob/wire/okio/HashingSink;

    const-string v1, "SHA-256"

    invoke-direct {v0, p0, v1}, Lcom/sigmob/wire/okio/HashingSink;-><init>(Lcom/sigmob/wire/okio/Sink;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public hash()Lcom/sigmob/wire/okio/ByteString;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/HashingSink;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/wire/okio/ByteString;->of([B)Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/sigmob/wire/okio/Buffer;J)V
    .registers 12

    const-wide/16 v2, 0x0

    iget-wide v0, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/sigmob/wire/okio/Util;->checkOffsetAndCount(JJJ)V

    iget-object v0, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    :goto_a
    cmp-long v1, v2, p2

    if-gez v1, :cond_29

    sub-long v4, p2, v2

    iget v1, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v6, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v1, v6

    int-to-long v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    iget-object v4, p0, Lcom/sigmob/wire/okio/HashingSink;->messageDigest:Ljava/security/MessageDigest;

    iget-object v5, v0, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v6, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    invoke-virtual {v4, v5, v6, v1}, Ljava/security/MessageDigest;->update([BII)V

    int-to-long v4, v1

    add-long/2addr v2, v4

    iget-object v0, v0, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    goto :goto_a

    :cond_29
    invoke-super {p0, p1, p2, p3}, Lcom/sigmob/wire/okio/ForwardingSink;->write(Lcom/sigmob/wire/okio/Buffer;J)V

    return-void
.end method
