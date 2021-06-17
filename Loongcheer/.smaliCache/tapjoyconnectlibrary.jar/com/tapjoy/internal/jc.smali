.class final Lcom/tapjoy/internal/jc;
.super Lcom/tapjoy/internal/iw;
.source "SourceFile"


# instance fields
.field final transient f:[[B

.field final transient g:[I


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/it;I)V
    .registers 10

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/iw;-><init>([B)V

    .line 57
    iget-wide v1, p1, Lcom/tapjoy/internal/it;->b:J

    int-to-long v5, p2

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcom/tapjoy/internal/jg;->a(JJJ)V

    .line 60
    nop

    .line 61
    nop

    .line 62
    iget-object v0, p1, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_13
    if-ge v2, p2, :cond_2e

    .line 63
    iget v4, v0, Lcom/tapjoy/internal/ja;->c:I

    iget v5, v0, Lcom/tapjoy/internal/ja;->b:I

    if-eq v4, v5, :cond_26

    .line 66
    iget v4, v0, Lcom/tapjoy/internal/ja;->c:I

    iget v5, v0, Lcom/tapjoy/internal/ja;->b:I

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 67
    add-int/lit8 v3, v3, 0x1

    .line 62
    iget-object v0, v0, Lcom/tapjoy/internal/ja;->f:Lcom/tapjoy/internal/ja;

    goto :goto_13

    .line 64
    :cond_26
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "s.limit == s.pos"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 71
    :cond_2e
    new-array v0, v3, [[B

    iput-object v0, p0, Lcom/tapjoy/internal/jc;->f:[[B

    .line 72
    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/tapjoy/internal/jc;->g:[I

    .line 73
    nop

    .line 74
    nop

    .line 75
    iget-object p1, p1, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    const/4 v0, 0x0

    :goto_3d
    if-ge v1, p2, :cond_62

    .line 76
    iget-object v2, p0, Lcom/tapjoy/internal/jc;->f:[[B

    iget-object v3, p1, Lcom/tapjoy/internal/ja;->a:[B

    aput-object v3, v2, v0

    .line 77
    iget v2, p1, Lcom/tapjoy/internal/ja;->c:I

    iget v3, p1, Lcom/tapjoy/internal/ja;->b:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 78
    if-le v1, p2, :cond_4e

    .line 79
    move v1, p2

    .line 81
    :cond_4e
    iget-object v2, p0, Lcom/tapjoy/internal/jc;->g:[I

    aput v1, v2, v0

    .line 82
    iget-object v3, p0, Lcom/tapjoy/internal/jc;->f:[[B

    array-length v3, v3

    add-int/2addr v3, v0

    iget v4, p1, Lcom/tapjoy/internal/ja;->b:I

    aput v4, v2, v3

    .line 83
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/tapjoy/internal/ja;->d:Z

    .line 84
    add-int/lit8 v0, v0, 0x1

    .line 75
    iget-object p1, p1, Lcom/tapjoy/internal/ja;->f:Lcom/tapjoy/internal/ja;

    goto :goto_3d

    .line 86
    :cond_62
    return-void
.end method

.method private b(I)I
    .registers 5

    .line 139
    iget-object v0, p0, Lcom/tapjoy/internal/jc;->g:[I

    iget-object v1, p0, Lcom/tapjoy/internal/jc;->f:[[B

    array-length v1, v1

    add-int/lit8 p1, p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result p1

    .line 140
    if-ltz p1, :cond_f

    return p1

    :cond_f
    xor-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private e()Lcom/tapjoy/internal/iw;
    .registers 3

    .line 240
    new-instance v0, Lcom/tapjoy/internal/iw;

    invoke-virtual {p0}, Lcom/tapjoy/internal/jc;->d()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/iw;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final a(I)B
    .registers 9

    .line 129
    iget-object v0, p0, Lcom/tapjoy/internal/jc;->g:[I

    iget-object v1, p0, Lcom/tapjoy/internal/jc;->f:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    int-to-long v1, v0

    int-to-long v3, p1

    const-wide/16 v5, 0x1

    invoke-static/range {v1 .. v6}, Lcom/tapjoy/internal/jg;->a(JJJ)V

    .line 130
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/jc;->b(I)I

    move-result v0

    .line 131
    if-nez v0, :cond_18

    const/4 v1, 0x0

    goto :goto_1e

    :cond_18
    iget-object v1, p0, Lcom/tapjoy/internal/jc;->g:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    .line 132
    :goto_1e
    iget-object v2, p0, Lcom/tapjoy/internal/jc;->g:[I

    iget-object v3, p0, Lcom/tapjoy/internal/jc;->f:[[B

    array-length v4, v3

    add-int/2addr v4, v0

    aget v2, v2, v4

    .line 133
    aget-object v0, v3, v0

    sub-int/2addr p1, v1

    add-int/2addr p1, v2

    aget-byte p1, v0, p1

    return p1
.end method

.method public final a(II)Lcom/tapjoy/internal/iw;
    .registers 4

    .line 125
    invoke-direct {p0}, Lcom/tapjoy/internal/jc;->e()Lcom/tapjoy/internal/iw;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/internal/iw;->a(II)Lcom/tapjoy/internal/iw;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    .line 89
    invoke-direct {p0}, Lcom/tapjoy/internal/jc;->e()Lcom/tapjoy/internal/iw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/iw;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/tapjoy/internal/it;)V
    .registers 10

    .line 176
    nop

    .line 177
    iget-object v0, p0, Lcom/tapjoy/internal/jc;->f:[[B

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v1, v0, :cond_33

    .line 178
    iget-object v3, p0, Lcom/tapjoy/internal/jc;->g:[I

    add-int v4, v0, v1

    aget v4, v3, v4

    .line 179
    aget v3, v3, v1

    .line 180
    new-instance v5, Lcom/tapjoy/internal/ja;

    iget-object v6, p0, Lcom/tapjoy/internal/jc;->f:[[B

    aget-object v6, v6, v1

    add-int v7, v4, v3

    sub-int/2addr v7, v2

    invoke-direct {v5, v6, v4, v7}, Lcom/tapjoy/internal/ja;-><init>([BII)V

    .line 182
    iget-object v2, p1, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    if-nez v2, :cond_27

    .line 183
    iput-object v5, v5, Lcom/tapjoy/internal/ja;->g:Lcom/tapjoy/internal/ja;

    iput-object v5, v5, Lcom/tapjoy/internal/ja;->f:Lcom/tapjoy/internal/ja;

    iput-object v5, p1, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    goto :goto_2e

    .line 185
    :cond_27
    iget-object v2, p1, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    iget-object v2, v2, Lcom/tapjoy/internal/ja;->g:Lcom/tapjoy/internal/ja;

    invoke-virtual {v2, v5}, Lcom/tapjoy/internal/ja;->a(Lcom/tapjoy/internal/ja;)Lcom/tapjoy/internal/ja;

    .line 187
    :goto_2e
    nop

    .line 177
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_6

    .line 189
    :cond_33
    iget-wide v0, p1, Lcom/tapjoy/internal/it;->b:J

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/tapjoy/internal/it;->b:J

    .line 190
    return-void
.end method

.method public final a(I[BII)Z
    .registers 12

    .line 211
    const/4 v0, 0x0

    if-ltz p1, :cond_48

    invoke-virtual {p0}, Lcom/tapjoy/internal/jc;->c()I

    move-result v1

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_48

    if-ltz p3, :cond_48

    array-length v1, p2

    sub-int/2addr v1, p4

    if-le p3, v1, :cond_11

    goto :goto_48

    .line 216
    :cond_11
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/jc;->b(I)I

    move-result v1

    :goto_15
    if-lez p4, :cond_46

    .line 217
    if-nez v1, :cond_1b

    const/4 v2, 0x0

    goto :goto_21

    :cond_1b
    iget-object v2, p0, Lcom/tapjoy/internal/jc;->g:[I

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    .line 218
    :goto_21
    iget-object v3, p0, Lcom/tapjoy/internal/jc;->g:[I

    aget v3, v3, v1

    sub-int/2addr v3, v2

    .line 219
    add-int/2addr v3, v2

    sub-int/2addr v3, p1

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 220
    iget-object v4, p0, Lcom/tapjoy/internal/jc;->g:[I

    iget-object v5, p0, Lcom/tapjoy/internal/jc;->f:[[B

    array-length v6, v5

    add-int/2addr v6, v1

    aget v4, v4, v6

    .line 221
    sub-int v2, p1, v2

    add-int/2addr v2, v4

    .line 222
    aget-object v4, v5, v1

    invoke-static {v4, v2, p2, p3, v3}, Lcom/tapjoy/internal/jg;->a([BI[BII)Z

    move-result v2

    if-nez v2, :cond_40

    return v0

    .line 223
    :cond_40
    add-int/2addr p1, v3

    .line 224
    add-int/2addr p3, v3

    .line 225
    sub-int/2addr p4, v3

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 227
    :cond_46
    const/4 p1, 0x1

    return p1

    .line 213
    :cond_48
    :goto_48
    return v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 97
    invoke-direct {p0}, Lcom/tapjoy/internal/jc;->e()Lcom/tapjoy/internal/iw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/iw;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .registers 3

    .line 144
    iget-object v0, p0, Lcom/tapjoy/internal/jc;->g:[I

    iget-object v1, p0, Lcom/tapjoy/internal/jc;->f:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public final d()[B
    .registers 9

    .line 148
    iget-object v0, p0, Lcom/tapjoy/internal/jc;->g:[I

    iget-object v1, p0, Lcom/tapjoy/internal/jc;->f:[[B

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    new-array v0, v0, [B

    .line 149
    nop

    .line 150
    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    if-ge v2, v1, :cond_27

    .line 151
    iget-object v4, p0, Lcom/tapjoy/internal/jc;->g:[I

    add-int v5, v1, v2

    aget v5, v4, v5

    .line 152
    aget v4, v4, v2

    .line 153
    iget-object v6, p0, Lcom/tapjoy/internal/jc;->f:[[B

    aget-object v6, v6, v2

    sub-int v7, v4, v3

    invoke-static {v6, v5, v0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    nop

    .line 150
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_f

    .line 157
    :cond_27
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 14
    .param p1, "o"    # Ljava/lang/Object;

    .line 248
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 249
    :cond_4
    instance-of v1, p1, Lcom/tapjoy/internal/iw;

    const/4 v2, 0x0

    if-eqz v1, :cond_62

    move-object v1, p1

    check-cast v1, Lcom/tapjoy/internal/iw;

    .line 250
    invoke-virtual {v1}, Lcom/tapjoy/internal/iw;->c()I

    move-result v1

    invoke-virtual {p0}, Lcom/tapjoy/internal/jc;->c()I

    move-result v3

    if-ne v1, v3, :cond_62

    move-object v1, p1

    check-cast v1, Lcom/tapjoy/internal/iw;

    .line 251
    invoke-virtual {p0}, Lcom/tapjoy/internal/jc;->c()I

    move-result v3

    .line 1194
    invoke-virtual {p0}, Lcom/tapjoy/internal/jc;->c()I

    move-result v4

    sub-int/2addr v4, v3

    if-gez v4, :cond_26

    const/4 v1, 0x0

    goto :goto_5f

    .line 1196
    :cond_26
    invoke-direct {p0, v2}, Lcom/tapjoy/internal/jc;->b(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2c
    if-lez v3, :cond_5e

    .line 1197
    if-nez v4, :cond_32

    const/4 v7, 0x0

    goto :goto_38

    :cond_32
    iget-object v7, p0, Lcom/tapjoy/internal/jc;->g:[I

    add-int/lit8 v8, v4, -0x1

    aget v7, v7, v8

    .line 1198
    :goto_38
    iget-object v8, p0, Lcom/tapjoy/internal/jc;->g:[I

    aget v8, v8, v4

    sub-int/2addr v8, v7

    .line 1199
    add-int/2addr v8, v7

    sub-int/2addr v8, v5

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1200
    iget-object v9, p0, Lcom/tapjoy/internal/jc;->g:[I

    iget-object v10, p0, Lcom/tapjoy/internal/jc;->f:[[B

    array-length v11, v10

    add-int/2addr v11, v4

    aget v9, v9, v11

    .line 1201
    sub-int v7, v5, v7

    add-int/2addr v7, v9

    .line 1202
    aget-object v9, v10, v4

    invoke-virtual {v1, v6, v9, v7, v8}, Lcom/tapjoy/internal/iw;->a(I[BII)Z

    move-result v7

    if-nez v7, :cond_58

    const/4 v1, 0x0

    goto :goto_5f

    .line 1203
    :cond_58
    add-int/2addr v5, v8

    .line 1204
    add-int/2addr v6, v8

    .line 1205
    sub-int/2addr v3, v8

    .line 1196
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 1207
    :cond_5e
    const/4 v1, 0x1

    .line 251
    :goto_5f
    if-eqz v1, :cond_62

    return v0

    :cond_62
    return v2
.end method

.method public final hashCode()I
    .registers 9

    .line 255
    iget v0, p0, Lcom/tapjoy/internal/jc;->d:I

    .line 256
    if-eqz v0, :cond_5

    return v0

    .line 259
    :cond_5
    nop

    .line 260
    nop

    .line 261
    iget-object v0, p0, Lcom/tapjoy/internal/jc;->f:[[B

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_e
    if-ge v1, v0, :cond_2e

    .line 262
    iget-object v4, p0, Lcom/tapjoy/internal/jc;->f:[[B

    aget-object v4, v4, v1

    .line 263
    iget-object v5, p0, Lcom/tapjoy/internal/jc;->g:[I

    add-int v6, v0, v1

    aget v6, v5, v6

    .line 264
    aget v5, v5, v1

    .line 265
    sub-int v2, v5, v2

    .line 266
    add-int/2addr v2, v6

    :goto_1f
    if-ge v6, v2, :cond_29

    .line 267
    mul-int/lit8 v3, v3, 0x1f

    aget-byte v7, v4, v6

    add-int/2addr v3, v7

    .line 266
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 269
    :cond_29
    nop

    .line 261
    add-int/lit8 v1, v1, 0x1

    move v2, v5

    goto :goto_e

    .line 271
    :cond_2e
    iput v3, p0, Lcom/tapjoy/internal/jc;->d:I

    return v3
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 275
    invoke-direct {p0}, Lcom/tapjoy/internal/jc;->e()Lcom/tapjoy/internal/iw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/iw;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
