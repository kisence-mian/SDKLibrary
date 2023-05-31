.class final Lcom/anythink/core/b/d$9$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/d$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/b/d$9;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/d$9;)V
    .registers 2

    .prologue
    .line 481
    iput-object p1, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 15

    .prologue
    const/4 v10, 0x0

    .line 486
    iget-object v0, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v0, v0, Lcom/anythink/core/b/d$9;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_c
    if-ltz v3, :cond_ae

    .line 487
    iget-object v0, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v0, v0, Lcom/anythink/core/b/d$9;->f:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/c/c$b;

    .line 488
    invoke-static {}, Lcom/anythink/core/b/a;->a()Lcom/anythink/core/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v2, v2, Lcom/anythink/core/b/d$9;->c:Ljava/lang/String;

    .line 1686
    iget-object v4, v0, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    .line 488
    invoke-virtual {v1, v2, v4}, Lcom/anythink/core/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/b/c/o;

    move-result-object v1

    .line 489
    if-eqz v1, :cond_67

    invoke-virtual {v1}, Lcom/anythink/core/b/c/o;->a()Lcom/anythink/core/b/c/a;

    move-result-object v1

    .line 490
    :goto_2c
    if-eqz v1, :cond_63

    invoke-virtual {v1}, Lcom/anythink/core/b/c/a;->a()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-virtual {v1}, Lcom/anythink/core/b/c/a;->j()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 492
    :try_start_3a
    invoke-virtual {v1}, Lcom/anythink/core/b/c/a;->h()Lcom/anythink/core/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/a/b;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/c/b;->m()D

    move-result-wide v4

    .line 1722
    iput-wide v4, v0, Lcom/anythink/core/c/c$b;->l:D

    .line 2650
    const/4 v1, 0x3

    iput v1, v0, Lcom/anythink/core/c/c$b;->p:I

    .line 495
    iget-object v1, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v1, v1, Lcom/anythink/core/b/d$9;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 498
    iget-object v1, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v1, v1, Lcom/anythink/core/b/d$9;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_69

    .line 499
    iget-object v1, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v1, v1, Lcom/anythink/core/b/d$9;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    :cond_63
    :goto_63
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_c

    .line 489
    :cond_67
    const/4 v1, 0x0

    goto :goto_2c

    :cond_69
    move v2, v10

    .line 501
    :goto_6a
    iget-object v1, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v1, v1, Lcom/anythink/core/b/d$9;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_63

    .line 502
    iget-object v1, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v1, v1, Lcom/anythink/core/b/d$9;->g:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/c/c$b;

    .line 2718
    iget-wide v4, v1, Lcom/anythink/core/c/c$b;->l:D

    .line 3718
    iget-wide v6, v0, Lcom/anythink/core/c/c$b;->l:D

    .line 503
    cmpg-double v1, v4, v6

    if-gtz v1, :cond_97

    .line 504
    iget-object v1, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v1, v1, Lcom/anythink/core/b/d$9;->g:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_8d} :catch_8e

    goto :goto_63

    .line 515
    :catch_8e
    move-exception v0

    const-string v0, "CommonAdManager"

    const-string v1, "Cache Error, need to bid."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 507
    :cond_97
    :try_start_97
    iget-object v1, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v1, v1, Lcom/anythink/core/b/d$9;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v2, v1, :cond_aa

    .line 508
    iget-object v1, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v1, v1, Lcom/anythink/core/b/d$9;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_aa} :catch_8e

    .line 501
    :cond_aa
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_6a

    .line 521
    :cond_ae
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 531
    :try_start_b2
    invoke-static {}, Lcom/anythink/core/b/g;->a()Lcom/anythink/core/b/g$b;

    move-result-object v0

    .line 532
    if-nez v0, :cond_154

    .line 533
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "anythink_headbidding.aar doesn\'t exist"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c0
    .catch Ljava/lang/Throwable; {:try_start_b2 .. :try_end_c0} :catch_c0

    .line 582
    :catch_c0
    move-exception v0

    iget-object v0, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-boolean v0, v0, Lcom/anythink/core/b/d$9;->i:Z

    if-eqz v0, :cond_eb

    .line 583
    iget-object v0, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v1, v0, Lcom/anythink/core/b/d$9;->k:Lcom/anythink/core/b/d;

    iget-object v0, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v2, v0, Lcom/anythink/core/b/d$9;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v3, v0, Lcom/anythink/core/b/d$9;->h:Lcom/anythink/core/c/c;

    iget-object v0, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v0, v0, Lcom/anythink/core/b/d$9;->e:Lcom/anythink/core/b/c/b;

    invoke-virtual {v0}, Lcom/anythink/core/b/c/b;->v()I

    move-result v6

    iget-object v0, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v7, v0, Lcom/anythink/core/b/d$9;->g:Ljava/util/List;

    iget-object v0, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v8, v0, Lcom/anythink/core/b/d$9;->f:Ljava/util/List;

    iget-object v0, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v9, v0, Lcom/anythink/core/b/d$9;->j:Ljava/util/List;

    move-wide v4, v12

    invoke-virtual/range {v1 .. v9}, Lcom/anythink/core/b/d;->a(Ljava/lang/String;Lcom/anythink/core/c/c;JILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 587
    :cond_eb
    iget-object v0, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v0, v0, Lcom/anythink/core/b/d$9;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v1, v1, Lcom/anythink/core/b/d$9;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 588
    iget-object v0, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v0, v0, Lcom/anythink/core/b/d$9;->h:Lcom/anythink/core/c/c;

    iget-object v1, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v1, v1, Lcom/anythink/core/b/d$9;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/c;->a(Ljava/util/List;)V

    .line 590
    iget-object v0, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v0, v0, Lcom/anythink/core/b/d$9;->e:Lcom/anythink/core/b/c/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/c/b;->a(Z)V

    .line 591
    iget-object v0, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v0, v0, Lcom/anythink/core/b/d$9;->k:Lcom/anythink/core/b/d;

    iget-object v0, v0, Lcom/anythink/core/b/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v0

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v2, v2, Lcom/anythink/core/b/d$9;->e:Lcom/anythink/core/b/c/b;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;)V

    .line 593
    iget-object v0, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v0, v0, Lcom/anythink/core/b/d$9;->k:Lcom/anythink/core/b/d;

    iget-object v1, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v1, v1, Lcom/anythink/core/b/d$9;->h:Lcom/anythink/core/c/c;

    iget-object v2, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v2, v2, Lcom/anythink/core/b/d$9;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v3, v3, Lcom/anythink/core/b/d$9;->e:Lcom/anythink/core/b/c/b;

    invoke-virtual {v3}, Lcom/anythink/core/b/c/b;->v()I

    move-result v3

    iget-object v4, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v4, v4, Lcom/anythink/core/b/d$9;->g:Ljava/util/List;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/anythink/core/b/d;->a(Lcom/anythink/core/b/d;Lcom/anythink/core/c/c;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 594
    iget-object v1, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v1, v1, Lcom/anythink/core/b/d$9;->b:Lcom/anythink/core/b/d$a;

    if-eqz v1, :cond_14d

    .line 595
    iget-object v1, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v1, v1, Lcom/anythink/core/b/d$9;->b:Lcom/anythink/core/b/d$a;

    iget-object v2, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v2, v2, Lcom/anythink/core/b/d$9;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v3, v3, Lcom/anythink/core/b/d$9;->h:Lcom/anythink/core/c/c;

    invoke-interface {v1, v2, v3, v0}, Lcom/anythink/core/b/d$a;->a(Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/util/List;)V

    .line 598
    :cond_14d
    iget-object v0, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v0, v0, Lcom/anythink/core/b/d$9;->k:Lcom/anythink/core/b/d;

    iput-boolean v10, v0, Lcom/anythink/core/b/d;->i:Z

    .line 600
    :goto_153
    return-void

    .line 539
    :cond_154
    :try_start_154
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/anythink/core/b/g$b;->setTestMode(Z)V

    .line 540
    iget-object v1, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v1, v1, Lcom/anythink/core/b/d$9;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v2, v2, Lcom/anythink/core/b/d$9;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v3, v3, Lcom/anythink/core/b/d$9;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v4, v4, Lcom/anythink/core/b/d$9;->h:Lcom/anythink/core/c/c;

    invoke-virtual {v4}, Lcom/anythink/core/c/c;->s()I

    move-result v4

    iget-object v5, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v5, v5, Lcom/anythink/core/b/d$9;->g:Ljava/util/List;

    iget-object v6, p0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v6, v6, Lcom/anythink/core/b/d$9;->f:Ljava/util/List;

    invoke-interface/range {v0 .. v6}, Lcom/anythink/core/b/g$b;->initHbInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    .line 541
    new-instance v1, Lcom/anythink/core/b/d$9$1$1;

    invoke-direct {v1, p0, v12, v13}, Lcom/anythink/core/b/d$9$1$1;-><init>(Lcom/anythink/core/b/d$9$1;J)V

    invoke-interface {v0, v1}, Lcom/anythink/core/b/g$b;->startHeadBiddingRequest(Lcom/anythink/core/b/g$a;)V
    :try_end_182
    .catch Ljava/lang/Throwable; {:try_start_154 .. :try_end_182} :catch_c0

    goto :goto_153
.end method
