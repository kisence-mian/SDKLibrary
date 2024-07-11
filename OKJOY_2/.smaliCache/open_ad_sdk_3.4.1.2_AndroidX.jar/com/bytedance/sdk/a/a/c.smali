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

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method


# virtual methods
.method public a([BII)I
    .registers 11

    .line 952
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/a/a/u;->a(JJJ)V

    .line 954
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 955
    if-nez v0, :cond_d

    const/4 p1, -0x1

    return p1

    .line 956
    :cond_d
    iget v1, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v2, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 957
    iget-object v1, v0, Lcom/bytedance/sdk/a/a/o;->a:[B

    iget v2, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 959
    iget p1, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    add-int/2addr p1, p3

    iput p1, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    .line 960
    iget-wide p1, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    int-to-long v1, p3

    sub-long/2addr p1, v1

    iput-wide p1, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 962
    iget p1, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    iget p2, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    if-ne p1, p2, :cond_37

    .line 963
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/o;->b()Lcom/bytedance/sdk/a/a/o;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 964
    invoke-static {v0}, Lcom/bytedance/sdk/a/a/p;->a(Lcom/bytedance/sdk/a/a/o;)V

    .line 967
    :cond_37
    return p3
.end method

.method public a(B)J
    .registers 8

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
    .registers 21

    .line 1518
    move-object v0, p0

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_85

    cmp-long v3, p4, p2

    if-ltz v3, :cond_85

    .line 1523
    iget-wide v3, v0, Lcom/bytedance/sdk/a/a/c;->b:J

    cmp-long v5, p4, v3

    if-lez v5, :cond_13

    move-wide v5, v3

    goto :goto_15

    :cond_13
    move-wide/from16 v5, p4

    .line 1524
    :goto_15
    cmp-long v7, p2, v5

    const-wide/16 v8, -0x1

    if-nez v7, :cond_1c

    return-wide v8

    .line 1533
    :cond_1c
    iget-object v7, v0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 1534
    if-nez v7, :cond_21

    .line 1536
    return-wide v8

    .line 1537
    :cond_21
    sub-long v10, v3, p2

    cmp-long v10, v10, p2

    if-gez v10, :cond_39

    .line 1539
    nop

    .line 1540
    :goto_28
    cmp-long v1, v3, p2

    if-lez v1, :cond_36

    .line 1541
    iget-object v7, v7, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    .line 1542
    iget v1, v7, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v2, v7, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    sub-long/2addr v3, v1

    goto :goto_28

    .line 1540
    :cond_36
    move-wide/from16 v1, p2

    goto :goto_4c

    .line 1546
    :cond_39
    nop

    .line 1547
    :goto_3a
    iget v3, v7, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v4, v7, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v3, v1

    cmp-long v10, v3, p2

    if-gez v10, :cond_49

    .line 1548
    iget-object v7, v7, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    .line 1549
    move-wide v1, v3

    goto :goto_3a

    .line 1547
    :cond_49
    move-wide v3, v1

    move-wide/from16 v1, p2

    .line 1555
    :goto_4c
    cmp-long v10, v3, v5

    if-gez v10, :cond_84

    .line 1556
    iget-object v10, v7, Lcom/bytedance/sdk/a/a/o;->a:[B

    .line 1557
    iget v11, v7, Lcom/bytedance/sdk/a/a/o;->c:I

    int-to-long v11, v11

    iget v13, v7, Lcom/bytedance/sdk/a/a/o;->b:I

    int-to-long v13, v13

    add-long/2addr v13, v5

    sub-long/2addr v13, v3

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v11, v11

    .line 1558
    iget v12, v7, Lcom/bytedance/sdk/a/a/o;->b:I

    int-to-long v12, v12

    add-long/2addr v12, v1

    sub-long/2addr v12, v3

    long-to-int v1, v12

    .line 1559
    :goto_65
    if-ge v1, v11, :cond_76

    .line 1560
    aget-byte v2, v10, v1

    move/from16 v12, p1

    if-ne v2, v12, :cond_73

    .line 1561
    iget v2, v7, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v1, v3

    return-wide v1

    .line 1559
    :cond_73
    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    .line 1566
    :cond_76
    move/from16 v12, p1

    iget v1, v7, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v2, v7, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v3, v1

    .line 1567
    nop

    .line 1568
    iget-object v7, v7, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    .line 1569
    move-wide v1, v3

    goto :goto_4c

    .line 1571
    :cond_84
    return-wide v8

    .line 1519
    :cond_85
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, v0, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 1520
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "size=%s fromIndex=%s toIndex=%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public a(Lcom/bytedance/sdk/a/a/c;J)J
    .registers 8

    .line 1494
    if-eqz p1, :cond_33

    .line 1495
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1a

    .line 1496
    iget-wide v2, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_11

    const-wide/16 p1, -0x1

    return-wide p1

    .line 1497
    :cond_11
    cmp-long v0, p2, v2

    if-lez v0, :cond_16

    move-wide p2, v2

    .line 1498
    :cond_16
    invoke-virtual {p1, p0, p2, p3}, Lcom/bytedance/sdk/a/a/c;->a_(Lcom/bytedance/sdk/a/a/c;J)V

    .line 1499
    return-wide p2

    .line 1495
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1494
    :cond_33
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/bytedance/sdk/a/a/s;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1218
    if-eqz p1, :cond_13

    .line 1219
    const-wide/16 v0, 0x0

    .line 1220
    :goto_4
    const-wide/16 v2, 0x2000

    invoke-interface {p1, p0, v2, v3}, Lcom/bytedance/sdk/a/a/s;->a(Lcom/bytedance/sdk/a/a/c;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_12

    .line 1221
    add-long/2addr v0, v2

    goto :goto_4

    .line 1223
    :cond_12
    return-wide v0

    .line 1218
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(I)Lcom/bytedance/sdk/a/a/c;
    .registers 5

    .line 1113
    const/16 v0, 0x80

    if-ge p1, v0, :cond_8

    .line 1115
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    goto :goto_60

    .line 1117
    :cond_8
    const/16 v1, 0x800

    const/16 v2, 0x3f

    if-ge p1, v1, :cond_1b

    .line 1119
    shr-int/lit8 v1, p1, 0x6

    or-int/lit16 v1, v1, 0xc0

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 1120
    and-int/2addr p1, v2

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    goto :goto_60

    .line 1122
    :cond_1b
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_41

    .line 1123
    const v1, 0xd800

    if-lt p1, v1, :cond_2d

    const v1, 0xdfff

    if-gt p1, v1, :cond_2d

    .line 1125
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    goto :goto_60

    .line 1128
    :cond_2d
    shr-int/lit8 v1, p1, 0xc

    or-int/lit16 v1, v1, 0xe0

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 1129
    shr-int/lit8 v1, p1, 0x6

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 1130
    and-int/2addr p1, v2

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    goto :goto_60

    .line 1133
    :cond_41
    const v1, 0x10ffff

    if-gt p1, v1, :cond_61

    .line 1135
    shr-int/lit8 v1, p1, 0x12

    or-int/lit16 v1, v1, 0xf0

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 1136
    shr-int/lit8 v1, p1, 0xc

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 1137
    shr-int/lit8 v1, p1, 0x6

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 1138
    and-int/2addr p1, v2

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 1145
    :goto_60
    return-object p0

    .line 1141
    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected code point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1142
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/bytedance/sdk/a/a/c;JJ)Lcom/bytedance/sdk/a/a/c;
    .registers 12

    .line 206
    if-eqz p1, :cond_63

    .line 207
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/u;->a(JJJ)V

    .line 208
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_10

    return-object p0

    .line 210
    :cond_10
    iget-wide v2, p1, Lcom/bytedance/sdk/a/a/c;->b:J

    add-long/2addr v2, p4

    iput-wide v2, p1, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 213
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 214
    :goto_17
    iget v3, v2, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v4, v2, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v3, p2, v3

    if-ltz v3, :cond_2b

    .line 215
    iget v3, v2, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v4, v2, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr p2, v3

    .line 214
    iget-object v2, v2, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    goto :goto_17

    .line 219
    :cond_2b
    :goto_2b
    cmp-long v3, p4, v0

    if-lez v3, :cond_62

    .line 220
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/a/o;->a()Lcom/bytedance/sdk/a/a/o;

    move-result-object v3

    .line 221
    iget v4, v3, Lcom/bytedance/sdk/a/a/o;->b:I

    int-to-long v4, v4

    add-long/2addr v4, p2

    long-to-int p2, v4

    iput p2, v3, Lcom/bytedance/sdk/a/a/o;->b:I

    .line 222
    iget p2, v3, Lcom/bytedance/sdk/a/a/o;->b:I

    long-to-int p3, p4

    add-int/2addr p2, p3

    iget p3, v3, Lcom/bytedance/sdk/a/a/o;->c:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, v3, Lcom/bytedance/sdk/a/a/o;->c:I

    .line 223
    iget-object p2, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    if-nez p2, :cond_51

    .line 224
    iput-object v3, v3, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    iput-object v3, v3, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    iput-object v3, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    goto :goto_56

    .line 226
    :cond_51
    iget-object p2, p2, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    invoke-virtual {p2, v3}, Lcom/bytedance/sdk/a/a/o;->a(Lcom/bytedance/sdk/a/a/o;)Lcom/bytedance/sdk/a/a/o;

    .line 228
    :goto_56
    iget p2, v3, Lcom/bytedance/sdk/a/a/o;->c:I

    iget p3, v3, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    sub-long/2addr p4, p2

    .line 229
    nop

    .line 219
    iget-object v2, v2, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    move-wide p2, v0

    goto :goto_2b

    .line 232
    :cond_62
    return-object p0

    .line 206
    :cond_63
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/bytedance/sdk/a/a/f;)Lcom/bytedance/sdk/a/a/c;
    .registers 3

    .line 1024
    if-eqz p1, :cond_6

    .line 1025
    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/a/a/f;->a(Lcom/bytedance/sdk/a/a/c;)V

    .line 1026
    return-object p0

    .line 1024
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteString == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/c;
    .registers 4

    .line 1031
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/bytedance/sdk/a/a/c;->a(Ljava/lang/String;II)Lcom/bytedance/sdk/a/a/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;II)Lcom/bytedance/sdk/a/a/c;
    .registers 11

    .line 1036
    if-eqz p1, :cond_137

    .line 1037
    if-ltz p2, :cond_11e

    .line 1038
    if-lt p3, p2, :cond_fb

    .line 1041
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_d4

    .line 1047
    nop

    :goto_d
    if-ge p2, p3, :cond_d3

    .line 1048
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1050
    const/16 v1, 0x80

    if-ge v0, v1, :cond_50

    .line 1051
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/a/a/c;->e(I)Lcom/bytedance/sdk/a/a/o;

    move-result-object v2

    .line 1052
    iget-object v3, v2, Lcom/bytedance/sdk/a/a/o;->a:[B

    .line 1053
    iget v4, v2, Lcom/bytedance/sdk/a/a/o;->c:I

    sub-int/2addr v4, p2

    .line 1054
    rsub-int v5, v4, 0x2000

    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1057
    add-int/lit8 v6, p2, 0x1

    add-int/2addr p2, v4

    int-to-byte v0, v0

    aput-byte v0, v3, p2

    .line 1061
    :goto_2d
    if-ge v6, v5, :cond_3e

    .line 1062
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result p2

    .line 1063
    if-lt p2, v1, :cond_36

    goto :goto_3e

    .line 1064
    :cond_36
    add-int/lit8 v0, v6, 0x1

    add-int/2addr v6, v4

    int-to-byte p2, p2

    aput-byte p2, v3, v6

    move v6, v0

    goto :goto_2d

    .line 1067
    :cond_3e
    :goto_3e
    add-int/2addr v4, v6

    iget p2, v2, Lcom/bytedance/sdk/a/a/o;->c:I

    sub-int/2addr v4, p2

    .line 1068
    iget p2, v2, Lcom/bytedance/sdk/a/a/o;->c:I

    add-int/2addr p2, v4

    iput p2, v2, Lcom/bytedance/sdk/a/a/o;->c:I

    .line 1069
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    int-to-long v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 1071
    move p2, v6

    goto/16 :goto_d1

    :cond_50
    const/16 v2, 0x800

    if-ge v0, v2, :cond_65

    .line 1073
    shr-int/lit8 v2, v0, 0x6

    or-int/lit16 v2, v2, 0xc0

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 1074
    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 1075
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_d1

    .line 1077
    :cond_65
    const v2, 0xd800

    const/16 v3, 0x3f

    if-lt v0, v2, :cond_bb

    const v2, 0xdfff

    if-le v0, v2, :cond_72

    goto :goto_bb

    .line 1087
    :cond_72
    add-int/lit8 v4, p2, 0x1

    if-ge v4, p3, :cond_7b

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_7c

    :cond_7b
    const/4 v5, 0x0

    .line 1088
    :goto_7c
    const v6, 0xdbff

    if-gt v0, v6, :cond_b4

    const v6, 0xdc00

    if-lt v5, v6, :cond_b4

    if-le v5, v2, :cond_89

    goto :goto_b4

    .line 1097
    :cond_89
    const/high16 v2, 0x10000

    const v4, -0xd801

    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0xa

    const v4, -0xdc01

    and-int/2addr v4, v5

    or-int/2addr v0, v4

    add-int/2addr v0, v2

    .line 1100
    shr-int/lit8 v2, v0, 0x12

    or-int/lit16 v2, v2, 0xf0

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 1101
    shr-int/lit8 v2, v0, 0xc

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 1102
    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 1103
    and-int/2addr v0, v3

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 1104
    add-int/lit8 p2, p2, 0x2

    goto :goto_d1

    .line 1089
    :cond_b4
    :goto_b4
    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 1090
    nop

    .line 1091
    move p2, v4

    goto/16 :goto_d

    .line 1079
    :cond_bb
    :goto_bb
    shr-int/lit8 v2, v0, 0xc

    or-int/lit16 v2, v2, 0xe0

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 1080
    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 1081
    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 1082
    add-int/lit8 p2, p2, 0x1

    .line 1106
    :goto_d1
    goto/16 :goto_d

    .line 1108
    :cond_d3
    return-object p0

    .line 1042
    :cond_d4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endIndex > string.length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " > "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 1043
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1039
    :cond_fb
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endIndex < beginIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " < "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1037
    :cond_11e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "beginIndex < 0: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1036
    :cond_137
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "string == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/bytedance/sdk/a/a/c;
    .registers 6

    .line 1155
    if-eqz p1, :cond_95

    .line 1156
    if-ltz p2, :cond_7c

    .line 1157
    if-lt p3, p2, :cond_59

    .line 1160
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_32

    .line 1164
    if-eqz p4, :cond_2a

    .line 1165
    sget-object v0, Lcom/bytedance/sdk/a/a/u;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/a/a/c;->a(Ljava/lang/String;II)Lcom/bytedance/sdk/a/a/c;

    move-result-object p1

    return-object p1

    .line 1166
    :cond_1b
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 1167
    const/4 p2, 0x0

    array-length p3, p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/a/a/c;->b([BII)Lcom/bytedance/sdk/a/a/c;

    move-result-object p1

    return-object p1

    .line 1164
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "charset == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1161
    :cond_32
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex > string.length: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " > "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 1162
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1158
    :cond_59
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex < beginIndex: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " < "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1156
    :cond_7c
    new-instance p1, Ljava/lang/IllegalAccessError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "beginIndex < 0: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1155
    :cond_95
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "string == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Lcom/bytedance/sdk/a/a/t;
    .registers 2

    .line 1782
    sget-object v0, Lcom/bytedance/sdk/a/a/t;->c:Lcom/bytedance/sdk/a/a/t;

    return-object v0
.end method

.method public a(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 766
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/u;->a(JJJ)V

    .line 767
    if-eqz p3, :cond_70

    .line 768
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_57

    .line 771
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1a

    const-string p1, ""

    return-object p1

    .line 773
    :cond_1a
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 774
    iget v1, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    iget v3, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_31

    .line 776
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/a/a/c;->g(J)[B

    move-result-object p1

    invoke-direct {v0, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 779
    :cond_31
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/bytedance/sdk/a/a/o;->a:[B

    iget v3, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    long-to-int v4, p1

    invoke-direct {v1, v2, v3, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 780
    iget p3, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    int-to-long v2, p3

    add-long/2addr v2, p1

    long-to-int p3, v2

    iput p3, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    .line 781
    iget-wide v2, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 783
    iget p1, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    iget p2, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    if-ne p1, p2, :cond_56

    .line 784
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/o;->b()Lcom/bytedance/sdk/a/a/o;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 785
    invoke-static {v0}, Lcom/bytedance/sdk/a/a/p;->a(Lcom/bytedance/sdk/a/a/o;)V

    .line 788
    :cond_56
    return-object v1

    .line 769
    :cond_57
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 767
    :cond_70
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "charset == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    .line 758
    :try_start_0
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/bytedance/sdk/a/a/c;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 759
    :catch_7
    move-exception p1

    .line 760
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public a(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 125
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    cmp-long p1, v0, p1

    if-ltz p1, :cond_7

    .line 126
    return-void

    .line 125
    :cond_7
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public a([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

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

    if-eq v1, v2, :cond_f

    .line 946
    add-int/2addr v0, v1

    .line 947
    goto :goto_1

    .line 945
    :cond_f
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 948
    :cond_15
    return-void
.end method

.method public a(JLcom/bytedance/sdk/a/a/f;)Z
    .registers 10

    .line 1718
    invoke-virtual {p3}, Lcom/bytedance/sdk/a/a/f;->g()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/c;->a(JLcom/bytedance/sdk/a/a/f;II)Z

    move-result p1

    return p1
.end method

.method public a(JLcom/bytedance/sdk/a/a/f;II)Z
    .registers 12

    .line 1724
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_32

    if-ltz p4, :cond_32

    if-ltz p5, :cond_32

    iget-wide v2, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    sub-long/2addr v2, p1

    int-to-long v4, p5

    cmp-long v0, v2, v4

    if-ltz v0, :cond_32

    .line 1728
    invoke-virtual {p3}, Lcom/bytedance/sdk/a/a/f;->g()I

    move-result v0

    sub-int/2addr v0, p4

    if-ge v0, p5, :cond_1b

    goto :goto_32

    .line 1731
    :cond_1b
    move v0, v1

    :goto_1c
    if-ge v0, p5, :cond_30

    .line 1732
    int-to-long v2, v0

    add-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Lcom/bytedance/sdk/a/a/c;->b(J)B

    move-result v2

    add-int v3, p4, v0

    invoke-virtual {p3, v3}, Lcom/bytedance/sdk/a/a/f;->a(I)B

    move-result v3

    if-eq v2, v3, :cond_2d

    .line 1733
    return v1

    .line 1731
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 1736
    :cond_30
    const/4 p1, 0x1

    return p1

    .line 1729
    :cond_32
    :goto_32
    return v1
.end method

.method public a_(Lcom/bytedance/sdk/a/a/c;J)V
    .registers 10

    .line 1452
    if-eqz p1, :cond_93

    .line 1453
    if-eq p1, p0, :cond_8b

    .line 1454
    iget-wide v0, p1, Lcom/bytedance/sdk/a/a/c;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/u;->a(JJJ)V

    .line 1456
    :goto_c
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_8a

    .line 1458
    iget-object v0, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    iget v0, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    iget-object v1, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    iget v1, v1, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gez v0, :cond_5c

    .line 1459
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    if-eqz v0, :cond_27

    iget-object v0, v0, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    .line 1460
    :goto_28
    if-eqz v0, :cond_53

    iget-boolean v1, v0, Lcom/bytedance/sdk/a/a/o;->e:Z

    if-eqz v1, :cond_53

    iget v1, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    int-to-long v1, v1

    add-long/2addr v1, p2

    iget-boolean v3, v0, Lcom/bytedance/sdk/a/a/o;->d:Z

    if-eqz v3, :cond_38

    const/4 v3, 0x0

    goto :goto_3a

    :cond_38
    iget v3, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    :goto_3a
    int-to-long v3, v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2000

    cmp-long v1, v1, v3

    if-gtz v1, :cond_53

    .line 1463
    iget-object v1, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    long-to-int v2, p2

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/a/a/o;->a(Lcom/bytedance/sdk/a/a/o;I)V

    .line 1464
    iget-wide v0, p1, Lcom/bytedance/sdk/a/a/c;->b:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 1465
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 1466
    return-void

    .line 1470
    :cond_53
    iget-object v0, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    long-to-int v1, p2

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/a/o;->a(I)Lcom/bytedance/sdk/a/a/o;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 1475
    :cond_5c
    iget-object v0, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 1476
    iget v1, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v2, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 1477
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/o;->b()Lcom/bytedance/sdk/a/a/o;

    move-result-object v3

    iput-object v3, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 1478
    iget-object v3, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    if-nez v3, :cond_75

    .line 1479
    iput-object v0, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 1480
    iput-object v0, v0, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    iput-object v0, v0, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    goto :goto_7e

    .line 1482
    :cond_75
    iget-object v3, v3, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    .line 1483
    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/a/a/o;->a(Lcom/bytedance/sdk/a/a/o;)Lcom/bytedance/sdk/a/a/o;

    move-result-object v0

    .line 1484
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/o;->c()V

    .line 1486
    :goto_7e
    iget-wide v3, p1, Lcom/bytedance/sdk/a/a/c;->b:J

    sub-long/2addr v3, v1

    iput-wide v3, p1, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 1487
    iget-wide v3, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 1488
    sub-long/2addr p2, v1

    .line 1489
    goto :goto_c

    .line 1490
    :cond_8a
    return-void

    .line 1453
    :cond_8b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == this"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1452
    :cond_93
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(J)B
    .registers 9

    .line 345
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/u;->a(JJJ)V

    .line 346
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    sub-long v2, v0, p1

    cmp-long v2, v2, p1

    if-lez v2, :cond_29

    .line 347
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 348
    :goto_12
    iget v1, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v2, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v1, v2

    .line 349
    int-to-long v1, v1

    cmp-long v3, p1, v1

    if-gez v3, :cond_25

    iget-object v1, v0, Lcom/bytedance/sdk/a/a/o;->a:[B

    iget v0, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    long-to-int p1, p1

    add-int/2addr v0, p1

    aget-byte p1, v1, v0

    return p1

    .line 350
    :cond_25
    sub-long/2addr p1, v1

    .line 347
    iget-object v0, v0, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    goto :goto_12

    .line 353
    :cond_29
    sub-long/2addr p1, v0

    .line 354
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    :goto_2c
    iget-object v0, v0, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    .line 355
    iget v1, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v2, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr p1, v1

    .line 356
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_44

    iget-object v1, v0, Lcom/bytedance/sdk/a/a/o;->a:[B

    iget v0, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    long-to-int p1, p1

    add-int/2addr v0, p1

    aget-byte p1, v1, v0

    return p1

    .line 354
    :cond_44
    goto :goto_2c
.end method

.method public final b()J
    .registers 3

    .line 67
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    return-wide v0
.end method

.method public b(I)Lcom/bytedance/sdk/a/a/c;
    .registers 6

    .line 1238
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/a/c;->e(I)Lcom/bytedance/sdk/a/a/o;

    move-result-object v0

    .line 1239
    iget-object v1, v0, Lcom/bytedance/sdk/a/a/o;->a:[B

    iget v2, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

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

    .line 1172
    if-eqz p1, :cond_9

    .line 1173
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/bytedance/sdk/a/a/c;->b([BII)Lcom/bytedance/sdk/a/a/c;

    move-result-object p1

    return-object p1

    .line 1172
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b([BII)Lcom/bytedance/sdk/a/a/c;
    .registers 13

    .line 1178
    if-eqz p1, :cond_30

    .line 1179
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/a/a/u;->a(JJJ)V

    .line 1181
    add-int/2addr p3, p2

    .line 1182
    :goto_b
    if-ge p2, p3, :cond_2a

    .line 1183
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/a/c;->e(I)Lcom/bytedance/sdk/a/a/o;

    move-result-object v0

    .line 1185
    sub-int v1, p3, p2

    iget v2, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    rsub-int v2, v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1186
    iget-object v2, v0, Lcom/bytedance/sdk/a/a/o;->a:[B

    iget v3, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1188
    add-int/2addr p2, v1

    .line 1189
    iget v2, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    .line 1190
    goto :goto_b

    .line 1192
    :cond_2a
    iget-wide p1, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    add-long/2addr p1, v7

    iput-wide p1, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 1193
    return-object p0

    .line 1178
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/d;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/a/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/c;

    move-result-object p1

    return-object p1
.end method

.method public c()Lcom/bytedance/sdk/a/a/c;
    .registers 1

    .line 72
    return-object p0
.end method

.method public c(I)Lcom/bytedance/sdk/a/a/c;
    .registers 7

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

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v1, v3

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
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/a/c;->b([B)Lcom/bytedance/sdk/a/a/c;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c([BII)Lcom/bytedance/sdk/a/a/d;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/a/a/c;->b([BII)Lcom/bytedance/sdk/a/a/c;

    move-result-object p1

    return-object p1
.end method

.method public c(J)Lcom/bytedance/sdk/a/a/f;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 597
    new-instance v0, Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/a/a/c;->g(J)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/a/a/f;-><init>([B)V

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/c;->s()Lcom/bytedance/sdk/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 1

    .line 1778
    return-void
.end method

.method public d()Lcom/bytedance/sdk/a/a/c;
    .registers 1

    .line 110
    return-object p0
.end method

.method public d(I)Lcom/bytedance/sdk/a/a/c;
    .registers 7

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

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v1, v3

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

    .line 752
    sget-object v0, Lcom/bytedance/sdk/a/a/u;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/sdk/a/a/c;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method e(I)Lcom/bytedance/sdk/a/a/o;
    .registers 5

    .line 1385
    const/4 v0, 0x1

    if-lt p1, v0, :cond_2a

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_2a

    .line 1388
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    if-nez v1, :cond_16

    .line 1389
    invoke-static {}, Lcom/bytedance/sdk/a/a/p;->a()Lcom/bytedance/sdk/a/a/o;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 1390
    iput-object p1, p1, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    iput-object p1, p1, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    return-object p1

    .line 1393
    :cond_16
    iget-object v1, v1, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    .line 1394
    iget v2, v1, Lcom/bytedance/sdk/a/a/o;->c:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_21

    iget-boolean p1, v1, Lcom/bytedance/sdk/a/a/o;->e:Z

    if-nez p1, :cond_29

    .line 1395
    :cond_21
    invoke-static {}, Lcom/bytedance/sdk/a/a/p;->a()Lcom/bytedance/sdk/a/a/o;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/a/a/o;->a(Lcom/bytedance/sdk/a/a/o;)Lcom/bytedance/sdk/a/a/o;

    move-result-object v1

    .line 1397
    :cond_29
    return-object v1

    .line 1386
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public e(J)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 809
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_97

    .line 810
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    const-wide/16 v3, 0x1

    if-nez v2, :cond_12

    goto :goto_14

    :cond_12
    add-long v0, p1, v3

    .line 811
    :goto_14
    const/16 v6, 0xa

    const-wide/16 v7, 0x0

    move-object v5, p0

    move-wide v9, v0

    invoke-virtual/range {v5 .. v10}, Lcom/bytedance/sdk/a/a/c;->a(BJJ)J

    move-result-wide v5

    .line 812
    const-wide/16 v7, -0x1

    cmp-long v2, v5, v7

    if-eqz v2, :cond_29

    invoke-virtual {p0, v5, v6}, Lcom/bytedance/sdk/a/a/c;->f(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 813
    :cond_29
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v5

    cmp-long v2, v0, v5

    if-gez v2, :cond_48

    sub-long v2, v0, v3

    .line 814
    invoke-virtual {p0, v2, v3}, Lcom/bytedance/sdk/a/a/c;->b(J)B

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_48

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/a/c;->b(J)B

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_48

    .line 815
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/a/c;->f(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 817
    :cond_48
    new-instance v6, Lcom/bytedance/sdk/a/a/c;

    invoke-direct {v6}, Lcom/bytedance/sdk/a/a/c;-><init>()V

    .line 818
    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x20

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/c;->a(Lcom/bytedance/sdk/a/a/c;JJ)Lcom/bytedance/sdk/a/a/c;

    .line 819
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\n not found: limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " content="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 820
    invoke-virtual {v6}, Lcom/bytedance/sdk/a/a/c;->n()Lcom/bytedance/sdk/a/a/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/a/a/f;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x2026

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 809
    :cond_97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Z
    .registers 5

    .line 120
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 15

    .line 1882
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1883
    :cond_4
    instance-of v1, p1, Lcom/bytedance/sdk/a/a/c;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 1884
    :cond_a
    check-cast p1, Lcom/bytedance/sdk/a/a/c;

    .line 1885
    iget-wide v3, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    iget-wide v5, p1, Lcom/bytedance/sdk/a/a/c;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    .line 1886
    :cond_15
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_1c

    return v0

    .line 1888
    :cond_1c
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 1889
    iget-object p1, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 1890
    iget v3, v1, Lcom/bytedance/sdk/a/a/o;->b:I

    .line 1891
    iget v4, p1, Lcom/bytedance/sdk/a/a/o;->b:I

    .line 1893
    nop

    :goto_25
    iget-wide v7, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    cmp-long v7, v5, v7

    if-gez v7, :cond_62

    .line 1894
    iget v7, v1, Lcom/bytedance/sdk/a/a/o;->c:I

    sub-int/2addr v7, v3

    iget v8, p1, Lcom/bytedance/sdk/a/a/o;->c:I

    sub-int/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-long v7, v7

    .line 1896
    move v9, v2

    :goto_37
    int-to-long v10, v9

    cmp-long v10, v10, v7

    if-gez v10, :cond_50

    .line 1897
    iget-object v10, v1, Lcom/bytedance/sdk/a/a/o;->a:[B

    add-int/lit8 v11, v3, 0x1

    aget-byte v3, v10, v3

    iget-object v10, p1, Lcom/bytedance/sdk/a/a/o;->a:[B

    add-int/lit8 v12, v4, 0x1

    aget-byte v4, v10, v4

    if-eq v3, v4, :cond_4b

    return v2

    .line 1896
    :cond_4b
    add-int/lit8 v9, v9, 0x1

    move v3, v11

    move v4, v12

    goto :goto_37

    .line 1900
    :cond_50
    iget v9, v1, Lcom/bytedance/sdk/a/a/o;->c:I

    if-ne v3, v9, :cond_58

    .line 1901
    iget-object v1, v1, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    .line 1902
    iget v3, v1, Lcom/bytedance/sdk/a/a/o;->b:I

    .line 1905
    :cond_58
    iget v9, p1, Lcom/bytedance/sdk/a/a/o;->c:I

    if-ne v4, v9, :cond_60

    .line 1906
    iget-object p1, p1, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    .line 1907
    iget v4, p1, Lcom/bytedance/sdk/a/a/o;->b:I

    .line 1893
    :cond_60
    add-long/2addr v5, v7

    goto :goto_25

    .line 1911
    :cond_62
    return v0
.end method

.method public final f(I)Lcom/bytedance/sdk/a/a/f;
    .registers 3

    .line 1968
    if-nez p1, :cond_5

    sget-object p1, Lcom/bytedance/sdk/a/a/f;->b:Lcom/bytedance/sdk/a/a/f;

    return-object p1

    .line 1969
    :cond_5
    new-instance v0, Lcom/bytedance/sdk/a/a/q;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/a/a/q;-><init>(Lcom/bytedance/sdk/a/a/c;I)V

    return-object v0
.end method

.method public f()Ljava/io/InputStream;
    .registers 2

    .line 140
    new-instance v0, Lcom/bytedance/sdk/a/a/c$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/a/a/c$1;-><init>(Lcom/bytedance/sdk/a/a/c;)V

    return-object v0
.end method

.method f(J)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 824
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const-wide/16 v1, 0x1

    if-lez v0, :cond_1c

    sub-long v3, p1, v1

    invoke-virtual {p0, v3, v4}, Lcom/bytedance/sdk/a/a/c;->b(J)B

    move-result v0

    const/16 v5, 0xd

    if-ne v0, v5, :cond_1c

    .line 826
    invoke-virtual {p0, v3, v4}, Lcom/bytedance/sdk/a/a/c;->d(J)Ljava/lang/String;

    move-result-object p1

    .line 827
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/a/c;->h(J)V

    .line 828
    return-object p1

    .line 832
    :cond_1c
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/a/a/c;->d(J)Ljava/lang/String;

    move-result-object p1

    .line 833
    invoke-virtual {p0, v1, v2}, Lcom/bytedance/sdk/a/a/c;->h(J)V

    .line 834
    return-object p1
.end method

.method public flush()V
    .registers 1

    .line 1769
    return-void
.end method

.method public final g()J
    .registers 6

    .line 307
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 308
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    return-wide v2

    .line 311
    :cond_9
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    iget-object v2, v2, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    .line 312
    iget v3, v2, Lcom/bytedance/sdk/a/a/o;->c:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_1e

    iget-boolean v3, v2, Lcom/bytedance/sdk/a/a/o;->e:Z

    if-eqz v3, :cond_1e

    .line 313
    iget v3, v2, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v2, v2, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v3, v2

    int-to-long v2, v3

    sub-long/2addr v0, v2

    .line 316
    :cond_1e
    return-wide v0
.end method

.method public synthetic g(I)Lcom/bytedance/sdk/a/a/d;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/a/c;->d(I)Lcom/bytedance/sdk/a/a/c;

    move-result-object p1

    return-object p1
.end method

.method public g(J)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 925
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/u;->a(JJJ)V

    .line 926
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_16

    .line 930
    long-to-int p1, p1

    new-array p1, p1, [B

    .line 931
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/a/c;->a([B)V

    .line 932
    return-object p1

    .line 927
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()B
    .registers 10

    .line 321
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2a

    .line 323
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
    iget-wide v5, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 331
    if-ne v4, v2, :cond_27

    .line 332
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/o;->b()Lcom/bytedance/sdk/a/a/o;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 333
    invoke-static {v0}, Lcom/bytedance/sdk/a/a/p;->a(Lcom/bytedance/sdk/a/a/o;)V

    goto :goto_29

    .line 335
    :cond_27
    iput v4, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    .line 338
    :goto_29
    return v1

    .line 321
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic h(I)Lcom/bytedance/sdk/a/a/d;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/a/c;->c(I)Lcom/bytedance/sdk/a/a/c;

    move-result-object p1

    return-object p1
.end method

.method public h(J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1006
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_41

    .line 1007
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    if-eqz v0, :cond_3b

    .line 1009
    iget v0, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    iget v1, v1, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 1010
    iget-wide v1, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 1011
    sub-long/2addr p1, v3

    .line 1012
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    iget v2, v1, Lcom/bytedance/sdk/a/a/o;->b:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/bytedance/sdk/a/a/o;->b:I

    .line 1014
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    iget v0, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    iget v1, v1, Lcom/bytedance/sdk/a/a/o;->c:I

    if-ne v0, v1, :cond_3a

    .line 1015
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 1016
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/o;->b()Lcom/bytedance/sdk/a/a/o;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 1017
    invoke-static {v0}, Lcom/bytedance/sdk/a/a/p;->a(Lcom/bytedance/sdk/a/a/o;)V

    .line 1019
    :cond_3a
    goto :goto_0

    .line 1007
    :cond_3b
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 1020
    :cond_41
    return-void
.end method

.method public hashCode()I
    .registers 6

    .line 1916
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 1917
    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 1918
    :cond_6
    const/4 v1, 0x1

    .line 1920
    :goto_7
    iget v2, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    iget v3, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    :goto_b
    if-ge v2, v3, :cond_17

    .line 1921
    mul-int/lit8 v1, v1, 0x1f

    iget-object v4, v0, Lcom/bytedance/sdk/a/a/o;->a:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    .line 1920
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1923
    :cond_17
    iget-object v0, v0, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    .line 1924
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    if-ne v0, v2, :cond_1e

    .line 1925
    return v1

    .line 1924
    :cond_1e
    goto :goto_7
.end method

.method public i(J)Lcom/bytedance/sdk/a/a/c;
    .registers 14

    .line 1305
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_d

    .line 1307
    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    move-result-object p1

    return-object p1

    .line 1310
    :cond_d
    const/4 v3, 0x0

    .line 1311
    const/4 v4, 0x1

    if-gez v2, :cond_1e

    .line 1312
    neg-long p1, p1

    .line 1313
    cmp-long v2, p1, v0

    if-gez v2, :cond_1d

    .line 1314
    const-string p1, "-9223372036854775808"

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/a/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/c;

    move-result-object p1

    return-object p1

    .line 1316
    :cond_1d
    move v3, v4

    .line 1320
    :cond_1e
    const-wide/32 v5, 0x5f5e100

    cmp-long v2, p1, v5

    const-wide/16 v5, 0xa

    if-gez v2, :cond_6a

    const-wide/16 v7, 0x2710

    cmp-long v2, p1, v7

    if-gez v2, :cond_48

    const-wide/16 v7, 0x64

    cmp-long v2, p1, v7

    if-gez v2, :cond_3c

    cmp-long v2, p1, v5

    if-gez v2, :cond_39

    goto/16 :goto_e2

    :cond_39
    const/4 v4, 0x2

    goto/16 :goto_e2

    :cond_3c
    const-wide/16 v7, 0x3e8

    cmp-long v2, p1, v7

    if-gez v2, :cond_45

    const/4 v4, 0x3

    goto/16 :goto_e2

    :cond_45
    const/4 v4, 0x4

    goto/16 :goto_e2

    :cond_48
    const-wide/32 v7, 0xf4240

    cmp-long v2, p1, v7

    if-gez v2, :cond_5c

    const-wide/32 v7, 0x186a0

    cmp-long v2, p1, v7

    if-gez v2, :cond_59

    const/4 v4, 0x5

    goto/16 :goto_e2

    :cond_59
    const/4 v4, 0x6

    goto/16 :goto_e2

    :cond_5c
    const-wide/32 v7, 0x989680

    cmp-long v2, p1, v7

    if-gez v2, :cond_66

    const/4 v4, 0x7

    goto/16 :goto_e2

    :cond_66
    const/16 v4, 0x8

    goto/16 :goto_e2

    :cond_6a
    const-wide v7, 0xe8d4a51000L

    cmp-long v2, p1, v7

    if-gez v2, :cond_98

    const-wide v7, 0x2540be400L

    cmp-long v2, p1, v7

    if-gez v2, :cond_89

    const-wide/32 v7, 0x3b9aca00

    cmp-long v2, p1, v7

    if-gez v2, :cond_86

    const/16 v4, 0x9

    goto :goto_e2

    :cond_86
    const/16 v4, 0xa

    goto :goto_e2

    :cond_89
    const-wide v7, 0x174876e800L

    cmp-long v2, p1, v7

    if-gez v2, :cond_95

    const/16 v4, 0xb

    goto :goto_e2

    :cond_95
    const/16 v4, 0xc

    goto :goto_e2

    :cond_98
    const-wide v7, 0x38d7ea4c68000L

    cmp-long v2, p1, v7

    if-gez v2, :cond_bc

    const-wide v7, 0x9184e72a000L

    cmp-long v2, p1, v7

    if-gez v2, :cond_ad

    const/16 v4, 0xd

    goto :goto_e2

    :cond_ad
    const-wide v7, 0x5af3107a4000L

    cmp-long v2, p1, v7

    if-gez v2, :cond_b9

    const/16 v4, 0xe

    goto :goto_e2

    :cond_b9
    const/16 v4, 0xf

    goto :goto_e2

    :cond_bc
    const-wide v7, 0x16345785d8a0000L

    cmp-long v2, p1, v7

    if-gez v2, :cond_d4

    const-wide v7, 0x2386f26fc10000L

    cmp-long v2, p1, v7

    if-gez v2, :cond_d1

    const/16 v4, 0x10

    goto :goto_e2

    :cond_d1
    const/16 v4, 0x11

    goto :goto_e2

    :cond_d4
    const-wide v7, 0xde0b6b3a7640000L

    cmp-long v2, p1, v7

    if-gez v2, :cond_e0

    const/16 v4, 0x12

    goto :goto_e2

    :cond_e0
    const/16 v4, 0x13

    .line 1339
    :goto_e2
    if-eqz v3, :cond_e6

    .line 1340
    add-int/lit8 v4, v4, 0x1

    .line 1343
    :cond_e6
    invoke-virtual {p0, v4}, Lcom/bytedance/sdk/a/a/c;->e(I)Lcom/bytedance/sdk/a/a/o;

    move-result-object v2

    .line 1344
    iget-object v7, v2, Lcom/bytedance/sdk/a/a/o;->a:[B

    .line 1345
    iget v8, v2, Lcom/bytedance/sdk/a/a/o;->c:I

    add-int/2addr v8, v4

    .line 1346
    :goto_ef
    cmp-long v9, p1, v0

    if-eqz v9, :cond_100

    .line 1347
    rem-long v9, p1, v5

    long-to-int v9, v9

    .line 1348
    add-int/lit8 v8, v8, -0x1

    sget-object v10, Lcom/bytedance/sdk/a/a/c;->c:[B

    aget-byte v9, v10, v9

    aput-byte v9, v7, v8

    .line 1349
    div-long/2addr p1, v5

    .line 1350
    goto :goto_ef

    .line 1351
    :cond_100
    if-eqz v3, :cond_108

    .line 1352
    add-int/lit8 v8, v8, -0x1

    const/16 p1, 0x2d

    aput-byte p1, v7, v8

    .line 1355
    :cond_108
    iget p1, v2, Lcom/bytedance/sdk/a/a/o;->c:I

    add-int/2addr p1, v4

    iput p1, v2, Lcom/bytedance/sdk/a/a/o;->c:I

    .line 1356
    iget-wide p1, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    int-to-long v0, v4

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 1357
    return-object p0
.end method

.method public synthetic i(I)Lcom/bytedance/sdk/a/a/d;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    move-result-object p1

    return-object p1
.end method

.method public i()S
    .registers 9

    .line 363
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4a

    .line 365
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 366
    iget v1, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    .line 367
    iget v4, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    .line 370
    sub-int v5, v4, v1

    const/4 v6, 0x2

    if-ge v5, v6, :cond_24

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

    return v0

    .line 376
    :cond_24
    iget-object v5, v0, Lcom/bytedance/sdk/a/a/o;->a:[B

    .line 377
    add-int/lit8 v6, v1, 0x1

    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v7, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    .line 379
    iget-wide v5, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    sub-long/2addr v5, v2

    iput-wide v5, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 381
    if-ne v7, v4, :cond_46

    .line 382
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/o;->b()Lcom/bytedance/sdk/a/a/o;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 383
    invoke-static {v0}, Lcom/bytedance/sdk/a/a/p;->a(Lcom/bytedance/sdk/a/a/o;)V

    goto :goto_48

    .line 385
    :cond_46
    iput v7, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    .line 388
    :goto_48
    int-to-short v0, v1

    return v0

    .line 363
    :cond_4a
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
.end method

.method public isOpen()Z
    .registers 2

    .line 1773
    const/4 v0, 0x1

    return v0
.end method

.method public j()I
    .registers 9

    .line 393
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_6c

    .line 395
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 396
    iget v1, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    .line 397
    iget v4, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    .line 400
    sub-int v5, v4, v1

    const/4 v6, 0x4

    if-ge v5, v6, :cond_35

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

    .line 401
    return v0

    .line 407
    :cond_35
    iget-object v5, v0, Lcom/bytedance/sdk/a/a/o;->a:[B

    .line 408
    add-int/lit8 v6, v1, 0x1

    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v1, v6

    add-int/lit8 v6, v7, 0x1

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v1, v7

    add-int/lit8 v7, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    .line 412
    iget-wide v5, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    sub-long/2addr v5, v2

    iput-wide v5, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 414
    if-ne v7, v4, :cond_69

    .line 415
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/o;->b()Lcom/bytedance/sdk/a/a/o;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 416
    invoke-static {v0}, Lcom/bytedance/sdk/a/a/p;->a(Lcom/bytedance/sdk/a/a/o;)V

    goto :goto_6b

    .line 418
    :cond_69
    iput v7, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    .line 421
    :goto_6b
    return v1

    .line 393
    :cond_6c
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
.end method

.method public j(J)Lcom/bytedance/sdk/a/a/c;
    .registers 12

    .line 1362
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_d

    .line 1364
    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    move-result-object p1

    return-object p1

    .line 1367
    :cond_d
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 1369
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/a/c;->e(I)Lcom/bytedance/sdk/a/a/o;

    move-result-object v2

    .line 1370
    iget-object v3, v2, Lcom/bytedance/sdk/a/a/o;->a:[B

    .line 1371
    iget v4, v2, Lcom/bytedance/sdk/a/a/o;->c:I

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    iget v5, v2, Lcom/bytedance/sdk/a/a/o;->c:I

    :goto_26
    if-lt v4, v5, :cond_36

    .line 1372
    sget-object v6, Lcom/bytedance/sdk/a/a/c;->c:[B

    const-wide/16 v7, 0xf

    and-long/2addr v7, p1

    long-to-int v7, v7

    aget-byte v6, v6, v7

    aput-byte v6, v3, v4

    .line 1373
    ushr-long/2addr p1, v1

    .line 1371
    add-int/lit8 v4, v4, -0x1

    goto :goto_26

    .line 1375
    :cond_36
    iget p1, v2, Lcom/bytedance/sdk/a/a/o;->c:I

    add-int/2addr p1, v0

    iput p1, v2, Lcom/bytedance/sdk/a/a/o;->c:I

    .line 1376
    iget-wide p1, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 1377
    return-object p0
.end method

.method public synthetic k(J)Lcom/bytedance/sdk/a/a/d;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/a/a/c;->j(J)Lcom/bytedance/sdk/a/a/c;

    move-result-object p1

    return-object p1
.end method

.method public k()S
    .registers 2

    .line 461
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/c;->i()S

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/u;->a(S)S

    move-result v0

    return v0
.end method

.method public l()I
    .registers 2

    .line 466
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/c;->j()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/u;->a(I)I

    move-result v0

    return v0
.end method

.method public synthetic l(J)Lcom/bytedance/sdk/a/a/d;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/a/a/c;->i(J)Lcom/bytedance/sdk/a/a/c;

    move-result-object p1

    return-object p1
.end method

.method public m()J
    .registers 15

    .line 535
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b4

    .line 537
    nop

    .line 538
    nop

    .line 539
    const/4 v0, 0x0

    move v1, v0

    move-wide v4, v2

    .line 542
    :cond_d
    iget-object v6, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 544
    iget-object v7, v6, Lcom/bytedance/sdk/a/a/o;->a:[B

    .line 545
    iget v8, v6, Lcom/bytedance/sdk/a/a/o;->b:I

    .line 546
    iget v9, v6, Lcom/bytedance/sdk/a/a/o;->c:I

    .line 548
    :goto_15
    if-ge v8, v9, :cond_99

    .line 551
    aget-byte v10, v7, v8

    .line 552
    const/16 v11, 0x30

    if-lt v10, v11, :cond_24

    const/16 v11, 0x39

    if-gt v10, v11, :cond_24

    .line 553
    add-int/lit8 v11, v10, -0x30

    goto :goto_3d

    .line 554
    :cond_24
    const/16 v11, 0x61

    if-lt v10, v11, :cond_31

    const/16 v11, 0x66

    if-gt v10, v11, :cond_31

    .line 555
    add-int/lit8 v11, v10, -0x61

    add-int/lit8 v11, v11, 0xa

    goto :goto_3d

    .line 556
    :cond_31
    const/16 v11, 0x41

    if-lt v10, v11, :cond_77

    const/16 v11, 0x46

    if-gt v10, v11, :cond_77

    .line 557
    add-int/lit8 v11, v10, -0x41

    add-int/lit8 v11, v11, 0xa

    .line 569
    :goto_3d
    const-wide/high16 v12, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v12, v4

    cmp-long v12, v12, v2

    if-nez v12, :cond_4d

    .line 574
    const/4 v10, 0x4

    shl-long/2addr v4, v10

    .line 575
    int-to-long v10, v11

    or-long/2addr v4, v10

    .line 548
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 570
    :cond_4d
    new-instance v0, Lcom/bytedance/sdk/a/a/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/a/c;-><init>()V

    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/a/a/c;->j(J)Lcom/bytedance/sdk/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    move-result-object v0

    .line 571
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/c;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 559
    :cond_77
    if-eqz v0, :cond_7c

    .line 564
    nop

    .line 565
    const/4 v1, 0x1

    goto :goto_99

    .line 560
    :cond_7c
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 561
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_99
    :goto_99
    if-ne v8, v9, :cond_a5

    .line 579
    invoke-virtual {v6}, Lcom/bytedance/sdk/a/a/o;->b()Lcom/bytedance/sdk/a/a/o;

    move-result-object v7

    iput-object v7, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 580
    invoke-static {v6}, Lcom/bytedance/sdk/a/a/p;->a(Lcom/bytedance/sdk/a/a/o;)V

    goto :goto_a7

    .line 582
    :cond_a5
    iput v8, v6, Lcom/bytedance/sdk/a/a/o;->b:I

    .line 584
    :goto_a7
    if-nez v1, :cond_ad

    iget-object v6, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    if-nez v6, :cond_d

    .line 586
    :cond_ad
    iget-wide v1, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    int-to-long v6, v0

    sub-long/2addr v1, v6

    iput-wide v1, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 587
    return-wide v4

    .line 535
    :cond_b4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n()Lcom/bytedance/sdk/a/a/f;
    .registers 3

    .line 592
    new-instance v0, Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/c;->q()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/a/a/f;-><init>([B)V

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .registers 4

    .line 744
    :try_start_0
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    sget-object v2, Lcom/bytedance/sdk/a/a/u;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/a/a/c;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_8} :catch_9

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

    .line 804
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/a/c;->e(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()[B
    .registers 3

    .line 917
    :try_start_0
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/a/c;->g(J)[B

    move-result-object v0
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_6} :catch_7

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

    .line 995
    :try_start_0
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/a/c;->h(J)V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_7

    .line 998
    nop

    .line 999
    return-void

    .line 996
    :catch_7
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

    .line 972
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 973
    if-nez v0, :cond_6

    const/4 p1, -0x1

    return p1

    .line 975
    :cond_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v2, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v3, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 976
    iget-object v2, v0, Lcom/bytedance/sdk/a/a/o;->a:[B

    iget v3, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 978
    iget p1, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    add-int/2addr p1, v1

    iput p1, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    .line 979
    iget-wide v2, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 981
    iget p1, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    iget v2, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    if-ne p1, v2, :cond_34

    .line 982
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/o;->b()Lcom/bytedance/sdk/a/a/o;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 983
    invoke-static {v0}, Lcom/bytedance/sdk/a/a/p;->a(Lcom/bytedance/sdk/a/a/o;)V

    .line 986
    :cond_34
    return v1
.end method

.method public s()Lcom/bytedance/sdk/a/a/c;
    .registers 6

    .line 1942
    new-instance v0, Lcom/bytedance/sdk/a/a/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/a/c;-><init>()V

    .line 1943
    iget-wide v1, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_e

    return-object v0

    .line 1945
    :cond_e
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/a/o;->a()Lcom/bytedance/sdk/a/a/o;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 1946
    iput-object v1, v1, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    iput-object v1, v1, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    .line 1947
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    :goto_1c
    iget-object v1, v1, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    iget-object v2, p0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    if-eq v1, v2, :cond_2e

    .line 1948
    iget-object v2, v0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    iget-object v2, v2, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/a/o;->a()Lcom/bytedance/sdk/a/a/o;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/a/a/o;->a(Lcom/bytedance/sdk/a/a/o;)Lcom/bytedance/sdk/a/a/o;

    .line 1947
    goto :goto_1c

    .line 1950
    :cond_2e
    iget-wide v1, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    iput-wide v1, v0, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 1951
    return-object v0
.end method

.method public final t()Lcom/bytedance/sdk/a/a/f;
    .registers 5

    .line 1958
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_f

    .line 1961
    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/a/c;->f(I)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    return-object v0

    .line 1959
    :cond_f
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
.end method

.method public toString()Ljava/lang/String;
    .registers 2

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

    .line 1198
    if-eqz p1, :cond_2b

    .line 1200
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 1201
    move v1, v0

    .line 1202
    :goto_7
    if-lez v1, :cond_24

    .line 1203
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/a/a/c;->e(I)Lcom/bytedance/sdk/a/a/o;

    move-result-object v2

    .line 1205
    iget v3, v2, Lcom/bytedance/sdk/a/a/o;->c:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1206
    iget-object v4, v2, Lcom/bytedance/sdk/a/a/o;->a:[B

    iget v5, v2, Lcom/bytedance/sdk/a/a/o;->c:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1208
    sub-int/2addr v1, v3

    .line 1209
    iget v4, v2, Lcom/bytedance/sdk/a/a/o;->c:I

    add-int/2addr v4, v3

    iput v4, v2, Lcom/bytedance/sdk/a/a/o;->c:I

    .line 1210
    goto :goto_7

    .line 1212
    :cond_24
    iget-wide v1, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 1213
    return v0

    .line 1198
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
