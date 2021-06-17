.class Lcom/umeng/commonsdk/statistics/proto/c$a;
.super Lcom/umeng/analytics/pro/bz;
.source "IdTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/analytics/pro/bz<",
        "Lcom/umeng/commonsdk/statistics/proto/c;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 410
    invoke-direct {p0}, Lcom/umeng/analytics/pro/bz;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/proto/c$1;)V
    .registers 2

    .line 410
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/c$a;-><init>()V

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

    .line 410
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/c;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/c$a;->b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/commonsdk/statistics/proto/c;)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/commonsdk/statistics/proto/c;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 415
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->j()Lcom/umeng/analytics/pro/bu;

    .line 417
    :goto_3
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->l()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    .line 418
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bk;->b:B

    if-nez v1, :cond_13

    .line 419
    nop

    .line 473
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->k()V

    .line 477
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/c;->n()V

    .line 478
    return-void

    .line 421
    :cond_13
    iget-short v1, v0, Lcom/umeng/analytics/pro/bk;->c:S

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_ae

    .line 469
    iget-byte v0, v0, Lcom/umeng/analytics/pro/bk;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    goto/16 :goto_a9

    .line 461
    :pswitch_21
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bk;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_32

    .line 462
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    .line 463
    invoke-virtual {p2, v3}, Lcom/umeng/commonsdk/statistics/proto/c;->c(Z)V

    goto/16 :goto_a9

    .line 465
    :cond_32
    iget-byte v0, v0, Lcom/umeng/analytics/pro/bk;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    .line 467
    goto/16 :goto_a9

    .line 443
    :pswitch_39
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bk;->b:B

    const/16 v4, 0xf

    if-ne v1, v4, :cond_68

    .line 445
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->p()Lcom/umeng/analytics/pro/bl;

    move-result-object v0

    .line 446
    new-instance v1, Ljava/util/ArrayList;

    iget v4, v0, Lcom/umeng/analytics/pro/bl;->b:I

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p2, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    .line 447
    nop

    :goto_4d
    iget v1, v0, Lcom/umeng/analytics/pro/bl;->b:I

    if-ge v2, v1, :cond_61

    .line 449
    new-instance v1, Lcom/umeng/commonsdk/statistics/proto/a;

    invoke-direct {v1}, Lcom/umeng/commonsdk/statistics/proto/a;-><init>()V

    .line 450
    invoke-virtual {v1, p1}, Lcom/umeng/commonsdk/statistics/proto/a;->read(Lcom/umeng/analytics/pro/bp;)V

    .line 451
    iget-object v4, p2, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 453
    :cond_61
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->q()V

    .line 455
    invoke-virtual {p2, v3}, Lcom/umeng/commonsdk/statistics/proto/c;->b(Z)V

    goto :goto_a9

    .line 457
    :cond_68
    iget-byte v0, v0, Lcom/umeng/analytics/pro/bk;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    .line 459
    goto :goto_a9

    .line 423
    :pswitch_6e
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bk;->b:B

    const/16 v4, 0xd

    if-ne v1, v4, :cond_a3

    .line 425
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->n()Lcom/umeng/analytics/pro/bm;

    move-result-object v0

    .line 426
    new-instance v1, Ljava/util/HashMap;

    iget v4, v0, Lcom/umeng/analytics/pro/bm;->c:I

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p2, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    .line 427
    nop

    :goto_84
    iget v1, v0, Lcom/umeng/analytics/pro/bm;->c:I

    if-ge v2, v1, :cond_9c

    .line 430
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->z()Ljava/lang/String;

    move-result-object v1

    .line 431
    new-instance v4, Lcom/umeng/commonsdk/statistics/proto/b;

    invoke-direct {v4}, Lcom/umeng/commonsdk/statistics/proto/b;-><init>()V

    .line 432
    invoke-virtual {v4, p1}, Lcom/umeng/commonsdk/statistics/proto/b;->read(Lcom/umeng/analytics/pro/bp;)V

    .line 433
    iget-object v5, p2, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    add-int/lit8 v2, v2, 0x1

    goto :goto_84

    .line 435
    :cond_9c
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->o()V

    .line 437
    invoke-virtual {p2, v3}, Lcom/umeng/commonsdk/statistics/proto/c;->a(Z)V

    goto :goto_a9

    .line 439
    :cond_a3
    iget-byte v0, v0, Lcom/umeng/analytics/pro/bk;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    .line 441
    nop

    .line 471
    :goto_a9
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->m()V

    goto/16 :goto_3

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_39
        :pswitch_21
    .end packed-switch
.end method

.method public synthetic b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aq;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 410
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/c;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/c$a;->a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/commonsdk/statistics/proto/c;)V

    return-void
.end method

.method public b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/commonsdk/statistics/proto/c;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 482
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/c;->n()V

    .line 484
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/c;->o()Lcom/umeng/analytics/pro/bu;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bu;)V

    .line 485
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    const/16 v1, 0xc

    if-eqz v0, :cond_56

    .line 486
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/c;->p()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    .line 488
    new-instance v0, Lcom/umeng/analytics/pro/bm;

    const/16 v2, 0xb

    iget-object v3, p2, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    .line 489
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v0, v2, v1, v3}, Lcom/umeng/analytics/pro/bm;-><init>(BBI)V

    .line 488
    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bm;)V

    .line 490
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 491
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/umeng/analytics/pro/bp;->a(Ljava/lang/String;)V

    .line 492
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/commonsdk/statistics/proto/b;

    invoke-virtual {v2, p1}, Lcom/umeng/commonsdk/statistics/proto/b;->write(Lcom/umeng/analytics/pro/bp;)V

    .line 493
    goto :goto_31

    .line 494
    :cond_50
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->e()V

    .line 496
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    .line 498
    :cond_56
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    if-eqz v0, :cond_91

    .line 499
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/c;->j()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 500
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/c;->q()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    .line 502
    new-instance v0, Lcom/umeng/analytics/pro/bl;

    iget-object v2, p2, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    .line 503
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/umeng/analytics/pro/bl;-><init>(BI)V

    .line 502
    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bl;)V

    .line 504
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/commonsdk/statistics/proto/a;

    .line 505
    invoke-virtual {v1, p1}, Lcom/umeng/commonsdk/statistics/proto/a;->write(Lcom/umeng/analytics/pro/bp;)V

    .line 506
    goto :goto_7b

    .line 507
    :cond_8b
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->f()V

    .line 509
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    .line 512
    :cond_91
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_aa

    .line 513
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/c;->m()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 514
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/c;->r()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    .line 515
    iget-object p2, p2, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/pro/bp;->a(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    .line 519
    :cond_aa
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->d()V

    .line 520
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->b()V

    .line 521
    return-void
.end method
