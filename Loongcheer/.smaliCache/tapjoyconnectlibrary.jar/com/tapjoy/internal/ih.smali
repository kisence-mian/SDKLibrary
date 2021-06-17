.class public final Lcom/tapjoy/internal/ih;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private b:Ljava/nio/ByteBuffer;

.field private c:Lcom/tapjoy/internal/ig;

.field private d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tapjoy/internal/ih;->a:[B

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/ih;->d:I

    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;)Lcom/tapjoy/internal/ih;
    .registers 4

    .line 50
    nop

    .line 1073
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/ih;->b:Ljava/nio/ByteBuffer;

    .line 1074
    iget-object v0, p0, Lcom/tapjoy/internal/ih;->a:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 1075
    new-instance v0, Lcom/tapjoy/internal/ig;

    invoke-direct {v0}, Lcom/tapjoy/internal/ig;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    .line 1076
    iput v1, p0, Lcom/tapjoy/internal/ih;->d:I

    .line 51
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/ih;->b:Ljava/nio/ByteBuffer;

    .line 52
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 53
    iget-object p1, p0, Lcom/tapjoy/internal/ih;->b:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 54
    return-object p0
.end method

.method private a(I)[I
    .registers 12

    .line 322
    mul-int/lit8 v0, p1, 0x3

    .line 323
    nop

    .line 324
    new-array v0, v0, [B

    .line 327
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_7
    iget-object v3, p0, Lcom/tapjoy/internal/ih;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 331
    const/16 v3, 0x100

    new-array v2, v3, [I

    .line 332
    nop

    .line 333
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 334
    :goto_13
    if-ge v3, p1, :cond_37

    .line 335
    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    .line 336
    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    .line 337
    add-int/lit8 v7, v6, 0x1

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    .line 338
    add-int/lit8 v8, v3, 0x1

    const/high16 v9, -0x1000000

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v4, v9

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v6

    aput v4, v2, v3
    :try_end_34
    .catch Ljava/nio/BufferUnderflowException; {:try_start_7 .. :try_end_34} :catch_38

    .line 339
    move v4, v7

    move v3, v8

    goto :goto_13

    .line 343
    :cond_37
    goto :goto_42

    .line 340
    :catch_38
    move-exception p1

    .line 341
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    .line 342
    iget-object p1, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    iput v0, p1, Lcom/tapjoy/internal/ig;->b:I

    .line 345
    :goto_42
    return-object v2
.end method

.method private b()V
    .registers 1

    .line 114
    invoke-direct {p0}, Lcom/tapjoy/internal/ih;->c()V

    .line 115
    return-void
.end method

.method private c()V
    .registers 7

    .line 122
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 123
    :goto_3
    if-nez v2, :cond_8c

    invoke-direct {p0}, Lcom/tapjoy/internal/ih;->l()Z

    move-result v3

    if-nez v3, :cond_8c

    iget-object v3, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    iget v3, v3, Lcom/tapjoy/internal/ig;->c:I

    const v4, 0x7fffffff

    if-gt v3, v4, :cond_8c

    .line 124
    invoke-direct {p0}, Lcom/tapjoy/internal/ih;->k()I

    move-result v3

    .line 125
    sparse-switch v3, :sswitch_data_8e

    .line 182
    iget-object v3, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    iput v1, v3, Lcom/tapjoy/internal/ig;->b:I

    .line 184
    goto :goto_3

    .line 177
    :sswitch_20
    nop

    .line 178
    const/4 v2, 0x1

    goto :goto_3

    .line 133
    :sswitch_23
    iget-object v3, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    iget-object v3, v3, Lcom/tapjoy/internal/ig;->d:Lcom/tapjoy/internal/if;

    if-nez v3, :cond_32

    .line 134
    iget-object v3, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    new-instance v4, Lcom/tapjoy/internal/if;

    invoke-direct {v4}, Lcom/tapjoy/internal/if;-><init>()V

    iput-object v4, v3, Lcom/tapjoy/internal/ig;->d:Lcom/tapjoy/internal/if;

    .line 136
    :cond_32
    invoke-direct {p0}, Lcom/tapjoy/internal/ih;->e()V

    .line 137
    goto :goto_3

    .line 140
    :sswitch_36
    invoke-direct {p0}, Lcom/tapjoy/internal/ih;->k()I

    move-result v3

    .line 141
    sparse-switch v3, :sswitch_data_9c

    .line 172
    invoke-direct {p0}, Lcom/tapjoy/internal/ih;->i()V

    .line 174
    goto :goto_3

    .line 150
    :sswitch_41
    invoke-direct {p0}, Lcom/tapjoy/internal/ih;->j()I

    .line 151
    nop

    .line 152
    const-string v3, ""

    const/4 v4, 0x0

    :goto_48
    const/16 v5, 0xb

    if-ge v4, v5, :cond_65

    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/tapjoy/internal/ih;->a:[B

    aget-byte v5, v5, v4

    int-to-char v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 152
    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    .line 155
    :cond_65
    const-string v4, "NETSCAPE2.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 156
    invoke-direct {p0}, Lcom/tapjoy/internal/ih;->f()V

    goto :goto_3

    .line 159
    :cond_71
    invoke-direct {p0}, Lcom/tapjoy/internal/ih;->i()V

    .line 161
    goto :goto_3

    .line 164
    :sswitch_75
    invoke-direct {p0}, Lcom/tapjoy/internal/ih;->i()V

    .line 165
    goto :goto_3

    .line 145
    :sswitch_79
    iget-object v3, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    new-instance v4, Lcom/tapjoy/internal/if;

    invoke-direct {v4}, Lcom/tapjoy/internal/if;-><init>()V

    iput-object v4, v3, Lcom/tapjoy/internal/ig;->d:Lcom/tapjoy/internal/if;

    .line 146
    invoke-direct {p0}, Lcom/tapjoy/internal/ih;->d()V

    .line 147
    goto/16 :goto_3

    .line 168
    :sswitch_87
    invoke-direct {p0}, Lcom/tapjoy/internal/ih;->i()V

    .line 169
    goto/16 :goto_3

    .line 185
    :cond_8c
    return-void

    nop

    :sswitch_data_8e
    .sparse-switch
        0x21 -> :sswitch_36
        0x2c -> :sswitch_23
        0x3b -> :sswitch_20
    .end sparse-switch

    :sswitch_data_9c
    .sparse-switch
        0x1 -> :sswitch_87
        0xf9 -> :sswitch_79
        0xfe -> :sswitch_75
        0xff -> :sswitch_41
    .end sparse-switch
.end method

.method private d()V
    .registers 5

    .line 192
    invoke-direct {p0}, Lcom/tapjoy/internal/ih;->k()I

    .line 194
    invoke-direct {p0}, Lcom/tapjoy/internal/ih;->k()I

    move-result v0

    .line 196
    iget-object v1, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    iget-object v1, v1, Lcom/tapjoy/internal/ig;->d:Lcom/tapjoy/internal/if;

    and-int/lit8 v2, v0, 0x1c

    const/4 v3, 0x2

    shr-int/2addr v2, v3

    iput v2, v1, Lcom/tapjoy/internal/if;->g:I

    .line 197
    iget-object v1, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    iget-object v1, v1, Lcom/tapjoy/internal/ig;->d:Lcom/tapjoy/internal/if;

    iget v1, v1, Lcom/tapjoy/internal/if;->g:I

    const/4 v2, 0x1

    if-nez v1, :cond_20

    .line 199
    iget-object v1, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    iget-object v1, v1, Lcom/tapjoy/internal/ig;->d:Lcom/tapjoy/internal/if;

    iput v2, v1, Lcom/tapjoy/internal/if;->g:I

    .line 201
    :cond_20
    iget-object v1, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    iget-object v1, v1, Lcom/tapjoy/internal/ig;->d:Lcom/tapjoy/internal/if;

    and-int/2addr v0, v2

    if-eqz v0, :cond_28

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    :goto_29
    iput-boolean v2, v1, Lcom/tapjoy/internal/if;->f:Z

    .line 203
    nop

    .line 1416
    iget-object v0, p0, Lcom/tapjoy/internal/ih;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 203
    nop

    .line 205
    const/16 v1, 0xa

    if-ge v0, v3, :cond_39

    .line 206
    const/16 v0, 0xa

    .line 208
    :cond_39
    iget-object v2, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    iget-object v2, v2, Lcom/tapjoy/internal/ig;->d:Lcom/tapjoy/internal/if;

    mul-int/lit8 v0, v0, 0xa

    iput v0, v2, Lcom/tapjoy/internal/if;->i:I

    .line 210
    iget-object v0, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    iget-object v0, v0, Lcom/tapjoy/internal/ig;->d:Lcom/tapjoy/internal/if;

    invoke-direct {p0}, Lcom/tapjoy/internal/ih;->k()I

    move-result v1

    iput v1, v0, Lcom/tapjoy/internal/if;->h:I

    .line 212
    invoke-direct {p0}, Lcom/tapjoy/internal/ih;->k()I

    .line 213
    return-void
.end method

.method private e()V
    .registers 9

    .line 220
    iget-object v0, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    iget-object v0, v0, Lcom/tapjoy/internal/ig;->d:Lcom/tapjoy/internal/if;

    .line 2416
    iget-object v1, p0, Lcom/tapjoy/internal/ih;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 220
    iput v1, v0, Lcom/tapjoy/internal/if;->a:I

    .line 221
    iget-object v0, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    iget-object v0, v0, Lcom/tapjoy/internal/ig;->d:Lcom/tapjoy/internal/if;

    .line 3416
    iget-object v1, p0, Lcom/tapjoy/internal/ih;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 221
    iput v1, v0, Lcom/tapjoy/internal/if;->b:I

    .line 222
    iget-object v0, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    iget-object v0, v0, Lcom/tapjoy/internal/ig;->d:Lcom/tapjoy/internal/if;

    .line 4416
    iget-object v1, p0, Lcom/tapjoy/internal/ih;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 222
    iput v1, v0, Lcom/tapjoy/internal/if;->c:I

    .line 223
    iget-object v0, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    iget-object v0, v0, Lcom/tapjoy/internal/ig;->d:Lcom/tapjoy/internal/if;

    .line 5416
    iget-object v1, p0, Lcom/tapjoy/internal/ih;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 223
    iput v1, v0, Lcom/tapjoy/internal/if;->d:I

    .line 225
    invoke-direct {p0}, Lcom/tapjoy/internal/ih;->k()I

    move-result v0

    .line 227
    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3c

    const/4 v1, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v1, 0x0

    .line 228
    :goto_3d
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    and-int/lit8 v6, v0, 0x7

    add-int/2addr v6, v3

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    .line 232
    iget-object v5, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    iget-object v5, v5, Lcom/tapjoy/internal/ig;->d:Lcom/tapjoy/internal/if;

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_51

    const/4 v2, 0x1

    :cond_51
    iput-boolean v2, v5, Lcom/tapjoy/internal/if;->e:Z

    .line 233
    if-eqz v1, :cond_60

    .line 235
    iget-object v0, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    iget-object v0, v0, Lcom/tapjoy/internal/ig;->d:Lcom/tapjoy/internal/if;

    invoke-direct {p0, v4}, Lcom/tapjoy/internal/ih;->a(I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/if;->k:[I

    goto :goto_67

    .line 238
    :cond_60
    iget-object v0, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    iget-object v0, v0, Lcom/tapjoy/internal/ig;->d:Lcom/tapjoy/internal/if;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tapjoy/internal/if;->k:[I

    .line 242
    :goto_67
    iget-object v0, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    iget-object v0, v0, Lcom/tapjoy/internal/ig;->d:Lcom/tapjoy/internal/if;

    iget-object v1, p0, Lcom/tapjoy/internal/ih;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iput v1, v0, Lcom/tapjoy/internal/if;->j:I

    .line 245
    invoke-direct {p0}, Lcom/tapjoy/internal/ih;->h()V

    .line 247
    invoke-direct {p0}, Lcom/tapjoy/internal/ih;->l()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 248
    return-void

    .line 251
    :cond_7d
    iget-object v0, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    iget v1, v0, Lcom/tapjoy/internal/ig;->c:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/tapjoy/internal/ig;->c:I

    .line 253
    iget-object v0, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    iget-object v0, v0, Lcom/tapjoy/internal/ig;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    iget-object v1, v1, Lcom/tapjoy/internal/ig;->d:Lcom/tapjoy/internal/if;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    return-void
.end method

.method private f()V
    .registers 4

    .line 261
    :cond_0
    invoke-direct {p0}, Lcom/tapjoy/internal/ih;->j()I

    .line 262
    iget-object v0, p0, Lcom/tapjoy/internal/ih;->a:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_26

    .line 264
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    .line 265
    const/4 v2, 0x2

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 266
    iget-object v2, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    iput v0, v2, Lcom/tapjoy/internal/ig;->m:I

    .line 267
    iget-object v0, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    iget v0, v0, Lcom/tapjoy/internal/ig;->m:I

    if-nez v0, :cond_26

    .line 268
    iget-object v0, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    const/4 v1, -0x1

    iput v1, v0, Lcom/tapjoy/internal/ig;->m:I

    .line 271
    :cond_26
    iget v0, p0, Lcom/tapjoy/internal/ih;->d:I

    if-lez v0, :cond_30

    invoke-direct {p0}, Lcom/tapjoy/internal/ih;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    :cond_30
    return-void
.end method

.method private g()V
    .registers 6

    .line 279
    nop

    .line 280
    const/4 v0, 0x0

    const-string v1, ""

    const/4 v2, 0x0

    :goto_5
    const/4 v3, 0x6

    if-ge v2, v3, :cond_21

    .line 281
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/tapjoy/internal/ih;->k()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 280
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 283
    :cond_21
    const-string v2, "GIF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2f

    .line 284
    iget-object v0, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    iput v2, v0, Lcom/tapjoy/internal/ig;->b:I

    .line 285
    return-void

    .line 287
    :cond_2f
    nop

    .line 6299
    iget-object v1, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    .line 6416
    iget-object v3, p0, Lcom/tapjoy/internal/ih;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 6299
    iput v3, v1, Lcom/tapjoy/internal/ig;->f:I

    .line 6300
    iget-object v1, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    .line 7416
    iget-object v3, p0, Lcom/tapjoy/internal/ih;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 6300
    iput v3, v1, Lcom/tapjoy/internal/ig;->g:I

    .line 6302
    invoke-direct {p0}, Lcom/tapjoy/internal/ih;->k()I

    move-result v1

    .line 6304
    iget-object v3, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_4f

    const/4 v0, 0x1

    :cond_4f
    iput-boolean v0, v3, Lcom/tapjoy/internal/ig;->h:Z

    .line 6308
    iget-object v0, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    const/4 v2, 0x2

    and-int/lit8 v1, v1, 0x7

    shl-int v1, v2, v1

    iput v1, v0, Lcom/tapjoy/internal/ig;->i:I

    .line 6310
    iget-object v0, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    invoke-direct {p0}, Lcom/tapjoy/internal/ih;->k()I

    move-result v1

    iput v1, v0, Lcom/tapjoy/internal/ig;->j:I

    .line 6312
    iget-object v0, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    invoke-direct {p0}, Lcom/tapjoy/internal/ih;->k()I

    move-result v1

    iput v1, v0, Lcom/tapjoy/internal/ig;->k:I

    .line 288
    iget-object v0, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    iget-boolean v0, v0, Lcom/tapjoy/internal/ig;->h:Z

    if-eqz v0, :cond_8c

    invoke-direct {p0}, Lcom/tapjoy/internal/ih;->l()Z

    move-result v0

    if-nez v0, :cond_8c

    .line 289
    iget-object v0, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    iget v1, v0, Lcom/tapjoy/internal/ig;->i:I

    invoke-direct {p0, v1}, Lcom/tapjoy/internal/ih;->a(I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/ig;->a:[I

    .line 290
    iget-object v0, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    iget-object v1, v0, Lcom/tapjoy/internal/ig;->a:[I

    iget-object v2, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    iget v2, v2, Lcom/tapjoy/internal/ig;->j:I

    aget v1, v1, v2

    iput v1, v0, Lcom/tapjoy/internal/ig;->l:I

    .line 292
    :cond_8c
    return-void
.end method

.method private h()V
    .registers 1

    .line 353
    invoke-direct {p0}, Lcom/tapjoy/internal/ih;->k()I

    .line 355
    invoke-direct {p0}, Lcom/tapjoy/internal/ih;->i()V

    .line 356
    return-void
.end method

.method private i()V
    .registers 4

    .line 365
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/tapjoy/internal/ih;->k()I

    move-result v0

    .line 366
    iget-object v1, p0, Lcom/tapjoy/internal/ih;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_e} :catch_11

    .line 367
    if-gtz v0, :cond_0

    .line 369
    return-void

    .line 368
    :catch_11
    move-exception v0

    .line 370
    return-void
.end method

.method private j()I
    .registers 7

    .line 378
    invoke-direct {p0}, Lcom/tapjoy/internal/ih;->k()I

    move-result v0

    iput v0, p0, Lcom/tapjoy/internal/ih;->d:I

    .line 379
    nop

    .line 380
    const/4 v1, 0x0

    if-lez v0, :cond_3d

    .line 381
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 383
    :goto_c
    :try_start_c
    iget v2, p0, Lcom/tapjoy/internal/ih;->d:I

    if-ge v0, v2, :cond_1a

    .line 384
    sub-int/2addr v2, v0

    .line 385
    iget-object v3, p0, Lcom/tapjoy/internal/ih;->b:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/tapjoy/internal/ih;->a:[B

    invoke-virtual {v3, v4, v0, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_1b

    .line 387
    add-int/2addr v0, v2

    goto :goto_c

    .line 393
    :cond_1a
    goto :goto_3c

    .line 389
    :catch_1b
    move-exception v3

    .line 390
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 391
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const/4 v1, 0x2

    iget v5, p0, Lcom/tapjoy/internal/ih;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x3

    aput-object v3, v4, v1

    .line 392
    iget-object v1, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    iput v2, v1, Lcom/tapjoy/internal/ig;->b:I

    .line 395
    :goto_3c
    move v1, v0

    :cond_3d
    return v1
.end method

.method private k()I
    .registers 3

    .line 402
    nop

    .line 404
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/ih;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_a

    and-int/lit16 v0, v0, 0xff

    .line 407
    goto :goto_11

    .line 405
    :catch_a
    move-exception v0

    .line 406
    iget-object v0, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    const/4 v1, 0x1

    iput v1, v0, Lcom/tapjoy/internal/ig;->b:I

    const/4 v0, 0x0

    .line 408
    :goto_11
    return v0
.end method

.method private l()Z
    .registers 2

    .line 420
    iget-object v0, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    iget v0, v0, Lcom/tapjoy/internal/ig;->b:I

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()Lcom/tapjoy/internal/ig;
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/tapjoy/internal/ih;->b:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_27

    .line 83
    invoke-direct {p0}, Lcom/tapjoy/internal/ih;->l()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 84
    iget-object v0, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    return-object v0

    .line 87
    :cond_d
    invoke-direct {p0}, Lcom/tapjoy/internal/ih;->g()V

    .line 88
    invoke-direct {p0}, Lcom/tapjoy/internal/ih;->l()Z

    move-result v0

    if-nez v0, :cond_24

    .line 89
    invoke-direct {p0}, Lcom/tapjoy/internal/ih;->b()V

    .line 90
    iget-object v0, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    iget v0, v0, Lcom/tapjoy/internal/ig;->c:I

    if-gez v0, :cond_24

    .line 91
    iget-object v0, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    const/4 v1, 0x1

    iput v1, v0, Lcom/tapjoy/internal/ig;->b:I

    .line 95
    :cond_24
    iget-object v0, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    return-object v0

    .line 81
    :cond_27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setData() before parseHeader()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a([B)Lcom/tapjoy/internal/ih;
    .registers 3

    .line 58
    if-eqz p1, :cond_a

    .line 59
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tapjoy/internal/ih;->a(Ljava/nio/ByteBuffer;)Lcom/tapjoy/internal/ih;

    goto :goto_12

    .line 61
    :cond_a
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tapjoy/internal/ih;->b:Ljava/nio/ByteBuffer;

    .line 62
    iget-object p1, p0, Lcom/tapjoy/internal/ih;->c:Lcom/tapjoy/internal/ig;

    const/4 v0, 0x2

    iput v0, p1, Lcom/tapjoy/internal/ig;->b:I

    .line 64
    :goto_12
    return-object p0
.end method
