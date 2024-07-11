.class public Lcom/anythink/core/common/res/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(I)V
    .registers 5

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    if-lez p1, :cond_13

    .line 95
    iput p1, p0, Lcom/anythink/core/common/res/c;->c:I

    .line 96
    new-instance p1, Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p1, p0, Lcom/anythink/core/common/res/c;->a:Ljava/util/LinkedHashMap;

    .line 97
    return-void

    .line 93
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxSize <= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(I)V
    .registers 3

    .line 106
    if-lez p1, :cond_d

    .line 110
    monitor-enter p0

    .line 111
    :try_start_3
    iput p1, p0, Lcom/anythink/core/common/res/c;->c:I

    .line 112
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 113
    invoke-direct {p0, p1}, Lcom/anythink/core/common/res/c;->b(I)V

    .line 114
    return-void

    .line 112
    :catchall_a
    move-exception p1

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw p1

    .line 107
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxSize <= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .line 305
    invoke-virtual {p0, p2}, Lcom/anythink/core/common/res/c;->a(Ljava/lang/Object;)I

    move-result v0

    .line 306
    if-ltz v0, :cond_7

    .line 310
    return v0

    .line 307
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Negative size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 301
    const/4 v0, 0x0

    return-object v0
.end method

.method private b(I)V
    .registers 7

    .line 207
    :goto_0
    monitor-enter p0

    .line 209
    :try_start_1
    iget v0, p0, Lcom/anythink/core/common/res/c;->b:I

    if-ltz v0, :cond_5c

    iget-object v0, p0, Lcom/anythink/core/common/res/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/anythink/core/common/res/c;->b:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_7f
    .catchall {:try_start_1 .. :try_end_f} :catchall_7d

    if-nez v0, :cond_5c

    .line 216
    :cond_11
    nop

    .line 219
    :try_start_12
    iget v0, p0, Lcom/anythink/core/common/res/c;->b:I

    if-gt v0, p1, :cond_18

    .line 220
    monitor-exit p0

    return-void

    .line 223
    :cond_18
    iget-object v0, p0, Lcom/anythink/core/common/res/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_36

    .line 224
    iget-object v0, p0, Lcom/anythink/core/common/res/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_37

    :cond_36
    move-object v0, v1

    .line 225
    :goto_37
    if-nez v0, :cond_3b

    .line 226
    monitor-exit p0

    return-void

    .line 229
    :cond_3b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 230
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 231
    iget-object v3, p0, Lcom/anythink/core/common/res/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget v3, p0, Lcom/anythink/core/common/res/c;->b:I

    invoke-direct {p0, v2, v0}, Lcom/anythink/core/common/res/c;->b(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/anythink/core/common/res/c;->b:I

    .line 233
    iget v3, p0, Lcom/anythink/core/common/res/c;->f:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/anythink/core/common/res/c;->f:I

    .line 234
    monitor-exit p0
    :try_end_58
    .catchall {:try_start_12 .. :try_end_58} :catchall_7d

    .line 236
    invoke-virtual {p0, v4, v2, v0, v1}, Lcom/anythink/core/common/res/c;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 237
    goto :goto_0

    .line 210
    :cond_5c
    :try_start_5c
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_7d} :catch_7f
    .catchall {:try_start_5c .. :try_end_7d} :catchall_7d

    .line 234
    :catchall_7d
    move-exception p1

    goto :goto_85

    .line 214
    :catch_7f
    move-exception p1

    :try_start_80
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 215
    monitor-exit p0

    return-void

    .line 234
    :goto_85
    monitor-exit p0
    :try_end_86
    .catchall {:try_start_80 .. :try_end_86} :catchall_7d

    throw p1
.end method

.method private declared-synchronized c()I
    .registers 2

    monitor-enter p0

    .line 338
    :try_start_1
    iget v0, p0, Lcom/anythink/core/common/res/c;->b:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 338
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 246
    if-eqz p1, :cond_20

    .line 251
    monitor-enter p0

    .line 252
    :try_start_3
    iget-object v0, p0, Lcom/anythink/core/common/res/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_14

    .line 254
    iget v1, p0, Lcom/anythink/core/common/res/c;->b:I

    invoke-direct {p0, p1, v0}, Lcom/anythink/core/common/res/c;->b(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/anythink/core/common/res/c;->b:I

    .line 256
    :cond_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1d

    .line 258
    if-eqz v0, :cond_1c

    .line 259
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/anythink/core/common/res/c;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 262
    :cond_1c
    return-object v0

    .line 256
    :catchall_1d
    move-exception p1

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p1

    .line 247
    :cond_20
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private declared-synchronized d()I
    .registers 2

    monitor-enter p0

    .line 347
    :try_start_1
    iget v0, p0, Lcom/anythink/core/common/res/c;->c:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 347
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()I
    .registers 2

    monitor-enter p0

    .line 355
    :try_start_1
    iget v0, p0, Lcom/anythink/core/common/res/c;->g:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 355
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()I
    .registers 2

    monitor-enter p0

    .line 363
    :try_start_1
    iget v0, p0, Lcom/anythink/core/common/res/c;->h:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 363
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()I
    .registers 2

    monitor-enter p0

    .line 370
    :try_start_1
    iget v0, p0, Lcom/anythink/core/common/res/c;->e:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 370
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h()I
    .registers 2

    monitor-enter p0

    .line 377
    :try_start_1
    iget v0, p0, Lcom/anythink/core/common/res/c;->d:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 377
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized i()I
    .registers 2

    monitor-enter p0

    .line 384
    :try_start_1
    iget v0, p0, Lcom/anythink/core/common/res/c;->f:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 384
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized j()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    monitor-enter p0

    .line 392
    :try_start_1
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/anythink/core/common/res/c;->a:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    .line 392
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private k()V
    .registers 7

    .line 405
    iget-object v0, p0, Lcom/anythink/core/common/res/c;->a:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 411
    :goto_3
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_88

    .line 412
    :try_start_4
    iget v1, p0, Lcom/anythink/core/common/res/c;->b:I

    if-ltz v1, :cond_64

    iget-object v1, p0, Lcom/anythink/core/common/res/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    iget v1, p0, Lcom/anythink/core/common/res/c;->b:I

    if-nez v1, :cond_64

    .line 416
    :cond_14
    iget v1, p0, Lcom/anythink/core/common/res/c;->b:I

    if-nez v1, :cond_1a

    .line 417
    monitor-exit p0

    goto :goto_3c

    .line 419
    :cond_1a
    iget-object v1, p0, Lcom/anythink/core/common/res/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_38

    .line 420
    iget-object v1, p0, Lcom/anythink/core/common/res/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_39

    :cond_38
    move-object v1, v2

    .line 421
    :goto_39
    if-nez v1, :cond_43

    .line 422
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_4 .. :try_end_3c} :catchall_85

    .line 438
    :goto_3c
    :try_start_3c
    iget-object v1, p0, Lcom/anythink/core/common/res/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 441
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_88

    return-void

    .line 425
    :cond_43
    :try_start_43
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 426
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 428
    iget-object v4, p0, Lcom/anythink/core/common/res/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget v4, p0, Lcom/anythink/core/common/res/c;->b:I

    invoke-direct {p0, v3, v1}, Lcom/anythink/core/common/res/c;->b(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/anythink/core/common/res/c;->b:I

    .line 434
    iget v4, p0, Lcom/anythink/core/common/res/c;->f:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/anythink/core/common/res/c;->f:I

    .line 435
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_43 .. :try_end_60} :catchall_85

    .line 436
    :try_start_60
    invoke-virtual {p0, v5, v3, v1, v2}, Lcom/anythink/core/common/res/c;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_88

    .line 437
    goto :goto_3

    .line 413
    :cond_64
    :try_start_64
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 435
    :catchall_85
    move-exception v1

    monitor-exit p0
    :try_end_87
    .catchall {:try_start_64 .. :try_end_87} :catchall_85

    :try_start_87
    throw v1

    .line 441
    :catchall_88
    move-exception v1

    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_88

    throw v1
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .line 322
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 177
    if-eqz p1, :cond_33

    .line 182
    monitor-enter p0

    .line 183
    :try_start_3
    iget v0, p0, Lcom/anythink/core/common/res/c;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/anythink/core/common/res/c;->d:I

    .line 184
    iget v0, p0, Lcom/anythink/core/common/res/c;->b:I

    invoke-direct {p0, p1, p2}, Lcom/anythink/core/common/res/c;->b(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/anythink/core/common/res/c;->b:I

    .line 185
    iget-object v0, p0, Lcom/anythink/core/common/res/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_23

    .line 187
    iget v1, p0, Lcom/anythink/core/common/res/c;->b:I

    invoke-direct {p0, p1, v0}, Lcom/anythink/core/common/res/c;->b(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/anythink/core/common/res/c;->b:I

    .line 189
    :cond_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_30

    .line 191
    if-eqz v0, :cond_2a

    .line 192
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, p2}, Lcom/anythink/core/common/res/c;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    :cond_2a
    iget p1, p0, Lcom/anythink/core/common/res/c;->c:I

    invoke-direct {p0, p1}, Lcom/anythink/core/common/res/c;->b(I)V

    .line 196
    return-object v0

    .line 189
    :catchall_30
    move-exception p1

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p1

    .line 178
    :cond_33
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key == null || value == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()V
    .registers 2

    .line 329
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/anythink/core/common/res/c;->b(I)V

    .line 330
    return-void
.end method

.method protected a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;TV;)V"
        }
    .end annotation

    .line 282
    return-void
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 123
    if-eqz p1, :cond_1f

    .line 128
    monitor-enter p0

    .line 129
    :try_start_3
    iget-object v0, p0, Lcom/anythink/core/common/res/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 130
    if-eqz p1, :cond_13

    .line 131
    iget v0, p0, Lcom/anythink/core/common/res/c;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/anythink/core/common/res/c;->g:I

    .line 132
    monitor-exit p0

    return-object p1

    .line 134
    :cond_13
    iget p1, p0, Lcom/anythink/core/common/res/c;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/anythink/core/common/res/c;->h:I

    .line 135
    monitor-exit p0

    .line 146
    const/4 p1, 0x0

    return-object p1

    .line 135
    :catchall_1c
    move-exception p1

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1

    .line 124
    :cond_1f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .registers 6

    monitor-enter p0

    .line 397
    :try_start_1
    iget v0, p0, Lcom/anythink/core/common/res/c;->g:I

    iget v1, p0, Lcom/anythink/core/common/res/c;->h:I

    add-int/2addr v1, v0

    .line 398
    const/4 v2, 0x0

    if-eqz v1, :cond_d

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    .line 399
    :goto_e
    const-string v1, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/anythink/core/common/res/c;->c:I

    .line 400
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x1

    iget v4, p0, Lcom/anythink/core/common/res/c;->g:I

    .line 401
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x2

    iget v4, p0, Lcom/anythink/core/common/res/c;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    .line 399
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3a

    monitor-exit p0

    return-object v0

    .line 396
    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
