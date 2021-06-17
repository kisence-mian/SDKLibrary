.class Lcom/umeng/commonsdk/statistics/proto/d$a;
.super Lcom/umeng/analytics/pro/bz;
.source "Imprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/analytics/pro/bz<",
        "Lcom/umeng/commonsdk/statistics/proto/d;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 387
    invoke-direct {p0}, Lcom/umeng/analytics/pro/bz;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/proto/d$1;)V
    .registers 2

    .line 387
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aq;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 387
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/d$a;->b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/commonsdk/statistics/proto/d;)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/commonsdk/statistics/proto/d;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 392
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->j()Lcom/umeng/analytics/pro/bu;

    .line 394
    :goto_3
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->l()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    .line 395
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bk;->b:B

    if-nez v1, :cond_36

    .line 396
    nop

    .line 440
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->k()V

    .line 444
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/d;->h()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 448
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/d;->l()V

    .line 449
    return-void

    .line 445
    :cond_19
    new-instance p1, Lcom/umeng/analytics/pro/bq;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'version\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 446
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/bq;-><init>(Ljava/lang/String;)V

    throw p1

    .line 398
    :cond_36
    iget-short v1, v0, Lcom/umeng/analytics/pro/bk;->c:S

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_ae

    .line 436
    iget-byte v0, v0, Lcom/umeng/analytics/pro/bk;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    goto :goto_a9

    .line 428
    :pswitch_42
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bk;->b:B

    const/16 v3, 0xb

    if-ne v1, v3, :cond_52

    .line 429
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    .line 430
    invoke-virtual {p2, v2}, Lcom/umeng/commonsdk/statistics/proto/d;->c(Z)V

    goto :goto_a9

    .line 432
    :cond_52
    iget-byte v0, v0, Lcom/umeng/analytics/pro/bk;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    .line 434
    goto :goto_a9

    .line 420
    :pswitch_58
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bk;->b:B

    const/16 v3, 0x8

    if-ne v1, v3, :cond_68

    .line 421
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->b:I

    .line 422
    invoke-virtual {p2, v2}, Lcom/umeng/commonsdk/statistics/proto/d;->b(Z)V

    goto :goto_a9

    .line 424
    :cond_68
    iget-byte v0, v0, Lcom/umeng/analytics/pro/bk;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    .line 426
    goto :goto_a9

    .line 400
    :pswitch_6e
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bk;->b:B

    const/16 v3, 0xd

    if-ne v1, v3, :cond_a3

    .line 402
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->n()Lcom/umeng/analytics/pro/bm;

    move-result-object v0

    .line 403
    new-instance v1, Ljava/util/HashMap;

    iget v3, v0, Lcom/umeng/analytics/pro/bm;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p2, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    .line 404
    const/4 v1, 0x0

    :goto_84
    iget v3, v0, Lcom/umeng/analytics/pro/bm;->c:I

    if-ge v1, v3, :cond_9c

    .line 407
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->z()Ljava/lang/String;

    move-result-object v3

    .line 408
    new-instance v4, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-direct {v4}, Lcom/umeng/commonsdk/statistics/proto/e;-><init>()V

    .line 409
    invoke-virtual {v4, p1}, Lcom/umeng/commonsdk/statistics/proto/e;->read(Lcom/umeng/analytics/pro/bp;)V

    .line 410
    iget-object v5, p2, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    add-int/lit8 v1, v1, 0x1

    goto :goto_84

    .line 412
    :cond_9c
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->o()V

    .line 414
    invoke-virtual {p2, v2}, Lcom/umeng/commonsdk/statistics/proto/d;->a(Z)V

    goto :goto_a9

    .line 416
    :cond_a3
    iget-byte v0, v0, Lcom/umeng/analytics/pro/bk;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    .line 418
    nop

    .line 438
    :goto_a9
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->m()V

    goto/16 :goto_3

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_58
        :pswitch_42
    .end packed-switch
.end method

.method public synthetic b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aq;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 387
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/d$a;->a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/commonsdk/statistics/proto/d;)V

    return-void
.end method

.method public b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/commonsdk/statistics/proto/d;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 453
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/d;->l()V

    .line 455
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/d;->m()Lcom/umeng/analytics/pro/bu;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bu;)V

    .line 456
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    if-eqz v0, :cond_56

    .line 457
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/d;->n()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    .line 459
    new-instance v0, Lcom/umeng/analytics/pro/bm;

    const/16 v1, 0xb

    const/16 v2, 0xc

    iget-object v3, p2, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    .line 460
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/analytics/pro/bm;-><init>(BBI)V

    .line 459
    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bm;)V

    .line 461
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 462
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/umeng/analytics/pro/bp;->a(Ljava/lang/String;)V

    .line 463
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {v1, p1}, Lcom/umeng/commonsdk/statistics/proto/e;->write(Lcom/umeng/analytics/pro/bp;)V

    .line 464
    goto :goto_31

    .line 465
    :cond_50
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->e()V

    .line 467
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    .line 469
    :cond_56
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/d;->o()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    .line 470
    iget v0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->b:I

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(I)V

    .line 471
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    .line 472
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_78

    .line 473
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/d;->p()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    .line 474
    iget-object p2, p2, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/pro/bp;->a(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    .line 477
    :cond_78
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->d()V

    .line 478
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->b()V

    .line 479
    return-void
.end method
