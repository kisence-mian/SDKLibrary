.class final Lcom/bytedance/sdk/a/a/q;
.super Lcom/bytedance/sdk/a/a/f;
.source "SegmentedByteString.java"


# instance fields
.field final transient f:[[B

.field final transient g:[I


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/a/a/c;I)V
    .registers 10

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/a/a/f;-><init>([B)V

    .line 56
    iget-wide v1, p1, Lcom/bytedance/sdk/a/a/c;->b:J

    int-to-long v5, p2

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/a/a/u;->a(JJJ)V

    .line 59
    nop

    .line 60
    nop

    .line 61
    iget-object v0, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_13
    if-ge v2, p2, :cond_2e

    .line 62
    iget v4, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v5, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    if-eq v4, v5, :cond_26

    .line 65
    iget v4, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v5, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 66
    add-int/lit8 v3, v3, 0x1

    .line 61
    iget-object v0, v0, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    goto :goto_13

    .line 63
    :cond_26
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "s.limit == s.pos"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 70
    :cond_2e
    new-array v0, v3, [[B

    iput-object v0, p0, Lcom/bytedance/sdk/a/a/q;->f:[[B

    .line 71
    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/bytedance/sdk/a/a/q;->g:[I

    .line 72
    nop

    .line 73
    nop

    .line 74
    iget-object p1, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    move v0, v1

    :goto_3d
    if-ge v1, p2, :cond_62

    .line 75
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/q;->f:[[B

    iget-object v3, p1, Lcom/bytedance/sdk/a/a/o;->a:[B

    aput-object v3, v2, v0

    .line 76
    iget v2, p1, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v3, p1, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 77
    if-le v1, p2, :cond_4e

    .line 78
    move v1, p2

    .line 80
    :cond_4e
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/q;->g:[I

    aput v1, v2, v0

    .line 81
    iget-object v3, p0, Lcom/bytedance/sdk/a/a/q;->f:[[B

    array-length v3, v3

    add-int/2addr v3, v0

    iget v4, p1, Lcom/bytedance/sdk/a/a/o;->b:I

    aput v4, v2, v3

    .line 82
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/bytedance/sdk/a/a/o;->d:Z

    .line 83
    add-int/lit8 v0, v0, 0x1

    .line 74
    iget-object p1, p1, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    goto :goto_3d

    .line 85
    :cond_62
    return-void
.end method

.method private b(I)I
    .registers 5

    .line 171
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/q;->g:[I

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/q;->f:[[B

    array-length v1, v1

    add-int/lit8 p1, p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result p1

    .line 172
    if-ltz p1, :cond_f

    goto :goto_10

    :cond_f
    not-int p1, p1

    :goto_10
    return p1
.end method

.method private i()Lcom/bytedance/sdk/a/a/f;
    .registers 3

    .line 284
    new-instance v0, Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/q;->h()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/a/a/f;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public a(I)B
    .registers 9

    .line 159
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/q;->g:[I

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/q;->f:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    int-to-long v1, v0

    int-to-long v3, p1

    const-wide/16 v5, 0x1

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/a/a/u;->a(JJJ)V

    .line 160
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/a/a/q;->b(I)I

    move-result v0

    .line 161
    if-nez v0, :cond_18

    const/4 v1, 0x0

    goto :goto_1e

    :cond_18
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/q;->g:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    .line 162
    :goto_1e
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/q;->g:[I

    iget-object v3, p0, Lcom/bytedance/sdk/a/a/q;->f:[[B

    array-length v4, v3

    add-int/2addr v4, v0

    aget v2, v2, v4

    .line 163
    aget-object v0, v3, v0

    sub-int/2addr p1, v1

    add-int/2addr p1, v2

    aget-byte p1, v0, p1

    return p1
.end method

.method public a(II)Lcom/bytedance/sdk/a/a/f;
    .registers 4

    .line 154
    invoke-direct {p0}, Lcom/bytedance/sdk/a/a/q;->i()Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/a/a/f;->a(II)Lcom/bytedance/sdk/a/a/f;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .line 89
    invoke-direct {p0}, Lcom/bytedance/sdk/a/a/q;->i()Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/f;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/bytedance/sdk/a/a/c;)V
    .registers 13

    .line 213
    nop

    .line 214
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/q;->f:[[B

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v1, v0, :cond_37

    .line 215
    iget-object v3, p0, Lcom/bytedance/sdk/a/a/q;->g:[I

    add-int v4, v0, v1

    aget v7, v3, v4

    .line 216
    aget v3, v3, v1

    .line 217
    new-instance v4, Lcom/bytedance/sdk/a/a/o;

    iget-object v5, p0, Lcom/bytedance/sdk/a/a/q;->f:[[B

    aget-object v6, v5, v1

    add-int v5, v7, v3

    sub-int v8, v5, v2

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lcom/bytedance/sdk/a/a/o;-><init>([BIIZZ)V

    .line 219
    iget-object v2, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    if-nez v2, :cond_2b

    .line 220
    iput-object v4, v4, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    iput-object v4, v4, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    iput-object v4, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    goto :goto_32

    .line 222
    :cond_2b
    iget-object v2, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    iget-object v2, v2, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/a/a/o;->a(Lcom/bytedance/sdk/a/a/o;)Lcom/bytedance/sdk/a/a/o;

    .line 224
    :goto_32
    nop

    .line 214
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_6

    .line 226
    :cond_37
    iget-wide v0, p1, Lcom/bytedance/sdk/a/a/c;->b:J

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 227
    return-void
.end method

.method public a(ILcom/bytedance/sdk/a/a/f;II)Z
    .registers 12

    .line 232
    const/4 v0, 0x0

    if-ltz p1, :cond_42

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/q;->g()I

    move-result v1

    sub-int/2addr v1, p4

    if-le p1, v1, :cond_b

    goto :goto_42

    .line 234
    :cond_b
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/a/a/q;->b(I)I

    move-result v1

    :goto_f
    if-lez p4, :cond_40

    .line 235
    if-nez v1, :cond_15

    move v2, v0

    goto :goto_1b

    :cond_15
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/q;->g:[I

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    .line 236
    :goto_1b
    iget-object v3, p0, Lcom/bytedance/sdk/a/a/q;->g:[I

    aget v3, v3, v1

    sub-int/2addr v3, v2

    .line 237
    add-int/2addr v3, v2

    sub-int/2addr v3, p1

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 238
    iget-object v4, p0, Lcom/bytedance/sdk/a/a/q;->g:[I

    iget-object v5, p0, Lcom/bytedance/sdk/a/a/q;->f:[[B

    array-length v6, v5

    add-int/2addr v6, v1

    aget v4, v4, v6

    .line 239
    sub-int v2, p1, v2

    add-int/2addr v2, v4

    .line 240
    aget-object v4, v5, v1

    invoke-virtual {p2, p3, v4, v2, v3}, Lcom/bytedance/sdk/a/a/f;->a(I[BII)Z

    move-result v2

    if-nez v2, :cond_3a

    return v0

    .line 241
    :cond_3a
    add-int/2addr p1, v3

    .line 242
    add-int/2addr p3, v3

    .line 243
    sub-int/2addr p4, v3

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 245
    :cond_40
    const/4 p1, 0x1

    return p1

    .line 232
    :cond_42
    :goto_42
    return v0
.end method

.method public a(I[BII)Z
    .registers 12

    .line 250
    const/4 v0, 0x0

    if-ltz p1, :cond_48

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/q;->g()I

    move-result v1

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_48

    if-ltz p3, :cond_48

    array-length v1, p2

    sub-int/2addr v1, p4

    if-le p3, v1, :cond_11

    goto :goto_48

    .line 255
    :cond_11
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/a/a/q;->b(I)I

    move-result v1

    :goto_15
    if-lez p4, :cond_46

    .line 256
    if-nez v1, :cond_1b

    move v2, v0

    goto :goto_21

    :cond_1b
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/q;->g:[I

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    .line 257
    :goto_21
    iget-object v3, p0, Lcom/bytedance/sdk/a/a/q;->g:[I

    aget v3, v3, v1

    sub-int/2addr v3, v2

    .line 258
    add-int/2addr v3, v2

    sub-int/2addr v3, p1

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 259
    iget-object v4, p0, Lcom/bytedance/sdk/a/a/q;->g:[I

    iget-object v5, p0, Lcom/bytedance/sdk/a/a/q;->f:[[B

    array-length v6, v5

    add-int/2addr v6, v1

    aget v4, v4, v6

    .line 260
    sub-int v2, p1, v2

    add-int/2addr v2, v4

    .line 261
    aget-object v4, v5, v1

    invoke-static {v4, v2, p2, p3, v3}, Lcom/bytedance/sdk/a/a/u;->a([BI[BII)Z

    move-result v2

    if-nez v2, :cond_40

    .line 262
    return v0

    .line 263
    :cond_40
    add-int/2addr p1, v3

    .line 264
    add-int/2addr p3, v3

    .line 265
    sub-int/2addr p4, v3

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 267
    :cond_46
    const/4 p1, 0x1

    return p1

    .line 252
    :cond_48
    :goto_48
    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 99
    invoke-direct {p0}, Lcom/bytedance/sdk/a/a/q;->i()Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/f;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/bytedance/sdk/a/a/f;
    .registers 2

    .line 124
    invoke-direct {p0}, Lcom/bytedance/sdk/a/a/q;->i()Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/f;->c()Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/bytedance/sdk/a/a/f;
    .registers 2

    .line 129
    invoke-direct {p0}, Lcom/bytedance/sdk/a/a/q;->i()Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/f;->d()Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 104
    invoke-direct {p0}, Lcom/bytedance/sdk/a/a/q;->i()Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/f;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 294
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 295
    :cond_4
    instance-of v1, p1, Lcom/bytedance/sdk/a/a/f;

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    check-cast p1, Lcom/bytedance/sdk/a/a/f;

    .line 296
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/a/f;->g()I

    move-result v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/q;->g()I

    move-result v3

    if-ne v1, v3, :cond_20

    .line 297
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/q;->g()I

    move-result v1

    invoke-virtual {p0, v2, p1, v2, v1}, Lcom/bytedance/sdk/a/a/q;->a(ILcom/bytedance/sdk/a/a/f;II)Z

    move-result p1

    if-eqz p1, :cond_20

    goto :goto_21

    :cond_20
    move v0, v2

    .line 295
    :goto_21
    return v0
.end method

.method public f()Lcom/bytedance/sdk/a/a/f;
    .registers 2

    .line 109
    invoke-direct {p0}, Lcom/bytedance/sdk/a/a/q;->i()Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/f;->f()Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/q;->g:[I

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/q;->f:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public h()[B
    .registers 9

    .line 182
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/q;->g:[I

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/q;->f:[[B

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    new-array v0, v0, [B

    .line 183
    nop

    .line 184
    array-length v1, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    if-ge v2, v1, :cond_27

    .line 185
    iget-object v4, p0, Lcom/bytedance/sdk/a/a/q;->g:[I

    add-int v5, v1, v2

    aget v5, v4, v5

    .line 186
    aget v4, v4, v2

    .line 187
    iget-object v6, p0, Lcom/bytedance/sdk/a/a/q;->f:[[B

    aget-object v6, v6, v2

    sub-int v7, v4, v3

    invoke-static {v6, v5, v0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    nop

    .line 184
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_f

    .line 191
    :cond_27
    return-object v0
.end method

.method public hashCode()I
    .registers 9

    .line 302
    iget v0, p0, Lcom/bytedance/sdk/a/a/q;->d:I

    .line 303
    if-eqz v0, :cond_5

    return v0

    .line 306
    :cond_5
    nop

    .line 307
    nop

    .line 308
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/q;->f:[[B

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v2

    move v2, v1

    :goto_e
    if-ge v1, v0, :cond_2e

    .line 309
    iget-object v4, p0, Lcom/bytedance/sdk/a/a/q;->f:[[B

    aget-object v4, v4, v1

    .line 310
    iget-object v5, p0, Lcom/bytedance/sdk/a/a/q;->g:[I

    add-int v6, v0, v1

    aget v6, v5, v6

    .line 311
    aget v5, v5, v1

    .line 312
    sub-int v2, v5, v2

    .line 313
    add-int/2addr v2, v6

    :goto_1f
    if-ge v6, v2, :cond_29

    .line 314
    mul-int/lit8 v3, v3, 0x1f

    aget-byte v7, v4, v6

    add-int/2addr v3, v7

    .line 313
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 316
    :cond_29
    nop

    .line 308
    add-int/lit8 v1, v1, 0x1

    move v2, v5

    goto :goto_e

    .line 318
    :cond_2e
    iput v3, p0, Lcom/bytedance/sdk/a/a/q;->d:I

    return v3
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 323
    invoke-direct {p0}, Lcom/bytedance/sdk/a/a/q;->i()Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/f;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
