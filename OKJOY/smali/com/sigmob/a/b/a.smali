.class public Lcom/sigmob/a/b/a;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/sigmob/a/a;)Ljava/lang/String;
    .registers 6

    const/16 v4, 0x20

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p0}, Lcom/sigmob/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/16 v0, 0x64

    :goto_f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Lcom/sigmob/a/a;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x7

    :goto_1e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v0, v3, :cond_2d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    :cond_2a
    const/16 v0, 0x2d

    goto :goto_f

    :cond_2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-interface {p0}, Lcom/sigmob/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .registers 3

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "ASCII"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v0

    :catch_8
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a([BII)Ljava/lang/String;
    .registers 5

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "ASCII"

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v0

    :catch_8
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;[B)Z
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/sigmob/a/b/a;->a(Ljava/lang/String;[BII)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;[BII)Z
    .registers 11

    const/4 v1, 0x0

    :try_start_1
    const-string v0, "ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_6} :catch_11

    move-result-object v0

    array-length v2, v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, v1

    invoke-static/range {v0 .. v6}, Lcom/sigmob/a/b/a;->a([BII[BIIZ)Z

    move-result v0

    return v0

    :catch_11
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a([BII[BII)Z
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/sigmob/a/b/a;->a([BII[BIIZ)Z

    move-result v0

    return v0
.end method

.method public static a([BII[BIIZ)Z
    .registers 13

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ge p2, p5, :cond_14

    move v0, p2

    :goto_5
    move v3, v1

    :goto_6
    if-ge v3, v0, :cond_19

    add-int v4, p1, v3

    aget-byte v4, p0, v4

    add-int v5, p4, v3

    aget-byte v5, p3, v5

    if-eq v4, v5, :cond_16

    move v0, v1

    :goto_13
    return v0

    :cond_14
    move v0, p5

    goto :goto_5

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_19
    if-ne p2, p5, :cond_1d

    move v0, v2

    goto :goto_13

    :cond_1d
    if-eqz p6, :cond_3c

    if-le p2, p5, :cond_30

    :goto_21
    if-ge p5, p2, :cond_3a

    add-int v0, p1, p5

    aget-byte v0, p0, v0

    if-eqz v0, :cond_2b

    move v0, v1

    goto :goto_13

    :cond_2b
    add-int/lit8 p5, p5, 0x1

    goto :goto_21

    :cond_2e
    add-int/lit8 p2, p2, 0x1

    :cond_30
    if-ge p2, p5, :cond_3a

    add-int v0, p4, p2

    aget-byte v0, p3, v0

    if-eqz v0, :cond_2e

    move v0, v1

    goto :goto_13

    :cond_3a
    move v0, v2

    goto :goto_13

    :cond_3c
    move v0, v1

    goto :goto_13
.end method

.method public static a([B[B)Z
    .registers 9

    const/4 v1, 0x0

    array-length v2, p0

    array-length v5, p1

    move-object v0, p0

    move-object v3, p1

    move v4, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Lcom/sigmob/a/b/a;->a([BII[BIIZ)Z

    move-result v0

    return v0
.end method

.method public static a([B[BZ)Z
    .registers 10

    const/4 v1, 0x0

    array-length v2, p0

    array-length v5, p1

    move-object v0, p0

    move-object v3, p1

    move v4, v1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/sigmob/a/b/a;->a([BII[BIIZ)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 3

    :try_start_0
    const-string v0, "ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b([BII[BII)Z
    .registers 13

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/sigmob/a/b/a;->a([BII[BIIZ)Z

    move-result v0

    return v0
.end method
