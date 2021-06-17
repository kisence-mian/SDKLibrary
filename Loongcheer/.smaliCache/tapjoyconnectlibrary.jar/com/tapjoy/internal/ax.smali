.class public final Lcom/tapjoy/internal/ax;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 35
    return-void
.end method


# virtual methods
.method public final read([B)I
    .registers 5
    .param p1, "buffer"    # [B

    .line 52
    const/4 v0, 0x0

    .line 53
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_14

    .line 54
    nop

    .line 55
    array-length v1, p1

    sub-int/2addr v1, v0

    .line 56
    invoke-super {p0, p1, v0, v1}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v1

    .line 57
    const/4 v2, -0x1

    if-ne v1, v2, :cond_12

    .line 58
    if-eqz v0, :cond_11

    return v0

    :cond_11
    return v2

    .line 60
    :cond_12
    add-int/2addr v0, v1

    .line 61
    goto :goto_1

    .line 62
    :cond_14
    return v0
.end method

.method public final read([BII)I
    .registers 7
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 39
    const/4 v0, 0x0

    .line 40
    :goto_1
    if-ge v0, p3, :cond_14

    .line 41
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-super {p0, p1, v1, v2}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v1

    .line 42
    const/4 v2, -0x1

    if-ne v1, v2, :cond_12

    .line 43
    if-eqz v0, :cond_11

    return v0

    :cond_11
    return v2

    .line 45
    :cond_12
    add-int/2addr v0, v1

    .line 46
    goto :goto_1

    .line 47
    :cond_14
    return v0
.end method

.method public final skip(J)J
    .registers 11
    .param p1, "count"    # J

    .line 67
    const-wide/16 v0, 0x0

    move-wide v2, v0

    .line 68
    :goto_3
    cmp-long v4, v2, p1

    if-gez v4, :cond_1c

    .line 69
    sub-long v4, p1, v2

    invoke-super {p0, v4, v5}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v4

    .line 70
    cmp-long v6, v4, v0

    if-nez v6, :cond_1a

    .line 71
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v6

    .line 72
    if-ltz v6, :cond_1c

    .line 75
    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 78
    :cond_1a
    add-long/2addr v2, v4

    .line 79
    goto :goto_3

    .line 80
    :cond_1c
    return-wide v2
.end method
