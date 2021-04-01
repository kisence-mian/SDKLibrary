.class public final Lcom/bytedance/sdk/a/a/c;
.super Ljava/lang/Object;
.source "Buffer.java"

# interfaces
.implements Lcom/bytedance/sdk/a/a/d;
.implements Lcom/bytedance/sdk/a/a/e;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# static fields
.field private static final c:[B


# instance fields
.field a:Lcom/bytedance/sdk/a/a/o;

.field b:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/bytedance/sdk/a/a/c;->c:[B

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
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method


# virtual methods
.method public a([BII)I
    .registers 10

    .prologue
    .line 952
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/u;->a(JJJ)V

    .line 954
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 955
    if-nez v1, :cond_d

    const/4 v0, -0x1

    .line 967
    :cond_c
    :goto_c
    return v0

    .line 956
    :cond_d
    iget v0, v1, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v2, v1, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v0, v2

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 957
    iget-object v2, v1, Lcom/bytedance/sdk/a/a/o;->a:[B

    iget v3, v1, Lcom/bytedance/sdk/a/a/o;->b:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 959
    iget v2, v1, Lcom/bytedance/sdk/a/a/o;->b:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/bytedance/sdk/a/a/o;->b:I

    .line 960
    iget-wide v2, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 962
    iget v2, v1, Lcom/bytedance/sdk/a/a/o;->b:I

    iget v3, v1, Lcom/bytedance/sdk/a/a/o;->c:I

    if-ne v2, v3, :cond_c

    .line 963
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/a/o;->b()Lcom/bytedance/sdk/a/a/o;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 964
    invoke-static {v1}, Lcom/bytedance/sdk/a/a/p;->a(Lcom/bytedance/sdk/a/a/o;)V

    goto :goto_c
.end method

.method public a(B)J
    .registers 8

    .prologue
    .line 1504
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/c;->a(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(BJJ)J
    .registers 16

    .prologue
    .line 1518
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_a

    cmp-long v0, p4, p2

    if-gez v0, :cond_30

    .line 1519
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size=%s fromIndex=%s toIndex=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 1520
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1523
    :cond_30
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    cmp-long v0, p4, v0

    if-lez v0, :cond_38

    iget-wide p4, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 1524
    :cond_38
    cmp-long v0, p2, p4

    if-nez v0, :cond_3f

    const-wide/16 v0, -0x1

    .line 1571
    :goto_3e
    return-wide v0

    .line 1533
    :cond_3f
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 1534
    if-nez v2, :cond_46

    .line 1536
    const-wide/16 v0, -0x1

    goto :goto_3e

    .line 1537
    :cond_46
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    sub-long/2addr v0, p2

    cmp-long v0, v0, p2

    if-gez v0, :cond_5e

    .line 1539
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    move-object v4, v2

    .line 1540
    :goto_50
    cmp-long v2, v0, p2

    if-lez v2, :cond_a7

    .line 1541
    iget-object v4, v4, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    .line 1542
    iget v2, v4, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v3, v4, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_50

    .line 1546
    :cond_5e
    const-wide/16 v0, 0x0

    move-object v4, v2

    .line 1547
    :goto_61
    iget v2, v4, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v3, v4, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v0

    cmp-long v5, v2, p2

    if-gez v5, :cond_a7

    .line 1548
    iget-object v0, v4, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    move-object v4, v0

    move-wide v0, v2

    .line 1549
    goto :goto_61

    .line 1566
    :cond_71
    iget v0, v4, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v1, v4, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v0, v2

    .line 1568
    iget-object v4, v4, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    move-wide v2, v0

    move-wide p2, v0

    .line 1555
    :goto_7c
    cmp-long v0, v2, p4

    if-gez v0, :cond_a4

    .line 1556
    iget-object v1, v4, Lcom/bytedance/sdk/a/a/o;->a:[B

    .line 1557
    iget v0, v4, Lcom/bytedance/sdk/a/a/o;->c:I

    int-to-long v6, v0

    iget v0, v4, Lcom/bytedance/sdk/a/a/o;->b:I

    int-to-long v8, v0

    add-long/2addr v8, p4

    sub-long/2addr v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v5, v6

    .line 1558
    iget v0, v4, Lcom/bytedance/sdk/a/a/o;->b:I

    int-to-long v6, v0

    add-long/2addr v6, p2

    sub-long/2addr v6, v2

    long-to-int v0, v6

    .line 1559
    :goto_95
    if-ge v0, v5, :cond_71

    .line 1560
    aget-byte v6, v1, v0

    if-ne v6, p1, :cond_a1

    .line 1561
    iget v1, v4, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v0, v2

    goto :goto_3e

    .line 1559
    :cond_a1
    add-int/lit8 v0, v0, 0x1

    goto :goto_95

    .line 1571
    :cond_a4
    const-wide/16 v0, -0x1

    goto :goto_3e

    :cond_a7
    move-wide v2, v0

    goto :goto_7c
.end method

.method public a(Lcom/bytedance/sdk/a/a/c;J)J
    .registers 8

    .prologue
    const-wide/16 v2, 0x0

    .line 1494
    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1495
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

    .line 1496
    :cond_29
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_32

    const-wide/16 p2, -0x1

    .line 1499
    :goto_31
    return-wide p2

    .line 1497
    :cond_32
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_3a

    iget-wide p2, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 1498
    :cond_3a
    invoke-virtual {p1, p0, p2, p3}, Lcom/bytedance/sdk/a/a/c;->a_(Lcom/bytedance/sdk/a/a/c;J)V

    goto :goto_31
.end method

.method public a(Lcom/bytedance/sdk/a/a/s;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1218
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1219
    :cond_a
    const-wide/16 v0, 0x0

    .line 1220
    :goto_c
    const-wide/16 v2, 0x2000

    invoke-interface {p1, p0, v2, v3}, Lcom/bytedance/sdk/a/a/s;->a(Lcom/bytedance/sdk/a/a/c;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1a

    .line 1221
    add-long/2addr v0, v2

    goto :goto_c

    .line 1223
    :cond_1a
    return-wide v0
.end method

.method public a(I)Lcom/bytedance/sdk/a/a/c;
    .registers 5

    .prologue
    .line 1113
    const/16 v0, 0x80

    if-ge p1, v0, :cond_8

    .line 1115
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 1145
    :goto_7
    return-object p0

    .line 1117
    :cond_8
    const/16 v0, 0x800

    if-ge p1, v0, :cond_1b

    .line 1119
    shr-int/lit8 v0, p1, 0x6

    or-int/lit16 v0, v0, 0xc0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 1120
    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    goto :goto_7

    .line 1122
    :cond_1b
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_47

    .line 1123
    const v0, 0xd800

    if-lt p1, v0, :cond_2f

    const v0, 0xdfff

    if-gt p1, v0, :cond_2f

    .line 1125
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    goto :goto_7

    .line 1128
    :cond_2f
    shr-int/lit8 v0, p1, 0xc

    or-int/lit16 v0, v0, 0xe0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 1129
    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 1130
    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    goto :goto_7

    .line 1133
    :cond_47
    const v0, 0x10ffff

    if-gt p1, v0, :cond_6d

    .line 1135
    shr-int/lit8 v0, p1, 0x12

    or-int/lit16 v0, v0, 0xf0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 1136
    shr-int/lit8 v0, p1, 0xc

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 1137
    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 1138
    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    goto :goto_7

    .line 1141
    :cond_6d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected code point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1142
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/bytedance/sdk/a/a/c;JJ)Lcom/bytedance/sdk/a/a/c;
    .registers 14

    .prologue
    const-wide/16 v6, 0x0

    .line 206
    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_c
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/u;->a(JJJ)V

    .line 208
    cmp-long v0, p4, v6

    if-nez v0, :cond_18

    .line 232
    :cond_17
    return-object p0

    .line 210
    :cond_18
    iget-wide v0, p1, Lcom/bytedance/sdk/a/a/c;->b:J

    add-long/2addr v0, p4

    iput-wide v0, p1, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 213
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 214
    :goto_1f
    iget v1, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v2, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, p2, v2

    if-ltz v1, :cond_33

    .line 215
    iget v1, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v2, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    sub-long/2addr p2, v2

    .line 214
    iget-object v0, v0, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    goto :goto_1f

    .line 219
    :cond_33
    :goto_33
    cmp-long v1, p4, v6

    if-lez v1, :cond_17

    .line 220
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/o;->a()Lcom/bytedance/sdk/a/a/o;

    move-result-object v1

    .line 221
    iget v2, v1, Lcom/bytedance/sdk/a/a/o;->b:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    long-to-int v2, v2

    iput v2, v1, Lcom/bytedance/sdk/a/a/o;->b:I

    .line 222
    iget v2, v1, Lcom/bytedance/sdk/a/a/o;->b:I

    long-to-int v3, p4

    add-int/2addr v2, v3

    iget v3, v1, Lcom/bytedance/sdk/a/a/o;->c:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lcom/bytedance/sdk/a/a/o;->c:I

    .line 223
    iget-object v2, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    if-nez v2, :cond_64

    .line 224
    iput-object v1, v1, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    iput-object v1, v1, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    iput-object v1, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 228
    :goto_58
    iget v2, v1, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v1, v1, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int v1, v2, v1

    int-to-long v2, v1

    sub-long/2addr p4, v2

    .line 219
    iget-object v0, v0, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    move-wide p2, v6

    goto :goto_33

    .line 226
    :cond_64
    iget-object v2, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    iget-object v2, v2, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/a/a/o;->a(Lcom/bytedance/sdk/a/a/o;)Lcom/bytedance/sdk/a/a/o;

    goto :goto_58
.end method

.method public a(Lcom/bytedance/sdk/a/a/f;)Lcom/bytedance/sdk/a/a/c;
    .registers 4

    .prologue
    .line 1024
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byteString == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1025
    :cond_a
    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/a/a/f;->a(Lcom/bytedance/sdk/a/a/c;)V

    .line 1026
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/c;
    .registers 4

    .prologue
    .line 1031
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/bytedance/sdk/a/a/c;->a(Ljava/lang/String;II)Lcom/bytedance/sdk/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;II)Lcom/bytedance/sdk/a/a/c;
    .registers 13

    .prologue
    const v8, 0xdfff

    const/16 v7, 0x80

    .line 1036
    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1037
    :cond_f
    if-gez p2, :cond_2a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1038
    :cond_2a
    if-ge p3, p2, :cond_4f

    .line 1039
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex < beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1041
    :cond_4f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p3, v0, :cond_90

    .line 1042
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex > string.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1043
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1087
    :cond_7c
    const/4 v0, 0x0

    .line 1088
    :goto_7d
    const v2, 0xdbff

    if-gt v1, v2, :cond_89

    const v2, 0xdc00

    if-lt v0, v2, :cond_89

    if-le v0, v8, :cond_114

    .line 1089
    :cond_89
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 1090
    add-int/lit8 p2, p2, 0x1

    .line 1047
    :cond_90
    :goto_90
    if-ge p2, p3, :cond_145

    .line 1048
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1050
    if-ge v1, v7, :cond_d2

    .line 1051
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/a/c;->e(I)Lcom/bytedance/sdk/a/a/o;

    move-result-object v2

    .line 1052
    iget-object v3, v2, Lcom/bytedance/sdk/a/a/o;->a:[B

    .line 1053
    iget v0, v2, Lcom/bytedance/sdk/a/a/o;->c:I

    sub-int v4, v0, p2

    .line 1054
    rsub-int v0, v4, 0x2000

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1057
    add-int/lit8 v0, p2, 0x1

    add-int v6, v4, p2

    int-to-byte v1, v1

    aput-byte v1, v3, v6

    .line 1061
    :goto_b0
    if-ge v0, v5, :cond_b8

    .line 1062
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1063
    if-lt v6, v7, :cond_ca

    .line 1067
    :cond_b8
    add-int v1, v0, v4

    iget v3, v2, Lcom/bytedance/sdk/a/a/o;->c:I

    sub-int/2addr v1, v3

    .line 1068
    iget v3, v2, Lcom/bytedance/sdk/a/a/o;->c:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/bytedance/sdk/a/a/o;->c:I

    .line 1069
    iget-wide v2, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    :goto_c8
    move p2, v0

    .line 1106
    goto :goto_90

    .line 1064
    :cond_ca
    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v4

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    move v0, v1

    goto :goto_b0

    .line 1071
    :cond_d2
    const/16 v0, 0x800

    if-ge v1, v0, :cond_e7

    .line 1073
    shr-int/lit8 v0, v1, 0x6

    or-int/lit16 v0, v0, 0xc0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 1074
    and-int/lit8 v0, v1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 1075
    add-int/lit8 v0, p2, 0x1

    goto :goto_c8

    .line 1077
    :cond_e7
    const v0, 0xd800

    if-lt v1, v0, :cond_ee

    if-le v1, v8, :cond_108

    .line 1079
    :cond_ee
    shr-int/lit8 v0, v1, 0xc

    or-int/lit16 v0, v0, 0xe0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 1080
    shr-int/lit8 v0, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 1081
    and-int/lit8 v0, v1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 1082
    add-int/lit8 v0, p2, 0x1

    goto :goto_c8

    .line 1087
    :cond_108
    add-int/lit8 v0, p2, 0x1

    if-ge v0, p3, :cond_7c

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto/16 :goto_7d

    .line 1097
    :cond_114
    const/high16 v2, 0x10000

    const v3, -0xd801

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0xa

    const v3, -0xdc01

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 1100
    shr-int/lit8 v1, v0, 0x12

    or-int/lit16 v1, v1, 0xf0

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 1101
    shr-int/lit8 v1, v0, 0xc

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 1102
    shr-int/lit8 v1, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 1103
    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 1104
    add-int/lit8 v0, p2, 0x2

    goto :goto_c8

    .line 1108
    :cond_145
    return-object p0
.end method

.method public a(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/bytedance/sdk/a/a/c;
    .registers 8

    .prologue
    .line 1155
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1156
    :cond_a
    if-gez p2, :cond_25

    new-instance v0, Ljava/lang/IllegalAccessError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1157
    :cond_25
    if-ge p3, p2, :cond_4a

    .line 1158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex < beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1160
    :cond_4a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p3, v0, :cond_77

    .line 1161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex > string.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1162
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1164
    :cond_77
    if-nez p4, :cond_81

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1165
    :cond_81
    sget-object v0, Lcom/bytedance/sdk/a/a/u;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/a/a/c;->a(Ljava/lang/String;II)Lcom/bytedance/sdk/a/a/c;

    move-result-object v0

    .line 1167
    :goto_8d
    return-object v0

    .line 1166
    :cond_8e
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 1167
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/a/a/c;->b([BII)Lcom/bytedance/sdk/a/a/c;

    move-result-object v0

    goto :goto_8d
.end method

.method public a()Lcom/bytedance/sdk/a/a/t;
    .registers 2

    .prologue
    .line 1782
    sget-object v0, Lcom/bytedance/sdk/a/a/t;->c:Lcom/bytedance/sdk/a/a/t;

    return-object v0
.end method

.method public a(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 766
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/u;->a(JJJ)V

    .line 767
    if-nez p3, :cond_12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 768
    :cond_12
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_32

    .line 769
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

    .line 771
    :cond_32
    cmp-long v0, p1, v2

    if-nez v0, :cond_39

    const-string v0, ""

    .line 788
    :cond_38
    :goto_38
    return-object v0

    .line 773
    :cond_39
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 774
    iget v0, v1, Lcom/bytedance/sdk/a/a/o;->b:I

    int-to-long v2, v0

    add-long/2addr v2, p1

    iget v0, v1, Lcom/bytedance/sdk/a/a/o;->c:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_50

    .line 776
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/a/a/c;->g(J)[B

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_38

    .line 779
    :cond_50
    new-instance v0, Ljava/lang/String;

    iget-object v2, v1, Lcom/bytedance/sdk/a/a/o;->a:[B

    iget v3, v1, Lcom/bytedance/sdk/a/a/o;->b:I

    long-to-int v4, p1

    invoke-direct {v0, v2, v3, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 780
    iget v2, v1, Lcom/bytedance/sdk/a/a/o;->b:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    long-to-int v2, v2

    iput v2, v1, Lcom/bytedance/sdk/a/a/o;->b:I

    .line 781
    iget-wide v2, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 783
    iget v2, v1, Lcom/bytedance/sdk/a/a/o;->b:I

    iget v3, v1, Lcom/bytedance/sdk/a/a/o;->c:I

    if-ne v2, v3, :cond_38

    .line 784
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/a/o;->b()Lcom/bytedance/sdk/a/a/o;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 785
    invoke-static {v1}, Lcom/bytedance/sdk/a/a/p;->a(Lcom/bytedance/sdk/a/a/o;)V

    goto :goto_38
.end method

.method public a(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_c

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 126
    :cond_c
    return-void
.end method

.method public a([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 942
    const/4 v0, 0x0

    .line 943
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_15

    .line 944
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/bytedance/sdk/a/a/c;->a([BII)I

    move-result v1

    .line 945
    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 946
    :cond_13
    add-int/2addr v0, v1

    .line 947
    goto :goto_1

    .line 948
    :cond_15
    return-void
.end method

.method public a_(Lcom/bytedance/sdk/a/a/c;J)V
    .registers 12

    .prologue
    const-wide/16 v2, 0x0

    .line 1452
    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1453
    :cond_c
    if-ne p1, p0, :cond_16

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == this"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1454
    :cond_16
    iget-wide v0, p1, Lcom/bytedance/sdk/a/a/c;->b:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/u;->a(JJJ)V

    .line 1456
    :goto_1c
    cmp-long v0, p2, v2

    if-lez v0, :cond_5e

    .line 1458
    iget-object v0, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    iget v0, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    iget-object v1, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    iget v1, v1, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gez v0, :cond_6e

    .line 1459
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    iget-object v0, v0, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    move-object v1, v0

    .line 1460
    :goto_37
    if-eqz v1, :cond_65

    iget-boolean v0, v1, Lcom/bytedance/sdk/a/a/o;->e:Z

    if-eqz v0, :cond_65

    iget v0, v1, Lcom/bytedance/sdk/a/a/o;->c:I

    int-to-long v4, v0

    add-long/2addr v4, p2

    iget-boolean v0, v1, Lcom/bytedance/sdk/a/a/o;->d:Z

    if-eqz v0, :cond_62

    const/4 v0, 0x0

    :goto_46
    int-to-long v6, v0

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2000

    cmp-long v0, v4, v6

    if-gtz v0, :cond_65

    .line 1463
    iget-object v0, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    long-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/a/a/o;->a(Lcom/bytedance/sdk/a/a/o;I)V

    .line 1464
    iget-wide v0, p1, Lcom/bytedance/sdk/a/a/c;->b:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 1465
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 1490
    :cond_5e
    return-void

    .line 1459
    :cond_5f
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_37

    .line 1460
    :cond_62
    iget v0, v1, Lcom/bytedance/sdk/a/a/o;->b:I

    goto :goto_46

    .line 1470
    :cond_65
    iget-object v0, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    long-to-int v1, p2

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/a/o;->a(I)Lcom/bytedance/sdk/a/a/o;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 1475
    :cond_6e
    iget-object v0, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 1476
    iget v1, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v4, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    .line 1477
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/o;->b()Lcom/bytedance/sdk/a/a/o;

    move-result-object v1

    iput-object v1, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 1478
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    if-nez v1, :cond_98

    .line 1479
    iput-object v0, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 1480
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    iget-object v6, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    iput-object v6, v1, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    iput-object v6, v0, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    .line 1486
    :goto_8c
    iget-wide v0, p1, Lcom/bytedance/sdk/a/a/c;->b:J

    sub-long/2addr v0, v4

    iput-wide v0, p1, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 1487
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 1488
    sub-long/2addr p2, v4

    .line 1489
    goto :goto_1c

    .line 1482
    :cond_98
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    iget-object v1, v1, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    .line 1483
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/a/a/o;->a(Lcom/bytedance/sdk/a/a/o;)Lcom/bytedance/sdk/a/a/o;

    move-result-object v0

    .line 1484
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/o;->c()V

    goto :goto_8c
.end method

.method public final b(J)B
    .registers 10

    .prologue
    .line 345
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/u;->a(JJJ)V

    .line 346
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    sub-long/2addr v0, p1

    cmp-long v0, v0, p1

    if-lez v0, :cond_29

    .line 347
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 348
    :goto_11
    iget v1, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v2, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v1, v2

    .line 349
    int-to-long v2, v1

    cmp-long v2, p1, v2

    if-gez v2, :cond_24

    iget-object v1, v0, Lcom/bytedance/sdk/a/a/o;->a:[B

    iget v0, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    long-to-int v2, p1

    add-int/2addr v0, v2

    aget-byte v0, v1, v0

    .line 356
    :goto_23
    return v0

    .line 350
    :cond_24
    int-to-long v2, v1

    sub-long/2addr p1, v2

    .line 347
    iget-object v0, v0, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    goto :goto_11

    .line 353
    :cond_29
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    sub-long v2, p1, v0

    .line 354
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    iget-object v0, v0, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    .line 355
    :goto_31
    iget v1, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v4, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 356
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_47

    iget-object v1, v0, Lcom/bytedance/sdk/a/a/o;->a:[B

    iget v0, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    long-to-int v2, v2

    add-int/2addr v0, v2

    aget-byte v0, v1, v0

    goto :goto_23

    .line 354
    :cond_47
    iget-object v0, v0, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    goto :goto_31
.end method

.method public final b()J
    .registers 3

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    return-wide v0
.end method

.method public b(I)Lcom/bytedance/sdk/a/a/c;
    .registers 6

    .prologue
    .line 1238
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/a/c;->e(I)Lcom/bytedance/sdk/a/a/o;

    move-result-object v0

    .line 1239
    iget-object v1, v0, Lcom/bytedance/sdk/a/a/o;->a:[B

    iget v2, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    int-to-byte v0, p1

    aput-byte v0, v1, v2

    .line 1240
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 1241
    return-object p0
.end method

.method public b([B)Lcom/bytedance/sdk/a/a/c;
    .registers 4

    .prologue
    .line 1172
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1173
    :cond_a
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/bytedance/sdk/a/a/c;->b([BII)Lcom/bytedance/sdk/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public b([BII)Lcom/bytedance/sdk/a/a/c;
    .registers 10

    .prologue
    .line 1178
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1179
    :cond_a
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/u;->a(JJJ)V

    .line 1181
    add-int v0, p2, p3

    .line 1182
    :goto_13
    if-ge p2, v0, :cond_32

    .line 1183
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/a/a/c;->e(I)Lcom/bytedance/sdk/a/a/o;

    move-result-object v1

    .line 1185
    sub-int v2, v0, p2

    iget v3, v1, Lcom/bytedance/sdk/a/a/o;->c:I

    rsub-int v3, v3, 0x2000

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1186
    iget-object v3, v1, Lcom/bytedance/sdk/a/a/o;->a:[B

    iget v4, v1, Lcom/bytedance/sdk/a/a/o;->c:I

    invoke-static {p1, p2, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1188
    add-int/2addr p2, v2

    .line 1189
    iget v3, v1, Lcom/bytedance/sdk/a/a/o;->c:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/bytedance/sdk/a/a/o;->c:I

    goto :goto_13

    .line 1192
    :cond_32
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 1193
    return-object p0
.end method

.method public synthetic b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/d;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/a/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/bytedance/sdk/a/a/c;
    .registers 1

    .prologue
    .line 72
    return-object p0
.end method

.method public c(I)Lcom/bytedance/sdk/a/a/c;
    .registers 7

    .prologue
    .line 1246
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/a/c;->e(I)Lcom/bytedance/sdk/a/a/o;

    move-result-object v0

    .line 1247
    iget-object v1, v0, Lcom/bytedance/sdk/a/a/o;->a:[B

    .line 1248
    iget v2, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    .line 1249
    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1250
    add-int/lit8 v2, v3, 0x1

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1251
    iput v2, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    .line 1252
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 1253
    return-object p0
.end method

.method public synthetic c([B)Lcom/bytedance/sdk/a/a/d;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/a/c;->b([B)Lcom/bytedance/sdk/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c([BII)Lcom/bytedance/sdk/a/a/d;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/a/a/c;->b([BII)Lcom/bytedance/sdk/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public c(J)Lcom/bytedance/sdk/a/a/f;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 597
    new-instance v0, Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/a/a/c;->g(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/a/a/f;-><init>([B)V

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/c;->s()Lcom/bytedance/sdk/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 1

    .prologue
    .line 1778
    return-void
.end method

.method public d()Lcom/bytedance/sdk/a/a/c;
    .registers 1

    .prologue
    .line 110
    return-object p0
.end method

.method public d(I)Lcom/bytedance/sdk/a/a/c;
    .registers 7

    .prologue
    .line 1263
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/a/c;->e(I)Lcom/bytedance/sdk/a/a/o;

    move-result-object v0

    .line 1264
    iget-object v1, v0, Lcom/bytedance/sdk/a/a/o;->a:[B

    .line 1265
    iget v2, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    .line 1266
    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1267
    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1268
    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1269
    add-int/lit8 v2, v3, 0x1

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1270
    iput v2, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    .line 1271
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 1272
    return-object p0
.end method

.method public d(J)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 752
    sget-object v0, Lcom/bytedance/sdk/a/a/u;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/sdk/a/a/c;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method e(I)Lcom/bytedance/sdk/a/a/o;
    .registers 5

    .prologue
    const/16 v2, 0x2000

    .line 1385
    const/4 v0, 0x1

    if-lt p1, v0, :cond_7

    if-le p1, v2, :cond_d

    .line 1386
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1388
    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    if-nez v0, :cond_22

    .line 1389
    invoke-static {}, Lcom/bytedance/sdk/a/a/p;->a()Lcom/bytedance/sdk/a/a/o;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 1390
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    iget-object v2, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    iget-object v0, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    iput-object v0, v2, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    iput-object v0, v1, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    .line 1397
    :cond_21
    :goto_21
    return-object v0

    .line 1393
    :cond_22
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    iget-object v0, v0, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    .line 1394
    iget v1, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    add-int/2addr v1, p1

    if-gt v1, v2, :cond_2f

    iget-boolean v1, v0, Lcom/bytedance/sdk/a/a/o;->e:Z

    if-nez v1, :cond_21

    .line 1395
    :cond_2f
    invoke-static {}, Lcom/bytedance/sdk/a/a/p;->a()Lcom/bytedance/sdk/a/a/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/a/o;->a(Lcom/bytedance/sdk/a/a/o;)Lcom/bytedance/sdk/a/a/o;

    move-result-object v0

    goto :goto_21
.end method

.method public e(J)Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v10, 0x1

    const/16 v1, 0xa

    const-wide/16 v2, 0x0

    .line 809
    cmp-long v0, p1, v2

    if-gez v0, :cond_28

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 810
    :cond_28
    cmp-long v0, p1, v4

    if-nez v0, :cond_3c

    :goto_2c
    move-object v0, p0

    .line 811
    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/c;->a(BJJ)J

    move-result-wide v6

    .line 812
    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-eqz v0, :cond_3f

    invoke-virtual {p0, v6, v7}, Lcom/bytedance/sdk/a/a/c;->f(J)Ljava/lang/String;

    move-result-object v0

    .line 815
    :goto_3b
    return-object v0

    .line 810
    :cond_3c
    add-long v4, p1, v10

    goto :goto_2c

    .line 813
    :cond_3f
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_5c

    sub-long v6, v4, v10

    .line 814
    invoke-virtual {p0, v6, v7}, Lcom/bytedance/sdk/a/a/c;->b(J)B

    move-result v0

    const/16 v6, 0xd

    if-ne v0, v6, :cond_5c

    invoke-virtual {p0, v4, v5}, Lcom/bytedance/sdk/a/a/c;->b(J)B

    move-result v0

    if-ne v0, v1, :cond_5c

    .line 815
    invoke-virtual {p0, v4, v5}, Lcom/bytedance/sdk/a/a/c;->f(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    .line 817
    :cond_5c
    new-instance v1, Lcom/bytedance/sdk/a/a/c;

    invoke-direct {v1}, Lcom/bytedance/sdk/a/a/c;-><init>()V

    .line 818
    const-wide/16 v4, 0x20

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/c;->a(Lcom/bytedance/sdk/a/a/c;JJ)Lcom/bytedance/sdk/a/a/c;

    .line 819
    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\n not found: limit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v4

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 820
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/a/c;->n()Lcom/bytedance/sdk/a/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/a/f;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2026

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Z
    .registers 5

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

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

.method public equals(Ljava/lang/Object;)Z
    .registers 16

    .prologue
    const-wide/16 v0, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1882
    if-ne p0, p1, :cond_8

    move v0, v6

    .line 1911
    :goto_7
    return v0

    .line 1883
    :cond_8
    instance-of v2, p1, Lcom/bytedance/sdk/a/a/c;

    if-nez v2, :cond_e

    move v0, v7

    goto :goto_7

    .line 1884
    :cond_e
    check-cast p1, Lcom/bytedance/sdk/a/a/c;

    .line 1885
    iget-wide v2, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    iget-wide v4, p1, Lcom/bytedance/sdk/a/a/c;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1a

    move v0, v7

    goto :goto_7

    .line 1886
    :cond_1a
    iget-wide v2, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_22

    move v0, v6

    goto :goto_7

    .line 1888
    :cond_22
    iget-object v5, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 1889
    iget-object v4, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 1890
    iget v3, v5, Lcom/bytedance/sdk/a/a/o;->b:I

    .line 1891
    iget v2, v4, Lcom/bytedance/sdk/a/a/o;->b:I

    .line 1893
    :goto_2a
    iget-wide v8, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    cmp-long v8, v0, v8

    if-gez v8, :cond_69

    .line 1894
    iget v8, v5, Lcom/bytedance/sdk/a/a/o;->c:I

    sub-int/2addr v8, v3

    iget v9, v4, Lcom/bytedance/sdk/a/a/o;->c:I

    sub-int/2addr v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-long v10, v8

    move v8, v7

    .line 1896
    :goto_3c
    int-to-long v12, v8

    cmp-long v9, v12, v10

    if-gez v9, :cond_57

    .line 1897
    iget-object v12, v5, Lcom/bytedance/sdk/a/a/o;->a:[B

    add-int/lit8 v9, v3, 0x1

    aget-byte v12, v12, v3

    iget-object v13, v4, Lcom/bytedance/sdk/a/a/o;->a:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v13, v2

    if-eq v12, v2, :cond_51

    move v0, v7

    goto :goto_7

    .line 1896
    :cond_51
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v2, v3

    move v3, v9

    goto :goto_3c

    .line 1900
    :cond_57
    iget v8, v5, Lcom/bytedance/sdk/a/a/o;->c:I

    if-ne v3, v8, :cond_5f

    .line 1901
    iget-object v5, v5, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    .line 1902
    iget v3, v5, Lcom/bytedance/sdk/a/a/o;->b:I

    .line 1905
    :cond_5f
    iget v8, v4, Lcom/bytedance/sdk/a/a/o;->c:I

    if-ne v2, v8, :cond_67

    .line 1906
    iget-object v4, v4, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    .line 1907
    iget v2, v4, Lcom/bytedance/sdk/a/a/o;->b:I

    .line 1893
    :cond_67
    add-long/2addr v0, v10

    goto :goto_2a

    :cond_69
    move v0, v6

    .line 1911
    goto :goto_7
.end method

.method public final f(I)Lcom/bytedance/sdk/a/a/f;
    .registers 3

    .prologue
    .line 1968
    if-nez p1, :cond_5

    sget-object v0, Lcom/bytedance/sdk/a/a/f;->b:Lcom/bytedance/sdk/a/a/f;

    .line 1969
    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/bytedance/sdk/a/a/q;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/a/a/q;-><init>(Lcom/bytedance/sdk/a/a/c;I)V

    goto :goto_4
.end method

.method public f()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 140
    new-instance v0, Lcom/bytedance/sdk/a/a/c$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/a/a/c$1;-><init>(Lcom/bytedance/sdk/a/a/c;)V

    return-object v0
.end method

.method f(J)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x1

    .line 824
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1e

    sub-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/a/c;->b(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1e

    .line 826
    sub-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/a/c;->d(J)Ljava/lang/String;

    move-result-object v0

    .line 827
    const-wide/16 v2, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/bytedance/sdk/a/a/c;->h(J)V

    .line 834
    :goto_1d
    return-object v0

    .line 832
    :cond_1e
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/a/a/c;->d(J)Ljava/lang/String;

    move-result-object v0

    .line 833
    invoke-virtual {p0, v2, v3}, Lcom/bytedance/sdk/a/a/c;->h(J)V

    goto :goto_1d
.end method

.method public flush()V
    .registers 1

    .prologue
    .line 1769
    return-void
.end method

.method public final g()J
    .registers 6

    .prologue
    const-wide/16 v2, 0x0

    .line 307
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 308
    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    move-wide v0, v2

    .line 316
    :cond_9
    :goto_9
    return-wide v0

    .line 311
    :cond_a
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    iget-object v2, v2, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    .line 312
    iget v3, v2, Lcom/bytedance/sdk/a/a/o;->c:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_9

    iget-boolean v3, v2, Lcom/bytedance/sdk/a/a/o;->e:Z

    if-eqz v3, :cond_9

    .line 313
    iget v3, v2, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v2, v2, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int v2, v3, v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_9
.end method

.method public synthetic g(I)Lcom/bytedance/sdk/a/a/d;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/a/c;->d(I)Lcom/bytedance/sdk/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public g(J)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 925
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/u;->a(JJJ)V

    .line 926
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_28

    .line 927
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

    .line 930
    :cond_28
    long-to-int v0, p1

    new-array v0, v0, [B

    .line 931
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/a/c;->a([B)V

    .line 932
    return-object v0
.end method

.method public h()B
    .registers 11

    .prologue
    .line 321
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_10
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 324
    iget v1, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    .line 325
    iget v2, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    .line 327
    iget-object v3, v0, Lcom/bytedance/sdk/a/a/o;->a:[B

    .line 328
    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    .line 329
    iget-wide v6, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 331
    if-ne v4, v2, :cond_2f

    .line 332
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/o;->b()Lcom/bytedance/sdk/a/a/o;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 333
    invoke-static {v0}, Lcom/bytedance/sdk/a/a/p;->a(Lcom/bytedance/sdk/a/a/o;)V

    .line 338
    :goto_2e
    return v1

    .line 335
    :cond_2f
    iput v4, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    goto :goto_2e
.end method

.method public synthetic h(I)Lcom/bytedance/sdk/a/a/d;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/a/c;->c(I)Lcom/bytedance/sdk/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public h(J)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 1006
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_44

    .line 1007
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    if-nez v0, :cond_10

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 1009
    :cond_10
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    iget v0, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    iget v1, v1, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 1010
    iget-wide v2, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 1011
    int-to-long v2, v0

    sub-long/2addr p1, v2

    .line 1012
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    iget v2, v1, Lcom/bytedance/sdk/a/a/o;->b:I

    add-int/2addr v0, v2

    iput v0, v1, Lcom/bytedance/sdk/a/a/o;->b:I

    .line 1014
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    iget v0, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    iget v1, v1, Lcom/bytedance/sdk/a/a/o;->c:I

    if-ne v0, v1, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 1016
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/o;->b()Lcom/bytedance/sdk/a/a/o;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 1017
    invoke-static {v0}, Lcom/bytedance/sdk/a/a/p;->a(Lcom/bytedance/sdk/a/a/o;)V

    goto :goto_0

    .line 1020
    :cond_44
    return-void
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 1916
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 1917
    if-nez v1, :cond_6

    const/4 v0, 0x0

    .line 1925
    :goto_5
    return v0

    .line 1918
    :cond_6
    const/4 v0, 0x1

    .line 1920
    :cond_7
    iget v2, v1, Lcom/bytedance/sdk/a/a/o;->b:I

    iget v4, v1, Lcom/bytedance/sdk/a/a/o;->c:I

    :goto_b
    if-ge v2, v4, :cond_19

    .line 1921
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, v1, Lcom/bytedance/sdk/a/a/o;->a:[B

    aget-byte v3, v3, v2

    add-int/2addr v3, v0

    .line 1920
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_b

    .line 1923
    :cond_19
    iget-object v1, v1, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    .line 1924
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    if-ne v1, v2, :cond_7

    goto :goto_5
.end method

.method public i(J)Lcom/bytedance/sdk/a/a/c;
    .registers 14

    .prologue
    .line 1305
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_d

    .line 1307
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    move-result-object p0

    .line 1357
    :goto_c
    return-object p0

    .line 1310
    :cond_d
    const/4 v0, 0x0

    .line 1311
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_121

    .line 1312
    neg-long v2, p1

    .line 1313
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_22

    .line 1314
    const-string v0, "-9223372036854775808"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/a/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/c;

    move-result-object p0

    goto :goto_c

    .line 1316
    :cond_22
    const/4 v0, 0x1

    move v4, v0

    .line 1320
    :goto_24
    const-wide/32 v0, 0x5f5e100

    cmp-long v0, v2, v0

    if-gez v0, :cond_8c

    const-wide/16 v0, 0x2710

    cmp-long v0, v2, v0

    if-gez v0, :cond_6e

    const-wide/16 v0, 0x64

    cmp-long v0, v2, v0

    if-gez v0, :cond_64

    const-wide/16 v0, 0xa

    cmp-long v0, v2, v0

    if-gez v0, :cond_62

    const/4 v0, 0x1

    .line 1339
    :goto_3e
    if-eqz v4, :cond_42

    .line 1340
    add-int/lit8 v0, v0, 0x1

    .line 1343
    :cond_42
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/a/c;->e(I)Lcom/bytedance/sdk/a/a/o;

    move-result-object v5

    .line 1344
    iget-object v6, v5, Lcom/bytedance/sdk/a/a/o;->a:[B

    .line 1345
    iget v1, v5, Lcom/bytedance/sdk/a/a/o;->c:I

    add-int/2addr v1, v0

    .line 1346
    :goto_4b
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-eqz v7, :cond_10c

    .line 1347
    const-wide/16 v8, 0xa

    rem-long v8, v2, v8

    long-to-int v7, v8

    .line 1348
    add-int/lit8 v1, v1, -0x1

    sget-object v8, Lcom/bytedance/sdk/a/a/c;->c:[B

    aget-byte v7, v8, v7

    aput-byte v7, v6, v1

    .line 1349
    const-wide/16 v8, 0xa

    div-long/2addr v2, v8

    goto :goto_4b

    .line 1320
    :cond_62
    const/4 v0, 0x2

    goto :goto_3e

    :cond_64
    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-gez v0, :cond_6c

    const/4 v0, 0x3

    goto :goto_3e

    :cond_6c
    const/4 v0, 0x4

    goto :goto_3e

    :cond_6e
    const-wide/32 v0, 0xf4240

    cmp-long v0, v2, v0

    if-gez v0, :cond_80

    const-wide/32 v0, 0x186a0

    cmp-long v0, v2, v0

    if-gez v0, :cond_7e

    const/4 v0, 0x5

    goto :goto_3e

    :cond_7e
    const/4 v0, 0x6

    goto :goto_3e

    :cond_80
    const-wide/32 v0, 0x989680

    cmp-long v0, v2, v0

    if-gez v0, :cond_89

    const/4 v0, 0x7

    goto :goto_3e

    :cond_89
    const/16 v0, 0x8

    goto :goto_3e

    :cond_8c
    const-wide v0, 0xe8d4a51000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_ba

    const-wide v0, 0x2540be400L

    cmp-long v0, v2, v0

    if-gez v0, :cond_ab

    const-wide/32 v0, 0x3b9aca00

    cmp-long v0, v2, v0

    if-gez v0, :cond_a8

    const/16 v0, 0x9

    goto :goto_3e

    :cond_a8
    const/16 v0, 0xa

    goto :goto_3e

    :cond_ab
    const-wide v0, 0x174876e800L

    cmp-long v0, v2, v0

    if-gez v0, :cond_b7

    const/16 v0, 0xb

    goto :goto_3e

    :cond_b7
    const/16 v0, 0xc

    goto :goto_3e

    :cond_ba
    const-wide v0, 0x38d7ea4c68000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_e1

    const-wide v0, 0x9184e72a000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_d0

    const/16 v0, 0xd

    goto/16 :goto_3e

    :cond_d0
    const-wide v0, 0x5af3107a4000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_dd

    const/16 v0, 0xe

    goto/16 :goto_3e

    :cond_dd
    const/16 v0, 0xf

    goto/16 :goto_3e

    :cond_e1
    const-wide v0, 0x16345785d8a0000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_fb

    const-wide v0, 0x2386f26fc10000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_f7

    const/16 v0, 0x10

    goto/16 :goto_3e

    :cond_f7
    const/16 v0, 0x11

    goto/16 :goto_3e

    :cond_fb
    const-wide v0, 0xde0b6b3a7640000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_108

    const/16 v0, 0x12

    goto/16 :goto_3e

    :cond_108
    const/16 v0, 0x13

    goto/16 :goto_3e

    .line 1351
    :cond_10c
    if-eqz v4, :cond_114

    .line 1352
    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x2d

    aput-byte v2, v6, v1

    .line 1355
    :cond_114
    iget v1, v5, Lcom/bytedance/sdk/a/a/o;->c:I

    add-int/2addr v1, v0

    iput v1, v5, Lcom/bytedance/sdk/a/a/o;->c:I

    .line 1356
    iget-wide v2, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    goto/16 :goto_c

    :cond_121
    move v4, v0

    move-wide v2, p1

    goto/16 :goto_24
.end method

.method public synthetic i(I)Lcom/bytedance/sdk/a/a/d;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public i()S
    .registers 11

    .prologue
    const-wide/16 v8, 0x2

    .line 363
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_23

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_23
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 366
    iget v1, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    .line 367
    iget v2, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    .line 370
    sub-int v3, v2, v1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_3f

    .line 371
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/c;->h()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    .line 372
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/c;->h()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 373
    int-to-short v0, v0

    .line 388
    :goto_3e
    return v0

    .line 376
    :cond_3f
    iget-object v3, v0, Lcom/bytedance/sdk/a/a/o;->a:[B

    .line 377
    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    .line 379
    iget-wide v6, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 381
    if-ne v5, v2, :cond_62

    .line 382
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/o;->b()Lcom/bytedance/sdk/a/a/o;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 383
    invoke-static {v0}, Lcom/bytedance/sdk/a/a/p;->a(Lcom/bytedance/sdk/a/a/o;)V

    .line 388
    :goto_60
    int-to-short v0, v1

    goto :goto_3e

    .line 385
    :cond_62
    iput v5, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    goto :goto_60
.end method

.method public isOpen()Z
    .registers 2

    .prologue
    .line 1773
    const/4 v0, 0x1

    return v0
.end method

.method public j()I
    .registers 11

    .prologue
    const-wide/16 v8, 0x4

    .line 393
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_23

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_23
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 396
    iget v0, v1, Lcom/bytedance/sdk/a/a/o;->b:I

    .line 397
    iget v2, v1, Lcom/bytedance/sdk/a/a/o;->c:I

    .line 400
    sub-int v3, v2, v0

    const/4 v4, 0x4

    if-ge v3, v4, :cond_50

    .line 401
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/c;->h()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 402
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/c;->h()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 403
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/c;->h()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 404
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/c;->h()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 421
    :goto_4f
    return v0

    .line 407
    :cond_50
    iget-object v3, v1, Lcom/bytedance/sdk/a/a/o;->a:[B

    .line 408
    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    add-int/lit8 v4, v5, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v0, v5

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    .line 412
    iget-wide v6, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 414
    if-ne v5, v2, :cond_84

    .line 415
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/a/o;->b()Lcom/bytedance/sdk/a/a/o;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 416
    invoke-static {v1}, Lcom/bytedance/sdk/a/a/p;->a(Lcom/bytedance/sdk/a/a/o;)V

    goto :goto_4f

    .line 418
    :cond_84
    iput v5, v1, Lcom/bytedance/sdk/a/a/o;->b:I

    goto :goto_4f
.end method

.method public j(J)Lcom/bytedance/sdk/a/a/c;
    .registers 12

    .prologue
    .line 1362
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_d

    .line 1364
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    move-result-object p0

    .line 1377
    :goto_c
    return-object p0

    .line 1367
    :cond_d
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v0, 0x1

    .line 1369
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/a/a/c;->e(I)Lcom/bytedance/sdk/a/a/o;

    move-result-object v2

    .line 1370
    iget-object v3, v2, Lcom/bytedance/sdk/a/a/o;->a:[B

    .line 1371
    iget v0, v2, Lcom/bytedance/sdk/a/a/o;->c:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v4, v2, Lcom/bytedance/sdk/a/a/o;->c:I

    :goto_26
    if-lt v0, v4, :cond_37

    .line 1372
    sget-object v5, Lcom/bytedance/sdk/a/a/c;->c:[B

    const-wide/16 v6, 0xf

    and-long/2addr v6, p1

    long-to-int v6, v6

    aget-byte v5, v5, v6

    aput-byte v5, v3, v0

    .line 1373
    const/4 v5, 0x4

    ushr-long/2addr p1, v5

    .line 1371
    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    .line 1375
    :cond_37
    iget v0, v2, Lcom/bytedance/sdk/a/a/o;->c:I

    add-int/2addr v0, v1

    iput v0, v2, Lcom/bytedance/sdk/a/a/o;->c:I

    .line 1376
    iget-wide v2, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    int-to-long v0, v1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    goto :goto_c
.end method

.method public synthetic k(J)Lcom/bytedance/sdk/a/a/d;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/a/a/c;->j(J)Lcom/bytedance/sdk/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public k()S
    .registers 2

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/c;->i()S

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/u;->a(S)S

    move-result v0

    return v0
.end method

.method public l()I
    .registers 2

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/c;->j()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/u;->a(I)I

    move-result v0

    return v0
.end method

.method public synthetic l(J)Lcom/bytedance/sdk/a/a/d;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/a/a/c;->i(J)Lcom/bytedance/sdk/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public m()J
    .registers 19

    .prologue
    .line 535
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/bytedance/sdk/a/a/c;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_12

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "size == 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 537
    :cond_12
    const-wide/16 v4, 0x0

    .line 538
    const/4 v3, 0x0

    .line 539
    const/4 v2, 0x0

    .line 542
    :cond_16
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 544
    iget-object v11, v10, Lcom/bytedance/sdk/a/a/o;->a:[B

    .line 545
    iget v6, v10, Lcom/bytedance/sdk/a/a/o;->b:I

    .line 546
    iget v12, v10, Lcom/bytedance/sdk/a/a/o;->c:I

    move v7, v6

    .line 548
    :goto_21
    if-ge v7, v12, :cond_9c

    .line 551
    aget-byte v8, v11, v7

    .line 552
    const/16 v6, 0x30

    if-lt v8, v6, :cond_62

    const/16 v6, 0x39

    if-gt v8, v6, :cond_62

    .line 553
    add-int/lit8 v6, v8, -0x30

    .line 569
    :goto_2f
    const-wide/high16 v14, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v14, v4

    const-wide/16 v16, 0x0

    cmp-long v9, v14, v16

    if-eqz v9, :cond_bd

    .line 570
    new-instance v2, Lcom/bytedance/sdk/a/a/c;

    invoke-direct {v2}, Lcom/bytedance/sdk/a/a/c;-><init>()V

    invoke-virtual {v2, v4, v5}, Lcom/bytedance/sdk/a/a/c;->j(J)Lcom/bytedance/sdk/a/a/c;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    move-result-object v2

    .line 571
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number too large: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/a/c;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 554
    :cond_62
    const/16 v6, 0x61

    if-lt v8, v6, :cond_6f

    const/16 v6, 0x66

    if-gt v8, v6, :cond_6f

    .line 555
    add-int/lit8 v6, v8, -0x61

    add-int/lit8 v6, v6, 0xa

    goto :goto_2f

    .line 556
    :cond_6f
    const/16 v6, 0x41

    if-lt v8, v6, :cond_7c

    const/16 v6, 0x46

    if-gt v8, v6, :cond_7c

    .line 557
    add-int/lit8 v6, v8, -0x41

    add-int/lit8 v6, v6, 0xa

    goto :goto_2f

    .line 559
    :cond_7c
    if-nez v3, :cond_9b

    .line 560
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 561
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 564
    :cond_9b
    const/4 v2, 0x1

    .line 578
    :cond_9c
    if-ne v7, v12, :cond_c9

    .line 579
    invoke-virtual {v10}, Lcom/bytedance/sdk/a/a/o;->b()Lcom/bytedance/sdk/a/a/o;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 580
    invoke-static {v10}, Lcom/bytedance/sdk/a/a/p;->a(Lcom/bytedance/sdk/a/a/o;)V

    .line 584
    :goto_a9
    if-nez v2, :cond_b1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    if-nez v6, :cond_16

    .line 586
    :cond_b1
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/bytedance/sdk/a/a/c;->b:J

    int-to-long v2, v3

    sub-long v2, v6, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 587
    return-wide v4

    .line 574
    :cond_bd
    const/4 v8, 0x4

    shl-long/2addr v4, v8

    .line 575
    int-to-long v8, v6

    or-long/2addr v8, v4

    .line 548
    add-int/lit8 v4, v7, 0x1

    add-int/lit8 v3, v3, 0x1

    move v7, v4

    move-wide v4, v8

    goto/16 :goto_21

    .line 582
    :cond_c9
    iput v7, v10, Lcom/bytedance/sdk/a/a/o;->b:I

    goto :goto_a9
.end method

.method public n()Lcom/bytedance/sdk/a/a/f;
    .registers 3

    .prologue
    .line 592
    new-instance v0, Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/c;->q()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/a/a/f;-><init>([B)V

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .registers 4

    .prologue
    .line 744
    :try_start_0
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    sget-object v2, Lcom/bytedance/sdk/a/a/u;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/a/a/c;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    return-object v0

    .line 745
    :catch_9
    move-exception v0

    .line 746
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public p()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 804
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/a/c;->e(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()[B
    .registers 3

    .prologue
    .line 917
    :try_start_0
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/a/c;->g(J)[B
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    .line 918
    :catch_7
    move-exception v0

    .line 919
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final r()V
    .registers 3

    .prologue
    .line 995
    :try_start_0
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/a/c;->h(J)V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_6

    .line 999
    return-void

    .line 996
    :catch_6
    move-exception v0

    .line 997
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 972
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 973
    if-nez v1, :cond_6

    const/4 v0, -0x1

    .line 986
    :cond_5
    :goto_5
    return v0

    .line 975
    :cond_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v2, v1, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v3, v1, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 976
    iget-object v2, v1, Lcom/bytedance/sdk/a/a/o;->a:[B

    iget v3, v1, Lcom/bytedance/sdk/a/a/o;->b:I

    invoke-virtual {p1, v2, v3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 978
    iget v2, v1, Lcom/bytedance/sdk/a/a/o;->b:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/bytedance/sdk/a/a/o;->b:I

    .line 979
    iget-wide v2, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 981
    iget v2, v1, Lcom/bytedance/sdk/a/a/o;->b:I

    iget v3, v1, Lcom/bytedance/sdk/a/a/o;->c:I

    if-ne v2, v3, :cond_5

    .line 982
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/a/o;->b()Lcom/bytedance/sdk/a/a/o;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 983
    invoke-static {v1}, Lcom/bytedance/sdk/a/a/p;->a(Lcom/bytedance/sdk/a/a/o;)V

    goto :goto_5
.end method

.method public s()Lcom/bytedance/sdk/a/a/c;
    .registers 7

    .prologue
    .line 1942
    new-instance v1, Lcom/bytedance/sdk/a/a/c;

    invoke-direct {v1}, Lcom/bytedance/sdk/a/a/c;-><init>()V

    .line 1943
    iget-wide v2, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_f

    move-object v0, v1

    .line 1951
    :goto_e
    return-object v0

    .line 1945
    :cond_f
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/o;->a()Lcom/bytedance/sdk/a/a/o;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 1946
    iget-object v0, v1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    iget-object v2, v1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    iget-object v3, v1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    iput-object v3, v2, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    iput-object v3, v0, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    .line 1947
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    iget-object v0, v0, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    :goto_25
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    if-eq v0, v2, :cond_37

    .line 1948
    iget-object v2, v1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    iget-object v2, v2, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/o;->a()Lcom/bytedance/sdk/a/a/o;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/a/a/o;->a(Lcom/bytedance/sdk/a/a/o;)Lcom/bytedance/sdk/a/a/o;

    .line 1947
    iget-object v0, v0, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    goto :goto_25

    .line 1950
    :cond_37
    iget-wide v2, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    iput-wide v2, v1, Lcom/bytedance/sdk/a/a/c;->b:J

    move-object v0, v1

    .line 1951
    goto :goto_e
.end method

.method public final t()Lcom/bytedance/sdk/a/a/f;
    .registers 5

    .prologue
    .line 1958
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_24

    .line 1959
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1961
    :cond_24
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/a/c;->f(I)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1934
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/c;->t()Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/f;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic u()Lcom/bytedance/sdk/a/a/d;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/c;->d()Lcom/bytedance/sdk/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1198
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1200
    :cond_a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    move v0, v1

    .line 1202
    :goto_f
    if-lez v0, :cond_2c

    .line 1203
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/a/a/c;->e(I)Lcom/bytedance/sdk/a/a/o;

    move-result-object v2

    .line 1205
    iget v3, v2, Lcom/bytedance/sdk/a/a/o;->c:I

    rsub-int v3, v3, 0x2000

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1206
    iget-object v4, v2, Lcom/bytedance/sdk/a/a/o;->a:[B

    iget v5, v2, Lcom/bytedance/sdk/a/a/o;->c:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1208
    sub-int/2addr v0, v3

    .line 1209
    iget v4, v2, Lcom/bytedance/sdk/a/a/o;->c:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/bytedance/sdk/a/a/o;->c:I

    goto :goto_f

    .line 1212
    :cond_2c
    iget-wide v2, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 1213
    return v1
.end method
