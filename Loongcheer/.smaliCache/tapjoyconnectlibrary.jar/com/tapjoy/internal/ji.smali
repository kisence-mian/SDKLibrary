.class public final Lcom/tapjoy/internal/ji;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/tapjoy/internal/jh;
    .registers 9

    .line 182
    invoke-static {p1}, Lcom/tapjoy/internal/ji;->a([Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    .line 184
    const/4 v1, 0x0

    if-nez p0, :cond_d

    .line 185
    new-instance p0, Lcom/tapjoy/internal/jh;

    invoke-direct {p0, v1, p1, v0}, Lcom/tapjoy/internal/jh;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object p0

    .line 188
    :cond_d
    if-nez p1, :cond_15

    .line 189
    new-instance p1, Lcom/tapjoy/internal/jh;

    invoke-direct {p1, p0}, Lcom/tapjoy/internal/jh;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 192
    :cond_15
    nop

    .line 194
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x32

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 197
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_23
    array-length v5, p1

    if-ge v3, v5, :cond_9a

    .line 199
    const-string v5, "{}"

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 201
    const/4 v6, -0x1

    if-ne v5, v6, :cond_4c

    .line 203
    if-nez v4, :cond_37

    .line 204
    new-instance v1, Lcom/tapjoy/internal/jh;

    invoke-direct {v1, p0, p1, v0}, Lcom/tapjoy/internal/jh;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v1

    .line 208
    :cond_37
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    new-instance p0, Lcom/tapjoy/internal/jh;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1, v0}, Lcom/tapjoy/internal/jh;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object p0

    .line 213
    :cond_4c
    invoke-static {p0, v5}, Lcom/tapjoy/internal/ji;->a(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_83

    .line 214
    invoke-static {p0, v5}, Lcom/tapjoy/internal/ji;->b(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_6c

    .line 215
    add-int/lit8 v3, v3, -0x1

    .line 216
    add-int/lit8 v6, v5, -0x1

    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    const/16 v4, 0x7b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 218
    add-int/lit8 v5, v5, 0x1

    move v4, v5

    goto :goto_97

    .line 223
    :cond_6c
    add-int/lit8 v6, v5, -0x1

    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    aget-object v4, p1, v3

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, v4, v6}, Lcom/tapjoy/internal/ji;->a(Ljava/lang/StringBuffer;Ljava/lang/Object;Ljava/util/Map;)V

    .line 225
    add-int/lit8 v5, v5, 0x2

    move v4, v5

    goto :goto_97

    .line 229
    :cond_83
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    aget-object v4, p1, v3

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, v4, v6}, Lcom/tapjoy/internal/ji;->a(Ljava/lang/StringBuffer;Ljava/lang/Object;Ljava/util/Map;)V

    .line 231
    add-int/lit8 v5, v5, 0x2

    move v4, v5

    .line 197
    :goto_97
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 236
    :cond_9a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    array-length p0, p1

    add-int/lit8 p0, p0, -0x1

    if-ge v3, p0, :cond_b4

    .line 238
    new-instance p0, Lcom/tapjoy/internal/jh;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1, v0}, Lcom/tapjoy/internal/jh;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object p0

    .line 240
    :cond_b4
    new-instance p0, Lcom/tapjoy/internal/jh;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, v1}, Lcom/tapjoy/internal/jh;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method private static a([Ljava/lang/Object;)Ljava/lang/Throwable;
    .registers 3

    .line 156
    const/4 v0, 0x0

    if-eqz p0, :cond_14

    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_14

    .line 160
    :cond_7
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-object p0, p0, v1

    .line 161
    instance-of v1, p0, Ljava/lang/Throwable;

    if-eqz v1, :cond_13

    .line 162
    check-cast p0, Ljava/lang/Throwable;

    return-object p0

    .line 164
    :cond_13
    return-object v0

    .line 157
    :cond_14
    :goto_14
    return-object v0
.end method

.method private static a(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .registers 6

    .line 304
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    .line 312
    return-void

    .line 306
    :catchall_8
    move-exception v0

    .line 307
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SLF4J: Failed toString() invocation on an object of type ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 311
    const-string p1, "[FAILED toString()]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    return-void
.end method

.method private static a(Ljava/lang/StringBuffer;Ljava/lang/Object;Ljava/util/Map;)V
    .registers 4

    .line 271
    if-nez p1, :cond_8

    .line 272
    const-string p1, "null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 273
    return-void

    .line 275
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_16

    .line 276
    invoke-static {p0, p1}, Lcom/tapjoy/internal/ji;->a(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    return-void

    .line 280
    :cond_16
    instance-of v0, p1, [Z

    if-eqz v0, :cond_22

    .line 281
    check-cast p1, [Z

    check-cast p1, [Z

    invoke-static {p0, p1}, Lcom/tapjoy/internal/ji;->a(Ljava/lang/StringBuffer;[Z)V

    return-void

    .line 282
    :cond_22
    instance-of v0, p1, [B

    if-eqz v0, :cond_2e

    .line 283
    check-cast p1, [B

    check-cast p1, [B

    invoke-static {p0, p1}, Lcom/tapjoy/internal/ji;->a(Ljava/lang/StringBuffer;[B)V

    return-void

    .line 284
    :cond_2e
    instance-of v0, p1, [C

    if-eqz v0, :cond_3a

    .line 285
    check-cast p1, [C

    check-cast p1, [C

    invoke-static {p0, p1}, Lcom/tapjoy/internal/ji;->a(Ljava/lang/StringBuffer;[C)V

    return-void

    .line 286
    :cond_3a
    instance-of v0, p1, [S

    if-eqz v0, :cond_46

    .line 287
    check-cast p1, [S

    check-cast p1, [S

    invoke-static {p0, p1}, Lcom/tapjoy/internal/ji;->a(Ljava/lang/StringBuffer;[S)V

    return-void

    .line 288
    :cond_46
    instance-of v0, p1, [I

    if-eqz v0, :cond_52

    .line 289
    check-cast p1, [I

    check-cast p1, [I

    invoke-static {p0, p1}, Lcom/tapjoy/internal/ji;->a(Ljava/lang/StringBuffer;[I)V

    return-void

    .line 290
    :cond_52
    instance-of v0, p1, [J

    if-eqz v0, :cond_5e

    .line 291
    check-cast p1, [J

    check-cast p1, [J

    invoke-static {p0, p1}, Lcom/tapjoy/internal/ji;->a(Ljava/lang/StringBuffer;[J)V

    return-void

    .line 292
    :cond_5e
    instance-of v0, p1, [F

    if-eqz v0, :cond_6a

    .line 293
    check-cast p1, [F

    check-cast p1, [F

    invoke-static {p0, p1}, Lcom/tapjoy/internal/ji;->a(Ljava/lang/StringBuffer;[F)V

    return-void

    .line 294
    :cond_6a
    instance-of v0, p1, [D

    if-eqz v0, :cond_76

    .line 295
    check-cast p1, [D

    check-cast p1, [D

    invoke-static {p0, p1}, Lcom/tapjoy/internal/ji;->a(Ljava/lang/StringBuffer;[D)V

    return-void

    .line 297
    :cond_76
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/tapjoy/internal/ji;->a(Ljava/lang/StringBuffer;[Ljava/lang/Object;Ljava/util/Map;)V

    .line 300
    return-void
.end method

.method private static a(Ljava/lang/StringBuffer;[B)V
    .registers 5

    .line 347
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 348
    array-length v0, p1

    .line 349
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1a

    .line 350
    aget-byte v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 351
    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_17

    .line 352
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 349
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 354
    :cond_1a
    const/16 p1, 0x5d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 355
    return-void
.end method

.method private static a(Ljava/lang/StringBuffer;[C)V
    .registers 5

    .line 358
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 359
    array-length v0, p1

    .line 360
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1a

    .line 361
    aget-char v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 362
    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_17

    .line 363
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 365
    :cond_1a
    const/16 p1, 0x5d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 366
    return-void
.end method

.method private static a(Ljava/lang/StringBuffer;[D)V
    .registers 6

    .line 413
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 414
    array-length v0, p1

    .line 415
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1a

    .line 416
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 417
    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_17

    .line 418
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 420
    :cond_1a
    const/16 p1, 0x5d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 421
    return-void
.end method

.method private static a(Ljava/lang/StringBuffer;[F)V
    .registers 5

    .line 402
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 403
    array-length v0, p1

    .line 404
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1a

    .line 405
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 406
    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_17

    .line 407
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 409
    :cond_1a
    const/16 p1, 0x5d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 410
    return-void
.end method

.method private static a(Ljava/lang/StringBuffer;[I)V
    .registers 5

    .line 380
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 381
    array-length v0, p1

    .line 382
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1a

    .line 383
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 384
    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_17

    .line 385
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 387
    :cond_1a
    const/16 p1, 0x5d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 388
    return-void
.end method

.method private static a(Ljava/lang/StringBuffer;[J)V
    .registers 6

    .line 391
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 392
    array-length v0, p1

    .line 393
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1a

    .line 394
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 395
    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_17

    .line 396
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 398
    :cond_1a
    const/16 p1, 0x5d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 399
    return-void
.end method

.method private static a(Ljava/lang/StringBuffer;[Ljava/lang/Object;Ljava/util/Map;)V
    .registers 6

    .line 318
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 319
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 320
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    array-length v0, p1

    .line 322
    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_24

    .line 323
    aget-object v2, p1, v1

    invoke-static {p0, v2, p2}, Lcom/tapjoy/internal/ji;->a(Ljava/lang/StringBuffer;Ljava/lang/Object;Ljava/util/Map;)V

    .line 324
    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_21

    .line 325
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 328
    :cond_24
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    goto :goto_2d

    .line 330
    :cond_28
    const-string p1, "..."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    :goto_2d
    const/16 p1, 0x5d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 333
    return-void
.end method

.method private static a(Ljava/lang/StringBuffer;[S)V
    .registers 5

    .line 369
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 370
    array-length v0, p1

    .line 371
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1a

    .line 372
    aget-short v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 373
    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_17

    .line 374
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 376
    :cond_1a
    const/16 p1, 0x5d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 377
    return-void
.end method

.method private static a(Ljava/lang/StringBuffer;[Z)V
    .registers 5

    .line 336
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 337
    array-length v0, p1

    .line 338
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1a

    .line 339
    aget-boolean v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 340
    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_17

    .line 341
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 343
    :cond_1a
    const/16 p1, 0x5d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 344
    return-void
.end method

.method private static a(Ljava/lang/String;I)Z
    .registers 4

    .line 247
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 248
    return v0

    .line 250
    :cond_4
    const/4 v1, 0x1

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .line 251
    const/16 p1, 0x5c

    if-ne p0, p1, :cond_f

    .line 252
    return v1

    .line 254
    :cond_f
    return v0
.end method

.method private static b(Ljava/lang/String;I)Z
    .registers 3

    .line 260
    const/4 v0, 0x2

    if-lt p1, v0, :cond_e

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x5c

    if-ne p0, p1, :cond_e

    .line 262
    const/4 p0, 0x1

    return p0

    .line 264
    :cond_e
    const/4 p0, 0x0

    return p0
.end method
