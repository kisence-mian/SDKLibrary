.class final Lcom/bytedance/sdk/a/a/q;
.super Lcom/bytedance/sdk/a/a/f;
.source "SegmentedByteString.java"


# instance fields
.field final transient f:[[B

.field final transient g:[I


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/a/a/c;I)V
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/a/a/f;-><init>([B)V

    .line 56
    iget-wide v0, p1, Lcom/bytedance/sdk/a/a/c;->b:J

    const-wide/16 v2, 0x0

    int-to-long v4, p2

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/u;->a(JJJ)V

    .line 61
    iget-object v0, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    move v1, v6

    move v2, v6

    :goto_11
    if-ge v2, p2, :cond_2c

    .line 62
    iget v3, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v4, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    if-ne v3, v4, :cond_21

    .line 63
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "s.limit == s.pos"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 65
    :cond_21
    iget v3, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v4, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 61
    iget-object v0, v0, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    goto :goto_11

    .line 70
    :cond_2c
    new-array v0, v1, [[B

    iput-object v0, p0, Lcom/bytedance/sdk/a/a/q;->f:[[B

    .line 71
    mul-int/lit8 v0, v1, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/bytedance/sdk/a/a/q;->g:[I

    .line 74
    iget-object v0, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    move-object v1, v0

    move v2, v6

    :goto_3a
    if-ge v6, p2, :cond_62

    .line 75
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/q;->f:[[B

    iget-object v3, v1, Lcom/bytedance/sdk/a/a/o;->a:[B

    aput-object v3, v0, v2

    .line 76
    iget v0, v1, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v3, v1, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v0, v3

    add-int/2addr v0, v6

    .line 77
    if-le v0, p2, :cond_4b

    move v0, p2

    .line 80
    :cond_4b
    iget-object v3, p0, Lcom/bytedance/sdk/a/a/q;->g:[I

    aput v0, v3, v2

    .line 81
    iget-object v3, p0, Lcom/bytedance/sdk/a/a/q;->g:[I

    iget-object v4, p0, Lcom/bytedance/sdk/a/a/q;->f:[[B

    array-length v4, v4

    add-int/2addr v4, v2

    iget v5, v1, Lcom/bytedance/sdk/a/a/o;->b:I

    aput v5, v3, v4

    .line 82
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/bytedance/sdk/a/a/o;->d:Z

    .line 83
    add-int/lit8 v2, v2, 0x1

    .line 74
    iget-object v1, v1, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    move v6, v0

    goto :goto_3a

    .line 85
    :cond_62
    return-void
.end method

.method private b(I)I
    .registers 6

    .prologue
    .line 171
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/q;->g:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bytedance/sdk/a/a/q;->f:[[B

    array-length v2, v2

    add-int/lit8 v3, p1, 0x1

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    .line 172
    if-ltz v0, :cond_f

    :goto_e
    return v0

    :cond_f
    xor-int/lit8 v0, v0, -0x1

    goto :goto_e
.end method

.method private i()Lcom/bytedance/sdk/a/a/f;
    .registers 3

    .prologue
    .line 284
    new-instance v0, Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/q;->h()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/a/a/f;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public a(I)B
    .registers 8

    .prologue
    .line 159
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/q;->g:[I

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/q;->f:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    int-to-long v0, v0

    int-to-long v2, p1

    const-wide/16 v4, 0x1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/u;->a(JJJ)V

    .line 160
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/a/a/q;->b(I)I

    move-result v1

    .line 161
    if-nez v1, :cond_29

    const/4 v0, 0x0

    .line 162
    :goto_17
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/q;->g:[I

    iget-object v3, p0, Lcom/bytedance/sdk/a/a/q;->f:[[B

    array-length v3, v3

    add-int/2addr v3, v1

    aget v2, v2, v3

    .line 163
    iget-object v3, p0, Lcom/bytedance/sdk/a/a/q;->f:[[B

    aget-object v1, v3, v1

    sub-int v0, p1, v0

    add-int/2addr v0, v2

    aget-byte v0, v1, v0

    return v0

    .line 161
    :cond_29
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/q;->g:[I

    add-int/lit8 v2, v1, -0x1

    aget v0, v0, v2

    goto :goto_17
.end method

.method public a(II)Lcom/bytedance/sdk/a/a/f;
    .registers 4

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/bytedance/sdk/a/a/q;->i()Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/a/a/f;->a(II)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/bytedance/sdk/a/a/q;->i()Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/f;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/bytedance/sdk/a/a/c;)V
    .registers 11

    .prologue
    const/4 v5, 0x0

    .line 213
    .line 214
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/q;->f:[[B

    array-length v8, v0

    move v6, v5

    move v3, v5

    :goto_6
    if-ge v6, v8, :cond_37

    .line 215
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/q;->g:[I

    add-int v1, v8, v6

    aget v2, v0, v1

    .line 216
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/q;->g:[I

    aget v7, v0, v6

    .line 217
    new-instance v0, Lcom/bytedance/sdk/a/a/o;

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/q;->f:[[B

    aget-object v1, v1, v6

    add-int v4, v2, v7

    sub-int v3, v4, v3

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/o;-><init>([BIIZZ)V

    .line 219
    iget-object v1, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    if-nez v1, :cond_2f

    .line 220
    iput-object v0, v0, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    iput-object v0, v0, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    iput-object v0, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 214
    :goto_2a
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v3, v7

    goto :goto_6

    .line 222
    :cond_2f
    iget-object v1, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    iget-object v1, v1, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/a/a/o;->a(Lcom/bytedance/sdk/a/a/o;)Lcom/bytedance/sdk/a/a/o;

    goto :goto_2a

    .line 226
    :cond_37
    iget-wide v0, p1, Lcom/bytedance/sdk/a/a/c;->b:J

    int-to-long v2, v3

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 227
    return-void
.end method

.method public a(ILcom/bytedance/sdk/a/a/f;II)Z
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 232
    if-ltz p1, :cond_a

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/q;->g()I

    move-result v0

    sub-int/2addr v0, p4

    if-le p1, v0, :cond_b

    .line 245
    :cond_a
    :goto_a
    return v1

    .line 234
    :cond_b
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/a/a/q;->b(I)I

    move-result v0

    move v2, v0

    :goto_10
    if-lez p4, :cond_43

    .line 235
    if-nez v2, :cond_3c

    move v0, v1

    .line 236
    :goto_15
    iget-object v3, p0, Lcom/bytedance/sdk/a/a/q;->g:[I

    aget v3, v3, v2

    sub-int/2addr v3, v0

    .line 237
    add-int/2addr v3, v0

    sub-int/2addr v3, p1

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 238
    iget-object v4, p0, Lcom/bytedance/sdk/a/a/q;->g:[I

    iget-object v5, p0, Lcom/bytedance/sdk/a/a/q;->f:[[B

    array-length v5, v5

    add-int/2addr v5, v2

    aget v4, v4, v5

    .line 239
    sub-int v0, p1, v0

    add-int/2addr v0, v4

    .line 240
    iget-object v4, p0, Lcom/bytedance/sdk/a/a/q;->f:[[B

    aget-object v4, v4, v2

    invoke-virtual {p2, p3, v4, v0, v3}, Lcom/bytedance/sdk/a/a/f;->a(I[BII)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 241
    add-int/2addr p1, v3

    .line 242
    add-int/2addr p3, v3

    .line 243
    sub-int/2addr p4, v3

    .line 234
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_10

    .line 235
    :cond_3c
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/q;->g:[I

    add-int/lit8 v3, v2, -0x1

    aget v0, v0, v3

    goto :goto_15

    .line 245
    :cond_43
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public a(I[BII)Z
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 250
    if-ltz p1, :cond_10

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/q;->g()I

    move-result v0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_10

    if-ltz p3, :cond_10

    array-length v0, p2

    sub-int/2addr v0, p4

    if-le p3, v0, :cond_11

    .line 267
    :cond_10
    :goto_10
    return v1

    .line 255
    :cond_11
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/a/a/q;->b(I)I

    move-result v0

    move v2, v0

    :goto_16
    if-lez p4, :cond_49

    .line 256
    if-nez v2, :cond_42

    move v0, v1

    .line 257
    :goto_1b
    iget-object v3, p0, Lcom/bytedance/sdk/a/a/q;->g:[I

    aget v3, v3, v2

    sub-int/2addr v3, v0

    .line 258
    add-int/2addr v3, v0

    sub-int/2addr v3, p1

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 259
    iget-object v4, p0, Lcom/bytedance/sdk/a/a/q;->g:[I

    iget-object v5, p0, Lcom/bytedance/sdk/a/a/q;->f:[[B

    array-length v5, v5

    add-int/2addr v5, v2

    aget v4, v4, v5

    .line 260
    sub-int v0, p1, v0

    add-int/2addr v0, v4

    .line 261
    iget-object v4, p0, Lcom/bytedance/sdk/a/a/q;->f:[[B

    aget-object v4, v4, v2

    invoke-static {v4, v0, p2, p3, v3}, Lcom/bytedance/sdk/a/a/u;->a([BI[BII)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 263
    add-int/2addr p1, v3

    .line 264
    add-int/2addr p3, v3

    .line 265
    sub-int/2addr p4, v3

    .line 255
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_16

    .line 256
    :cond_42
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/q;->g:[I

    add-int/lit8 v3, v2, -0x1

    aget v0, v0, v3

    goto :goto_1b

    .line 267
    :cond_49
    const/4 v1, 0x1

    goto :goto_10
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/bytedance/sdk/a/a/q;->i()Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/f;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/bytedance/sdk/a/a/f;
    .registers 2

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/bytedance/sdk/a/a/q;->i()Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/f;->c()Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/bytedance/sdk/a/a/f;
    .registers 2

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/bytedance/sdk/a/a/q;->i()Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/f;->d()Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/bytedance/sdk/a/a/q;->i()Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/f;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 294
    if-ne p1, p0, :cond_5

    .line 295
    :goto_4
    return v1

    :cond_5
    instance-of v0, p1, Lcom/bytedance/sdk/a/a/f;

    if-eqz v0, :cond_25

    move-object v0, p1

    check-cast v0, Lcom/bytedance/sdk/a/a/f;

    .line 296
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/f;->g()I

    move-result v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/q;->g()I

    move-result v3

    if-ne v0, v3, :cond_25

    check-cast p1, Lcom/bytedance/sdk/a/a/f;

    .line 297
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/q;->g()I

    move-result v0

    invoke-virtual {p0, v2, p1, v2, v0}, Lcom/bytedance/sdk/a/a/q;->a(ILcom/bytedance/sdk/a/a/f;II)Z

    move-result v0

    if-eqz v0, :cond_25

    move v0, v1

    :goto_23
    move v1, v0

    .line 295
    goto :goto_4

    :cond_25
    move v0, v2

    .line 297
    goto :goto_23
.end method

.method public f()Lcom/bytedance/sdk/a/a/f;
    .registers 2

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/bytedance/sdk/a/a/q;->i()Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/f;->f()Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .registers 3

    .prologue
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

    .prologue
    const/4 v0, 0x0

    .line 182
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/q;->g:[I

    iget-object v2, p0, Lcom/bytedance/sdk/a/a/q;->f:[[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    new-array v3, v1, [B

    .line 184
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/q;->f:[[B

    array-length v4, v1

    move v1, v0

    :goto_10
    if-ge v0, v4, :cond_29

    .line 185
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/q;->g:[I

    add-int v5, v4, v0

    aget v5, v2, v5

    .line 186
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/q;->g:[I

    aget v2, v2, v0

    .line 187
    iget-object v6, p0, Lcom/bytedance/sdk/a/a/q;->f:[[B

    aget-object v6, v6, v0

    sub-int v7, v2, v1

    invoke-static {v6, v5, v3, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_10

    .line 191
    :cond_29
    return-object v3
.end method

.method public hashCode()I
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 302
    iget v0, p0, Lcom/bytedance/sdk/a/a/q;->d:I

    .line 303
    if-eqz v0, :cond_6

    .line 318
    :goto_5
    return v0

    .line 306
    :cond_6
    const/4 v0, 0x1

    .line 308
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/q;->f:[[B

    array-length v5, v2

    move v2, v1

    move v3, v1

    :goto_c
    if-ge v2, v5, :cond_32

    .line 309
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/q;->f:[[B

    aget-object v6, v1, v2

    .line 310
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/q;->g:[I

    add-int v4, v5, v2

    aget v1, v1, v4

    .line 311
    iget-object v4, p0, Lcom/bytedance/sdk/a/a/q;->g:[I

    aget v4, v4, v2

    .line 312
    sub-int v3, v4, v3

    .line 313
    add-int/2addr v3, v1

    move v8, v1

    move v1, v0

    move v0, v8

    :goto_22
    if-ge v0, v3, :cond_2c

    .line 314
    mul-int/lit8 v1, v1, 0x1f

    aget-byte v7, v6, v0

    add-int/2addr v1, v7

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 308
    :cond_2c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v3, v4

    move v0, v1

    goto :goto_c

    .line 318
    :cond_32
    iput v0, p0, Lcom/bytedance/sdk/a/a/q;->d:I

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/bytedance/sdk/a/a/q;->i()Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/f;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
