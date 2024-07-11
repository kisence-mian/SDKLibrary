.class public Lcom/umeng/analytics/pro/at;
.super Ljava/lang/Object;
.source "TDeserializer.java"


# instance fields
.field private final a:Lcom/umeng/analytics/pro/bp;

.field private final b:Lcom/umeng/analytics/pro/cc;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 47
    new-instance v0, Lcom/umeng/analytics/pro/bj$a;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/bj$a;-><init>()V

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/at;-><init>(Lcom/umeng/analytics/pro/br;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/pro/br;)V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/umeng/analytics/pro/cc;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/cc;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/at;->b:Lcom/umeng/analytics/pro/cc;

    .line 58
    invoke-interface {p1, v0}, Lcom/umeng/analytics/pro/br;->a(Lcom/umeng/analytics/pro/cd;)Lcom/umeng/analytics/pro/bp;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    .line 59
    return-void
.end method

.method private varargs a(B[BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 241
    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lcom/umeng/analytics/pro/at;->j([BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Lcom/umeng/analytics/pro/bk;

    move-result-object p2

    .line 242
    if-eqz p2, :cond_8f

    .line 244
    const/16 p3, 0xb

    sparse-switch p1, :sswitch_data_a8

    goto/16 :goto_8f

    .line 281
    :sswitch_d
    iget-byte p1, p2, Lcom/umeng/analytics/pro/bk;->b:B

    if-ne p1, p3, :cond_8f

    .line 282
    iget-object p1, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->A()Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_93
    .catchall {:try_start_0 .. :try_end_17} :catchall_91

    .line 291
    :goto_17
    iget-object p2, p0, Lcom/umeng/analytics/pro/at;->b:Lcom/umeng/analytics/pro/cc;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/cc;->e()V

    .line 292
    iget-object p2, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bp;->B()V

    return-object p1

    .line 276
    :sswitch_22
    :try_start_22
    iget-byte p1, p2, Lcom/umeng/analytics/pro/bk;->b:B

    if-ne p1, p3, :cond_8f

    .line 277
    iget-object p1, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->z()Ljava/lang/String;

    move-result-object p1

    goto :goto_17

    .line 271
    :sswitch_2d
    iget-byte p1, p2, Lcom/umeng/analytics/pro/bk;->b:B

    const/16 p2, 0xa

    if-ne p1, p2, :cond_8f

    .line 272
    iget-object p1, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->x()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_17

    .line 266
    :sswitch_3e
    iget-byte p1, p2, Lcom/umeng/analytics/pro/bk;->b:B

    const/16 p2, 0x8

    if-ne p1, p2, :cond_8f

    .line 267
    iget-object p1, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->w()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_17

    .line 261
    :sswitch_4f
    iget-byte p1, p2, Lcom/umeng/analytics/pro/bk;->b:B

    const/4 p2, 0x6

    if-ne p1, p2, :cond_8f

    .line 262
    iget-object p1, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->v()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    goto :goto_17

    .line 256
    :sswitch_5f
    iget-byte p1, p2, Lcom/umeng/analytics/pro/bk;->b:B

    const/4 p2, 0x4

    if-ne p1, p2, :cond_8f

    .line 257
    iget-object p1, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->y()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_17

    .line 251
    :sswitch_6f
    iget-byte p1, p2, Lcom/umeng/analytics/pro/bk;->b:B

    const/4 p2, 0x3

    if-ne p1, p2, :cond_8f

    .line 252
    iget-object p1, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->u()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    goto :goto_17

    .line 246
    :sswitch_7f
    iget-byte p1, p2, Lcom/umeng/analytics/pro/bk;->b:B

    const/4 p2, 0x2

    if-ne p1, p2, :cond_8f

    .line 247
    iget-object p1, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->t()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_8e} :catch_93
    .catchall {:try_start_22 .. :try_end_8e} :catchall_91

    goto :goto_17

    .line 287
    :cond_8f
    :goto_8f
    const/4 p1, 0x0

    goto :goto_17

    .line 291
    :catchall_91
    move-exception p1

    goto :goto_9a

    .line 288
    :catch_93
    move-exception p1

    .line 289
    :try_start_94
    new-instance p2, Lcom/umeng/analytics/pro/aw;

    invoke-direct {p2, p1}, Lcom/umeng/analytics/pro/aw;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_9a
    .catchall {:try_start_94 .. :try_end_9a} :catchall_91

    .line 291
    :goto_9a
    iget-object p2, p0, Lcom/umeng/analytics/pro/at;->b:Lcom/umeng/analytics/pro/cc;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/cc;->e()V

    .line 292
    iget-object p2, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bp;->B()V

    goto :goto_a6

    :goto_a5
    throw p1

    :goto_a6
    goto :goto_a5

    nop

    :sswitch_data_a8
    .sparse-switch
        0x2 -> :sswitch_7f
        0x3 -> :sswitch_6f
        0x4 -> :sswitch_5f
        0x6 -> :sswitch_4f
        0x8 -> :sswitch_3e
        0xa -> :sswitch_2d
        0xb -> :sswitch_22
        0x64 -> :sswitch_d
    .end sparse-switch
.end method

.method private varargs j([BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Lcom/umeng/analytics/pro/bk;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/umeng/analytics/pro/at;->b:Lcom/umeng/analytics/pro/cc;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/cc;->a([B)V

    .line 299
    array-length p1, p3

    add-int/lit8 p1, p1, 0x1

    new-array v0, p1, [Lcom/umeng/analytics/pro/ax;

    .line 300
    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 301
    const/4 p2, 0x0

    :goto_e
    array-length v2, p3

    if-ge p2, v2, :cond_19

    .line 302
    add-int/lit8 v2, p2, 0x1

    aget-object p2, p3, p2

    aput-object p2, v0, v2

    .line 301
    move p2, v2

    goto :goto_e

    .line 306
    :cond_19
    nop

    .line 309
    nop

    .line 311
    iget-object p2, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bp;->j()Lcom/umeng/analytics/pro/bu;

    const/4 p2, 0x0

    move-object p3, p2

    .line 313
    :cond_22
    :goto_22
    if-ge v1, p1, :cond_5b

    .line 314
    iget-object p3, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p3}, Lcom/umeng/analytics/pro/bp;->l()Lcom/umeng/analytics/pro/bk;

    move-result-object p3

    .line 318
    iget-byte v2, p3, Lcom/umeng/analytics/pro/bk;->b:B

    if-eqz v2, :cond_5a

    iget-short v2, p3, Lcom/umeng/analytics/pro/bk;->c:S

    aget-object v3, v0, v1

    invoke-interface {v3}, Lcom/umeng/analytics/pro/ax;->a()S

    move-result v3

    if-le v2, v3, :cond_39

    goto :goto_5a

    .line 322
    :cond_39
    iget-short v2, p3, Lcom/umeng/analytics/pro/bk;->c:S

    aget-object v3, v0, v1

    invoke-interface {v3}, Lcom/umeng/analytics/pro/ax;->a()S

    move-result v3

    if-eq v2, v3, :cond_50

    .line 324
    iget-object v2, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    iget-byte v3, p3, Lcom/umeng/analytics/pro/bk;->b:B

    invoke-static {v2, v3}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    .line 325
    iget-object v2, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/bp;->m()V

    goto :goto_22

    .line 328
    :cond_50
    add-int/lit8 v1, v1, 0x1

    .line 329
    if-ge v1, p1, :cond_22

    .line 330
    iget-object v2, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/bp;->j()Lcom/umeng/analytics/pro/bu;

    goto :goto_22

    .line 319
    :cond_5a
    :goto_5a
    return-object p2

    .line 334
    :cond_5b
    return-object p3
.end method


# virtual methods
.method public varargs a([BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Ljava/lang/Boolean;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 127
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/at;->a(B[BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public a(Lcom/umeng/analytics/pro/aq;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 345
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/at;->a(Lcom/umeng/analytics/pro/aq;[B)V

    .line 346
    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/aq;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 87
    :try_start_0
    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/at;->a(Lcom/umeng/analytics/pro/aq;[B)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_7} :catch_10
    .catchall {:try_start_0 .. :try_end_7} :catchall_e

    .line 91
    iget-object p1, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->B()V

    .line 92
    nop

    .line 93
    return-void

    .line 91
    :catchall_e
    move-exception p1

    goto :goto_2a

    .line 88
    :catch_10
    move-exception p1

    .line 89
    :try_start_11
    new-instance p1, Lcom/umeng/analytics/pro/aw;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "JVM DOES NOT SUPPORT ENCODING: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/aw;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2a
    .catchall {:try_start_11 .. :try_end_2a} :catchall_e

    .line 91
    :goto_2a
    iget-object p2, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bp;->B()V

    throw p1
.end method

.method public a(Lcom/umeng/analytics/pro/aq;[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/at;->b:Lcom/umeng/analytics/pro/cc;

    invoke-virtual {v0, p2}, Lcom/umeng/analytics/pro/cc;->a([B)V

    .line 70
    iget-object p2, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-interface {p1, p2}, Lcom/umeng/analytics/pro/aq;->read(Lcom/umeng/analytics/pro/bp;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_16

    .line 72
    iget-object p1, p0, Lcom/umeng/analytics/pro/at;->b:Lcom/umeng/analytics/pro/cc;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cc;->e()V

    .line 73
    iget-object p1, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->B()V

    .line 74
    nop

    .line 75
    return-void

    .line 72
    :catchall_16
    move-exception p1

    iget-object p2, p0, Lcom/umeng/analytics/pro/at;->b:Lcom/umeng/analytics/pro/cc;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/cc;->e()V

    .line 73
    iget-object p2, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bp;->B()V

    throw p1
.end method

.method public varargs a(Lcom/umeng/analytics/pro/aq;[BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 106
    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lcom/umeng/analytics/pro/at;->j([BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Lcom/umeng/analytics/pro/bk;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 108
    iget-object p2, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-interface {p1, p2}, Lcom/umeng/analytics/pro/aq;->read(Lcom/umeng/analytics/pro/bp;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_19
    .catchall {:try_start_0 .. :try_end_b} :catchall_17

    .line 113
    :cond_b
    iget-object p1, p0, Lcom/umeng/analytics/pro/at;->b:Lcom/umeng/analytics/pro/cc;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cc;->e()V

    .line 114
    iget-object p1, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->B()V

    .line 115
    nop

    .line 116
    return-void

    .line 113
    :catchall_17
    move-exception p1

    goto :goto_20

    .line 110
    :catch_19
    move-exception p1

    .line 111
    :try_start_1a
    new-instance p2, Lcom/umeng/analytics/pro/aw;

    invoke-direct {p2, p1}, Lcom/umeng/analytics/pro/aw;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_17

    .line 113
    :goto_20
    iget-object p2, p0, Lcom/umeng/analytics/pro/at;->b:Lcom/umeng/analytics/pro/cc;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/cc;->e()V

    .line 114
    iget-object p2, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bp;->B()V

    throw p1
.end method

.method public varargs b([BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Ljava/lang/Byte;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 139
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/at;->a(B[BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    return-object p1
.end method

.method public varargs c([BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Ljava/lang/Double;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 151
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/at;->a(B[BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    return-object p1
.end method

.method public varargs d([BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Ljava/lang/Short;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 163
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/at;->a(B[BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    return-object p1
.end method

.method public varargs e([BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Ljava/lang/Integer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 175
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/at;->a(B[BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public varargs f([BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Ljava/lang/Long;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 187
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/at;->a(B[BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method public varargs g([BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 199
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/at;->a(B[BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public varargs h([BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Ljava/nio/ByteBuffer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 212
    const/16 v0, 0x64

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/at;->a(B[BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public varargs i([BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Ljava/lang/Short;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 225
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/analytics/pro/at;->j([BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Lcom/umeng/analytics/pro/bk;

    move-result-object p1

    .line 226
    if-eqz p1, :cond_22

    .line 227
    iget-object p1, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->j()Lcom/umeng/analytics/pro/bu;

    .line 228
    iget-object p1, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->l()Lcom/umeng/analytics/pro/bk;

    move-result-object p1

    iget-short p1, p1, Lcom/umeng/analytics/pro/bk;->c:S

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_26
    .catchall {:try_start_0 .. :try_end_17} :catchall_24

    .line 234
    :goto_17
    iget-object p2, p0, Lcom/umeng/analytics/pro/at;->b:Lcom/umeng/analytics/pro/cc;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/cc;->e()V

    .line 235
    iget-object p2, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bp;->B()V

    return-object p1

    .line 230
    :cond_22
    const/4 p1, 0x0

    goto :goto_17

    .line 234
    :catchall_24
    move-exception p1

    goto :goto_2d

    .line 231
    :catch_26
    move-exception p1

    .line 232
    :try_start_27
    new-instance p2, Lcom/umeng/analytics/pro/aw;

    invoke-direct {p2, p1}, Lcom/umeng/analytics/pro/aw;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_24

    .line 234
    :goto_2d
    iget-object p2, p0, Lcom/umeng/analytics/pro/at;->b:Lcom/umeng/analytics/pro/cc;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/cc;->e()V

    .line 235
    iget-object p2, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bp;->B()V

    goto :goto_39

    :goto_38
    throw p1

    :goto_39
    goto :goto_38
.end method
