.class public abstract Lcom/anythink/core/b/f;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field protected b:Landroid/content/Context;

.field protected c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/anythink/core/b/a/b;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/anythink/core/b/a/b;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Z

.field protected i:I

.field protected j:Z

.field protected k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected l:Z

.field protected m:Z

.field protected n:Ljava/lang/String;

.field protected o:Ljava/lang/String;

.field protected p:Z

.field protected q:I

.field protected r:I

.field protected s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/c/c$b;",
            ">;"
        }
    .end annotation
.end field

.field protected t:Lcom/anythink/core/c/c;

.field protected u:Ljava/lang/String;

.field protected v:Ljava/lang/String;

.field protected w:Ljava/lang/String;

.field protected x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/anythink/core/api/ATMediationSetting;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/lang/Runnable;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/core/b/f;->n:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/core/b/f;->o:Ljava/lang/String;

    .line 62
    new-instance v0, Lcom/anythink/core/b/f$1;

    invoke-direct {v0, p0}, Lcom/anythink/core/b/f$1;-><init>(Lcom/anythink/core/b/f;)V

    iput-object v0, p0, Lcom/anythink/core/b/f;->y:Ljava/lang/Runnable;

    .line 112
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/anythink/core/b/f;->c:Ljava/lang/ref/WeakReference;

    .line 113
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/b/f;->b:Landroid/content/Context;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/b/f;->d:Ljava/util/HashMap;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/b/f;->f:Ljava/util/HashMap;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/b/f;->k:Ljava/util/HashMap;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/b/f;->g:Ljava/util/HashMap;

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/core/b/f;->j:Z

    .line 119
    return-void
.end method

.method private a(Lcom/anythink/core/b/a/b;Lcom/anythink/core/c/c$b;J)Ljava/lang/Runnable;
    .registers 8

    .prologue
    .line 604
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-nez v0, :cond_8

    .line 605
    const/4 v0, 0x0

    .line 634
    :goto_7
    return-object v0

    .line 607
    :cond_8
    new-instance v0, Lcom/anythink/core/b/f$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/anythink/core/b/f$3;-><init>(Lcom/anythink/core/b/f;Lcom/anythink/core/c/c$b;Lcom/anythink/core/b/a/b;)V

    .line 633
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v1

    invoke-virtual {v1, v0, p3, p4}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;J)V

    goto :goto_7
.end method

.method private a(II)V
    .registers 16

    .prologue
    const/4 v10, 0x0

    const/4 v12, 0x1

    .line 502
    iput p1, p0, Lcom/anythink/core/b/f;->q:I

    .line 503
    iput p2, p0, Lcom/anythink/core/b/f;->r:I

    .line 506
    const-string v2, ""

    iput-object v2, p0, Lcom/anythink/core/b/f;->w:Ljava/lang/String;

    .line 507
    const/4 v2, 0x0

    move v3, v2

    :goto_c
    iget-object v2, p0, Lcom/anythink/core/b/f;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_5d

    .line 508
    if-lez v3, :cond_2d

    .line 509
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/anythink/core/b/f;->w:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/core/b/f;->w:Ljava/lang/String;

    .line 511
    :cond_2d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/core/b/f;->s:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/c/c$b;

    iget v2, v2, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 512
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/anythink/core/b/f;->w:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/core/b/f;->w:Ljava/lang/String;

    .line 507
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_c

    :cond_5d
    move v11, p1

    .line 518
    :goto_5e
    add-int v2, p1, p2

    if-ge v11, v2, :cond_6a

    .line 520
    :try_start_62
    iget-object v2, p0, Lcom/anythink/core/b/f;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v11, v2, :cond_6b

    .line 596
    :cond_6a
    :goto_6a
    return-void

    .line 523
    :cond_6b
    iget-object v2, p0, Lcom/anythink/core/b/f;->s:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/anythink/core/c/c$b;

    move-object v9, v0

    .line 524
    if-nez v9, :cond_7b

    .line 518
    :goto_77
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_5e

    .line 528
    :cond_7b
    iget-object v2, p0, Lcom/anythink/core/b/f;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/core/b/f;->u:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/core/b/f;->n:Ljava/lang/String;

    iget-object v5, p0, Lcom/anythink/core/b/f;->t:Lcom/anythink/core/c/c;

    iget-object v6, p0, Lcom/anythink/core/b/f;->w:Ljava/lang/String;

    iget v7, p0, Lcom/anythink/core/b/f;->r:I

    iget-boolean v8, p0, Lcom/anythink/core/b/f;->p:Z

    invoke-static/range {v2 .. v8}, Lcom/anythink/core/b/g/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/lang/String;IZ)Lcom/anythink/core/b/c/b;

    move-result-object v3

    .line 530
    invoke-static {}, Lcom/anythink/core/b/a;->a()Lcom/anythink/core/b/a;

    move-result-object v2

    iget-object v4, p0, Lcom/anythink/core/b/f;->u:Ljava/lang/String;

    iget-object v5, v9, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/anythink/core/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/b/c/o;

    move-result-object v2

    .line 531
    if-eqz v2, :cond_b3

    invoke-virtual {v2}, Lcom/anythink/core/b/c/o;->a()Lcom/anythink/core/b/c/a;

    move-result-object v2

    .line 532
    :goto_9f
    if-eqz v2, :cond_b5

    invoke-virtual {v2}, Lcom/anythink/core/b/c/a;->a()Z

    move-result v4

    if-eqz v4, :cond_b5

    invoke-virtual {v2}, Lcom/anythink/core/b/c/a;->j()Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 533
    invoke-direct {p0}, Lcom/anythink/core/b/f;->f()V

    goto :goto_77

    :catch_b1
    move-exception v2

    goto :goto_77

    :cond_b3
    move-object v2, v10

    .line 531
    goto :goto_9f

    .line 537
    :cond_b5
    invoke-static {v9}, Lcom/anythink/core/b/g/h;->a(Lcom/anythink/core/c/c$b;)Lcom/anythink/core/b/a/b;

    move-result-object v4

    .line 538
    if-nez v4, :cond_dd

    .line 539
    const-string v2, "2002"

    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v9, Lcom/anythink/core/c/c$b;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not exit!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    .line 540
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lcom/anythink/core/b/f;->a(Lcom/anythink/core/b/a/b;Lcom/anythink/core/api/AdError;)V

    goto :goto_77

    .line 544
    :cond_dd
    iget v2, v9, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v4}, Lcom/anythink/core/b/a/b;->getSDKVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/anythink/core/b/g/c;->a(ILjava/lang/String;)V

    .line 546
    iget-object v2, p0, Lcom/anythink/core/b/f;->e:Ljava/util/HashMap;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    invoke-static {v4, v3, v9}, Lcom/anythink/core/b/g/m;->a(Lcom/anythink/core/b/a/b;Lcom/anythink/core/b/c/b;Lcom/anythink/core/c/c$b;)Lcom/anythink/core/b/c/b;

    move-result-object v2

    .line 551
    iget-object v3, p0, Lcom/anythink/core/b/f;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v2}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;)V

    .line 553
    sget-object v2, Lcom/anythink/core/b/a/d$e;->a:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/b/a/d$e;->h:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v2, v3, v5}, Lcom/anythink/core/b/a/b;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-virtual {v9}, Lcom/anythink/core/c/c$b;->b()J

    move-result-wide v2

    invoke-direct {p0, v4, v9, v2, v3}, Lcom/anythink/core/b/f;->a(Lcom/anythink/core/b/a/b;Lcom/anythink/core/c/c$b;J)Ljava/lang/Runnable;

    move-result-object v2

    .line 559
    if-eqz v2, :cond_115

    .line 560
    iget-object v3, p0, Lcom/anythink/core/b/f;->d:Ljava/util/HashMap;

    iget-object v5, v9, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5762
    :cond_115
    iget-wide v2, v9, Lcom/anythink/core/c/c$b;->t:J

    .line 563
    invoke-direct {p0, v4, v9, v2, v3}, Lcom/anythink/core/b/f;->a(Lcom/anythink/core/b/a/b;Lcom/anythink/core/c/c$b;J)Ljava/lang/Runnable;

    move-result-object v2

    .line 564
    if-eqz v2, :cond_124

    .line 565
    iget-object v3, p0, Lcom/anythink/core/b/f;->f:Ljava/util/HashMap;

    iget-object v5, v9, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    :cond_124
    iget-object v2, p0, Lcom/anythink/core/b/f;->k:Ljava/util/HashMap;

    iget-object v3, v9, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    iget-object v2, p0, Lcom/anythink/core/b/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_14a

    .line 572
    const-string v2, "4002"

    const-string v3, ""

    const-string v5, ""

    invoke-static {v2, v3, v5}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    invoke-virtual {p0, v4, v2}, Lcom/anythink/core/b/f;->a(Lcom/anythink/core/b/a/b;Lcom/anythink/core/api/AdError;)V

    goto/16 :goto_6a

    .line 576
    :cond_14a
    iget-object v2, p0, Lcom/anythink/core/b/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_15f

    .line 577
    iget-object v2, p0, Lcom/anythink/core/b/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v4, v2}, Lcom/anythink/core/b/a/b;->refreshActivityContext(Landroid/app/Activity;)V
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_15f} :catch_b1

    .line 582
    :cond_15f
    :try_start_15f
    iget v2, v9, Lcom/anythink/core/c/c$b;->m:I

    if-ne v2, v12, :cond_16c

    .line 583
    invoke-static {}, Lcom/anythink/core/b/d/a;->a()Lcom/anythink/core/b/d/a;

    move-result-object v2

    iget-object v3, v9, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/anythink/core/b/d/a;->a(Ljava/lang/String;)V
    :try_end_16c
    .catch Ljava/lang/Throwable; {:try_start_15f .. :try_end_16c} :catch_17d
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_16c} :catch_b1

    .line 589
    :cond_16c
    :goto_16c
    :try_start_16c
    iget-object v2, p0, Lcom/anythink/core/b/f;->u:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/core/b/f;->t:Lcom/anythink/core/c/c;

    invoke-virtual {v3}, Lcom/anythink/core/c/c;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v9, v3}, Lcom/anythink/core/c/c;->a(Ljava/lang/String;Lcom/anythink/core/c/c$b;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v4, v9, v2}, Lcom/anythink/core/b/f;->b(Lcom/anythink/core/b/a/b;Lcom/anythink/core/c/c$b;Ljava/util/Map;)V
    :try_end_17b
    .catch Ljava/lang/Exception; {:try_start_16c .. :try_end_17b} :catch_b1

    goto/16 :goto_77

    :catch_17d
    move-exception v2

    goto :goto_16c
.end method

.method private a(J)V
    .registers 6

    .prologue
    .line 643
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/b/f;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;J)V

    .line 644
    return-void
.end method

.method static synthetic a(Lcom/anythink/core/b/f;)V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/anythink/core/b/f;->f()V

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/b/f;II)V
    .registers 3

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/anythink/core/b/f;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/b/f;Lcom/anythink/core/b/a/b;Lcom/anythink/core/c/c$b;Ljava/util/Map;)V
    .registers 4

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/core/b/f;->b(Lcom/anythink/core/b/a/b;Lcom/anythink/core/c/c$b;Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/c/c$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 420
    iget-object v0, p0, Lcom/anythink/core/b/f;->t:Lcom/anythink/core/c/c;

    invoke-virtual {v0}, Lcom/anythink/core/c/c;->B()Lcom/anythink/core/b/c/m;

    move-result-object v2

    .line 421
    if-nez v2, :cond_9

    .line 490
    :cond_8
    :goto_8
    return-void

    .line 425
    :cond_9
    iget v3, v2, Lcom/anythink/core/b/c/m;->c:I

    .line 426
    const/4 v1, 0x0

    .line 427
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/c/c$b;

    .line 428
    iget v5, v0, Lcom/anythink/core/c/c$b;->b:I

    if-ne v5, v3, :cond_10

    .line 434
    :goto_20
    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/anythink/core/b/f;->k:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 440
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v1

    new-instance v3, Lcom/anythink/core/b/f$2;

    invoke-direct {v3, p0, v0}, Lcom/anythink/core/b/f$2;-><init>(Lcom/anythink/core/b/f;Lcom/anythink/core/c/c$b;)V

    iget-wide v4, v2, Lcom/anythink/core/b/c/m;->b:J

    invoke-virtual {v1, v3, v4, v5}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;J)V

    goto :goto_8

    :cond_3b
    move-object v0, v1

    goto :goto_20
.end method

.method private b(Lcom/anythink/core/b/a/b;Lcom/anythink/core/c/c$b;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/b/a/b;",
            "Lcom/anythink/core/c/c$b;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 715
    iget v0, p2, Lcom/anythink/core/c/c$b;->b:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1e

    .line 716
    iget-object v0, p0, Lcom/anythink/core/b/f;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/core/b/f;->v:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/b/f;->u:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/core/b/f;->t:Lcom/anythink/core/c/c;

    invoke-virtual {v3}, Lcom/anythink/core/c/c;->s()I

    move-result v3

    invoke-static {v0, v1, v2, v3, p2}, Lcom/anythink/core/b/g/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/anythink/core/c/c$b;)Lorg/json/JSONObject;

    move-result-object v0

    .line 717
    const-string v1, "tp_info"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    :cond_1e
    invoke-virtual {p0, p1, p2, p3}, Lcom/anythink/core/b/f;->a(Lcom/anythink/core/b/a/b;Lcom/anythink/core/c/c$b;Ljava/util/Map;)V

    .line 721
    return-void
.end method

.method private b(Z)V
    .registers 12

    .prologue
    const/4 v7, 0x1

    .line 244
    iput-boolean v7, p0, Lcom/anythink/core/b/f;->h:Z

    .line 245
    iput-boolean v7, p0, Lcom/anythink/core/b/f;->l:Z

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/anythink/core/b/f;->a:J

    sub-long v8, v0, v2

    .line 248
    iget-object v0, p0, Lcom/anythink/core/b/f;->v:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/core/b/f;->u:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/b/f;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/core/b/f;->t:Lcom/anythink/core/c/c;

    iget-object v4, p0, Lcom/anythink/core/b/f;->w:Ljava/lang/String;

    iget v5, p0, Lcom/anythink/core/b/f;->r:I

    iget-boolean v6, p0, Lcom/anythink/core/b/f;->p:Z

    invoke-static/range {v0 .. v6}, Lcom/anythink/core/b/g/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/lang/String;IZ)Lcom/anythink/core/b/c/b;

    move-result-object v0

    .line 249
    invoke-virtual {v0, v7}, Lcom/anythink/core/b/c/b;->a(Z)V

    .line 250
    invoke-virtual {v0, v8, v9}, Lcom/anythink/core/b/c/b;->b(J)V

    .line 251
    if-eqz p1, :cond_2b

    .line 252
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/c/b;->p(I)V

    .line 256
    :cond_2b
    iget-object v1, p0, Lcom/anythink/core/b/f;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;)V

    .line 258
    iget-object v0, p0, Lcom/anythink/core/b/f;->u:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/core/b/d;->a(Ljava/lang/String;)Lcom/anythink/core/b/d;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_41

    .line 260
    invoke-virtual {v0}, Lcom/anythink/core/b/d;->b()V

    .line 263
    :cond_41
    const-string v0, "4"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/core/b/f;->t:Lcom/anythink/core/c/c;

    invoke-virtual {v2}, Lcom/anythink/core/c/c;->s()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    .line 264
    invoke-static {}, Lcom/anythink/core/b/a;->a()Lcom/anythink/core/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/b/f;->s:Ljava/util/List;

    iget-object v2, p0, Lcom/anythink/core/b/f;->u:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/core/b/f;->t:Lcom/anythink/core/c/c;

    iget-object v4, p0, Lcom/anythink/core/b/f;->v:Ljava/lang/String;

    iget-object v5, p0, Lcom/anythink/core/b/f;->n:Ljava/lang/String;

    iget-object v6, p0, Lcom/anythink/core/b/f;->w:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/anythink/core/b/f;->p:Z

    invoke-virtual/range {v0 .. v7}, Lcom/anythink/core/b/a;->a(Ljava/util/List;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 269
    :cond_71
    iget-object v0, p0, Lcom/anythink/core/b/f;->t:Lcom/anythink/core/c/c;

    iget-object v1, p0, Lcom/anythink/core/b/f;->s:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/c;->b(Ljava/util/List;)V

    .line 270
    invoke-virtual {p0}, Lcom/anythink/core/b/f;->a()V

    .line 271
    return-void
.end method

.method private f()V
    .registers 2

    .prologue
    .line 231
    iget v0, p0, Lcom/anythink/core/b/f;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/anythink/core/b/f;->i:I

    .line 232
    iget-boolean v0, p0, Lcom/anythink/core/b/f;->h:Z

    if-nez v0, :cond_e

    .line 234
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/anythink/core/b/f;->b(Z)V

    .line 236
    :cond_e
    return-void
.end method

.method private g()Z
    .registers 3

    .prologue
    .line 377
    iget-object v0, p0, Lcom/anythink/core/b/f;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 378
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 380
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    .line 381
    const/4 v0, 0x0

    .line 384
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x1

    goto :goto_1d
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Lcom/anythink/core/api/AdError;)V
.end method

.method public final a(Lcom/anythink/core/b/a/b;)V
    .registers 8

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/anythink/core/b/f;->j:Z

    if-eqz v0, :cond_5

    .line 135
    :goto_4
    return-void

    .line 132
    :cond_5
    invoke-virtual {p1}, Lcom/anythink/core/b/a/b;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v1

    .line 133
    iget-object v0, p0, Lcom/anythink/core/b/f;->k:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/b/c/b;->a(J)V

    goto :goto_4
.end method

.method public final a(Lcom/anythink/core/b/a/b;Lcom/anythink/core/api/AdError;)V
    .registers 11

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 281
    iget-boolean v0, p0, Lcom/anythink/core/b/f;->j:Z

    if-eqz v0, :cond_7

    .line 372
    :goto_6
    return-void

    .line 285
    :cond_7
    if-eqz p1, :cond_ab

    .line 286
    invoke-virtual {p1}, Lcom/anythink/core/b/a/b;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v3

    .line 289
    invoke-static {}, Lcom/anythink/core/b/b;->a()Lcom/anythink/core/b/b;

    move-result-object v0

    invoke-virtual {v3}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 5042
    iget-object v0, v0, Lcom/anythink/core/b/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object v0, p0, Lcom/anythink/core/b/f;->k:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 292
    invoke-virtual {v3}, Lcom/anythink/core/b/c/b;->o()Z

    move-result v0

    if-nez v0, :cond_107

    .line 294
    iget-object v0, p0, Lcom/anythink/core/b/f;->d:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 295
    if-eqz v0, :cond_4d

    .line 296
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/anythink/core/b/a/e;->c(Ljava/lang/Runnable;)V

    .line 298
    :cond_4d
    iget-object v0, p0, Lcom/anythink/core/b/f;->f:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 299
    if-eqz v0, :cond_62

    .line 300
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/anythink/core/b/a/e;->c(Ljava/lang/Runnable;)V

    .line 304
    :cond_62
    iget-object v0, p0, Lcom/anythink/core/b/f;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/anythink/core/b/f;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 5359
    iput v1, v3, Lcom/anythink/core/b/c/b;->l:I

    .line 308
    :cond_7a
    iget-object v0, p0, Lcom/anythink/core/b/f;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    iget-object v0, p0, Lcom/anythink/core/b/f;->e:Ljava/util/HashMap;

    .line 309
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 314
    iget-object v0, p0, Lcom/anythink/core/b/f;->e:Ljava/util/HashMap;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/anythink/core/b/a/d$e;->b:Ljava/lang/String;

    sget-object v6, Lcom/anythink/core/b/a/d$e;->g:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v0, v6, v7}, Lcom/anythink/core/b/a/b;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-static {v3, v2, p2, v4, v5}, Lcom/anythink/core/b/f/c;->a(Lcom/anythink/core/b/c/b;ILcom/anythink/core/api/AdError;J)V

    .line 335
    :cond_ab
    monitor-enter p0

    .line 336
    :try_start_ac
    iget v0, p0, Lcom/anythink/core/b/f;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/anythink/core/b/f;->i:I

    .line 338
    invoke-direct {p0}, Lcom/anythink/core/b/f;->g()Z

    move-result v0

    if-eqz v0, :cond_160

    .line 340
    iget-object v0, p0, Lcom/anythink/core/b/f;->u:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/core/b/d;->a(Ljava/lang/String;)Lcom/anythink/core/b/d;

    move-result-object v0

    if-eqz v0, :cond_d5

    iget v0, p0, Lcom/anythink/core/b/f;->i:I

    iget-object v2, p0, Lcom/anythink/core/b/f;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_d5

    .line 341
    iget-object v0, p0, Lcom/anythink/core/b/f;->u:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/core/b/d;->a(Ljava/lang/String;)Lcom/anythink/core/b/d;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/core/b/f;->v:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/anythink/core/b/d;->b(Ljava/lang/String;)V

    :cond_d5
    move v0, v1

    .line 345
    :goto_d6
    iget-boolean v1, p0, Lcom/anythink/core/b/f;->h:Z

    if-nez v1, :cond_101

    .line 347
    iget v1, p0, Lcom/anythink/core/b/f;->i:I

    iget v2, p0, Lcom/anythink/core/b/f;->q:I

    iget v3, p0, Lcom/anythink/core/b/f;->r:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_ed

    iget v1, p0, Lcom/anythink/core/b/f;->i:I

    iget-object v2, p0, Lcom/anythink/core/b/f;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_101

    .line 349
    :cond_ed
    iget v1, p0, Lcom/anythink/core/b/f;->i:I

    iget-object v2, p0, Lcom/anythink/core/b/f;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_11c

    .line 351
    iget v0, p0, Lcom/anythink/core/b/f;->q:I

    iget v1, p0, Lcom/anythink/core/b/f;->r:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/anythink/core/b/f;->r:I

    invoke-direct {p0, v0, v1}, Lcom/anythink/core/b/f;->a(II)V

    .line 372
    :cond_101
    :goto_101
    monitor-exit p0

    goto/16 :goto_6

    :catchall_104
    move-exception v0

    monitor-exit p0
    :try_end_106
    .catchall {:try_start_ac .. :try_end_106} :catchall_104

    throw v0

    .line 324
    :cond_107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    invoke-static {v3, v2, p2, v0, v1}, Lcom/anythink/core/b/f/c;->a(Lcom/anythink/core/b/c/b;ILcom/anythink/core/api/AdError;J)V

    .line 326
    sget-object v0, Lcom/anythink/core/b/a/d$e;->b:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/b/a/d$e;->g:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/anythink/core/b/a/b;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 353
    :cond_11c
    const/4 v1, 0x1

    :try_start_11d
    iput-boolean v1, p0, Lcom/anythink/core/b/f;->l:Z

    .line 354
    if-nez v0, :cond_124

    .line 355
    monitor-exit p0

    goto/16 :goto_6

    .line 357
    :cond_124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/b/f;->h:Z

    .line 359
    iget-object v0, p0, Lcom/anythink/core/b/f;->v:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/core/b/f;->u:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/b/f;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/core/b/f;->t:Lcom/anythink/core/c/c;

    iget-object v4, p0, Lcom/anythink/core/b/f;->w:Ljava/lang/String;

    iget v5, p0, Lcom/anythink/core/b/f;->r:I

    iget-boolean v6, p0, Lcom/anythink/core/b/f;->p:Z

    invoke-static/range {v0 .. v6}, Lcom/anythink/core/b/g/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/lang/String;IZ)Lcom/anythink/core/b/c/b;

    move-result-object v1

    .line 360
    if-eqz p2, :cond_14f

    invoke-virtual {p2}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v0

    :goto_13f
    invoke-static {v1, v0}, Lcom/anythink/core/b/f/c;->a(Lcom/anythink/core/b/c/b;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/anythink/core/b/f;->t:Lcom/anythink/core/c/c;

    iget-object v1, p0, Lcom/anythink/core/b/f;->s:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/c;->b(Ljava/util/List;)V

    .line 363
    if-eqz p2, :cond_152

    .line 364
    invoke-virtual {p0, p2}, Lcom/anythink/core/b/f;->a(Lcom/anythink/core/api/AdError;)V

    goto :goto_101

    .line 360
    :cond_14f
    const-string v0, ""

    goto :goto_13f

    .line 366
    :cond_152
    const-string v0, "4001"

    const-string v1, ""

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/b/f;->a(Lcom/anythink/core/api/AdError;)V
    :try_end_15f
    .catchall {:try_start_11d .. :try_end_15f} :catchall_104

    goto :goto_101

    :cond_160
    move v0, v2

    goto/16 :goto_d6
.end method

.method public abstract a(Lcom/anythink/core/b/a/b;Lcom/anythink/core/c/c$b;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/b/a/b;",
            "Lcom/anythink/core/c/c$b;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public final a(Lcom/anythink/core/b/a/b;Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/b/a/b;",
            "Ljava/util/List",
            "<+",
            "Lcom/anythink/core/b/c/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 144
    iget-boolean v0, p0, Lcom/anythink/core/b/f;->j:Z

    if-eqz v0, :cond_8

    .line 225
    :cond_7
    :goto_7
    return-void

    .line 148
    :cond_8
    invoke-virtual {p1}, Lcom/anythink/core/b/a/b;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v9

    .line 149
    iget-object v0, p0, Lcom/anythink/core/b/f;->k:Ljava/util/HashMap;

    invoke-virtual {v9}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    invoke-virtual {v9, v0, v1}, Lcom/anythink/core/b/c/b;->b(J)V

    .line 152
    invoke-virtual {p1}, Lcom/anythink/core/b/a/b;->getmUnitgroupInfo()Lcom/anythink/core/c/c$b;

    move-result-object v0

    .line 1762
    iget-wide v0, v0, Lcom/anythink/core/c/c$b;->t:J

    .line 152
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3e

    .line 153
    invoke-virtual {v9}, Lcom/anythink/core/b/c/b;->z()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3e

    .line 154
    invoke-static {v9}, Lcom/anythink/core/b/f/c;->a(Lcom/anythink/core/b/c/b;)V

    .line 159
    :cond_3e
    invoke-virtual {v9}, Lcom/anythink/core/b/c/b;->o()Z

    move-result v0

    if-nez v0, :cond_a9

    .line 160
    iget v0, p0, Lcom/anythink/core/b/f;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/anythink/core/b/f;->i:I

    .line 161
    iget-object v0, p0, Lcom/anythink/core/b/f;->d:Ljava/util/HashMap;

    invoke-virtual {v9}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 162
    if-eqz v0, :cond_5f

    .line 163
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/core/b/a/e;->c(Ljava/lang/Runnable;)V

    .line 165
    :cond_5f
    iget-object v0, p0, Lcom/anythink/core/b/f;->f:Ljava/util/HashMap;

    invoke-virtual {v9}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 166
    if-eqz v0, :cond_74

    .line 167
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/core/b/a/e;->c(Ljava/lang/Runnable;)V

    .line 170
    :cond_74
    iget-object v0, p0, Lcom/anythink/core/b/f;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    iget-object v0, p0, Lcom/anythink/core/b/f;->e:Ljava/util/HashMap;

    .line 171
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a9

    .line 172
    iget-object v0, p0, Lcom/anythink/core/b/f;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    iget-object v0, p0, Lcom/anythink/core/b/f;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 2359
    iput v4, v9, Lcom/anythink/core/b/c/b;->l:I

    .line 175
    :cond_a2
    iget-object v0, p0, Lcom/anythink/core/b/f;->e:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_a9
    invoke-static {}, Lcom/anythink/core/b/a;->a()Lcom/anythink/core/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/b/f;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a;->a(Ljava/lang/String;)Lcom/anythink/core/b/c/a;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_147

    .line 182
    invoke-virtual {v0}, Lcom/anythink/core/b/c/a;->f()I

    move-result v0

    invoke-virtual {v9}, Lcom/anythink/core/b/c/b;->q()I

    move-result v1

    if-le v0, v1, :cond_143

    .line 2368
    iput v5, v9, Lcom/anythink/core/b/c/b;->m:I

    .line 191
    :goto_c1
    iget-object v0, p0, Lcom/anythink/core/b/f;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v0

    invoke-virtual {v0, v5, v9}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;)V

    .line 192
    sget-object v0, Lcom/anythink/core/b/a/d$e;->b:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/b/a/d$e;->f:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p1, v0, v1, v2}, Lcom/anythink/core/b/a/b;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-boolean v0, p0, Lcom/anythink/core/b/f;->m:Z

    if-nez v0, :cond_14b

    .line 197
    invoke-virtual {p1}, Lcom/anythink/core/b/a/b;->getmUnitgroupInfo()Lcom/anythink/core/c/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/c/c$b;->a()J

    move-result-wide v6

    .line 200
    iget-object v0, p0, Lcom/anythink/core/b/f;->t:Lcom/anythink/core/c/c;

    invoke-virtual {v0}, Lcom/anythink/core/c/c;->s()I

    move-result v0

    const-string v1, "4"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_11b

    .line 201
    invoke-static {}, Lcom/anythink/core/b/a;->a()Lcom/anythink/core/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/b/f;->u:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/anythink/core/b/c/b;->q()I

    move-result v3

    iget-object v8, p0, Lcom/anythink/core/b/f;->t:Lcom/anythink/core/c/c;

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v8}, Lcom/anythink/core/b/a;->a(Ljava/lang/String;ILcom/anythink/core/b/a/b;Ljava/util/List;JLcom/anythink/core/c/c;)Lcom/anythink/core/b/c/o;

    .line 202
    iget-object v0, p0, Lcom/anythink/core/b/f;->u:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/core/b/d;->a(Ljava/lang/String;)Lcom/anythink/core/b/d;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_11b

    iget-object v1, p0, Lcom/anythink/core/b/f;->t:Lcom/anythink/core/c/c;

    invoke-virtual {v1}, Lcom/anythink/core/c/c;->o()I

    move-result v1

    if-lez v1, :cond_11b

    .line 204
    iget-object v1, p0, Lcom/anythink/core/b/f;->v:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/anythink/core/b/c/b;->q()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/anythink/core/b/d;->a(Lcom/anythink/core/b/a/b;Ljava/lang/String;I)V

    .line 213
    :cond_11b
    :goto_11b
    invoke-virtual {v9}, Lcom/anythink/core/b/c/b;->o()Z

    move-result v0

    if-nez v0, :cond_13a

    .line 214
    invoke-direct {p0}, Lcom/anythink/core/b/f;->g()Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 216
    iget-object v0, p0, Lcom/anythink/core/b/f;->u:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/core/b/d;->a(Ljava/lang/String;)Lcom/anythink/core/b/d;

    move-result-object v0

    if-eqz v0, :cond_13a

    .line 217
    iget-object v0, p0, Lcom/anythink/core/b/f;->u:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/core/b/d;->a(Ljava/lang/String;)Lcom/anythink/core/b/d;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/b/f;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/d;->b(Ljava/lang/String;)V

    .line 222
    :cond_13a
    iget-boolean v0, p0, Lcom/anythink/core/b/f;->h:Z

    if-nez v0, :cond_7

    .line 223
    invoke-direct {p0, v10}, Lcom/anythink/core/b/f;->b(Z)V

    goto/16 :goto_7

    .line 3368
    :cond_143
    iput v4, v9, Lcom/anythink/core/b/c/b;->m:I

    goto/16 :goto_c1

    .line 4368
    :cond_147
    iput v10, v9, Lcom/anythink/core/b/c/b;->m:I

    goto/16 :goto_c1

    .line 208
    :cond_14b
    if-eqz p1, :cond_11b

    .line 209
    invoke-virtual {p1}, Lcom/anythink/core/b/a/b;->clean()V

    goto :goto_11b
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/anythink/core/c/c;",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/c/c$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 390
    iput-object p3, p0, Lcom/anythink/core/b/f;->t:Lcom/anythink/core/c/c;

    .line 391
    iput-object p1, p0, Lcom/anythink/core/b/f;->u:Ljava/lang/String;

    .line 392
    iput-object p2, p0, Lcom/anythink/core/b/f;->v:Ljava/lang/String;

    .line 393
    iput-object p4, p0, Lcom/anythink/core/b/f;->s:Ljava/util/List;

    .line 395
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/b/f;->a:J

    .line 399
    invoke-virtual {p3}, Lcom/anythink/core/c/c;->v()I

    move-result v0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 401
    iget-object v1, p0, Lcom/anythink/core/b/f;->e:Ljava/util/HashMap;

    if-eqz v1, :cond_3c

    .line 402
    iget-object v1, p0, Lcom/anythink/core/b/f;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 408
    :goto_23
    iget-object v1, p0, Lcom/anythink/core/b/f;->t:Lcom/anythink/core/c/c;

    invoke-virtual {v1}, Lcom/anythink/core/c/c;->m()J

    move-result-wide v2

    .line 5643
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v1

    iget-object v4, p0, Lcom/anythink/core/b/f;->y:Ljava/lang/Runnable;

    invoke-virtual {v1, v4, v2, v3}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;J)V

    .line 410
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/anythink/core/b/f;->a(II)V

    .line 412
    iget-object v0, p0, Lcom/anythink/core/b/f;->s:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/anythink/core/b/f;->a(Ljava/util/List;)V

    .line 413
    return-void

    .line 404
    :cond_3c
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/anythink/core/b/f;->e:Ljava/util/HashMap;

    goto :goto_23
.end method

.method public final a(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/anythink/core/api/ATMediationSetting;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 711
    iput-object p1, p0, Lcom/anythink/core/b/f;->x:Ljava/util/Map;

    .line 712
    return-void
.end method

.method public final a(Z)V
    .registers 2

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/anythink/core/b/f;->p:Z

    .line 123
    return-void
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 648
    iget-boolean v0, p0, Lcom/anythink/core/b/f;->l:Z

    return v0
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 655
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/b/f;->h:Z

    .line 656
    return-void
.end method

.method public final d()V
    .registers 2

    .prologue
    .line 662
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/b/f;->m:Z

    .line 663
    return-void
.end method

.method public final e()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 667
    const-string v0, "CommonMediationManager"

    const-string v1, "finish load, release source!"

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    iput-boolean v2, p0, Lcom/anythink/core/b/f;->j:Z

    .line 669
    iput-boolean v2, p0, Lcom/anythink/core/b/f;->l:Z

    .line 671
    :try_start_c
    iget-object v0, p0, Lcom/anythink/core/b/f;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_50

    .line 672
    iget-object v0, p0, Lcom/anythink/core/b/f;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 673
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/anythink/core/b/a/e;->c(Ljava/lang/Runnable;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2d} :catch_2e

    goto :goto_1a

    :catch_2e
    move-exception v0

    .line 692
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/anythink/core/b/f;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_38

    .line 693
    iget-object v0, p0, Lcom/anythink/core/b/f;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 699
    :cond_38
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/b/f;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->c(Ljava/lang/Runnable;)V

    .line 701
    iget-object v0, p0, Lcom/anythink/core/b/f;->k:Ljava/util/HashMap;

    if-eqz v0, :cond_4a

    .line 702
    iget-object v0, p0, Lcom/anythink/core/b/f;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 706
    :cond_4a
    return-void

    .line 675
    :cond_4b
    :try_start_4b
    iget-object v0, p0, Lcom/anythink/core/b/f;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 678
    :cond_50
    iget-object v0, p0, Lcom/anythink/core/b/f;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_2f

    .line 679
    iget-object v0, p0, Lcom/anythink/core/b/f;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 680
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/anythink/core/b/a/e;->c(Ljava/lang/Runnable;)V

    goto :goto_5e

    .line 682
    :cond_72
    iget-object v0, p0, Lcom/anythink/core/b/f;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_77} :catch_2e

    goto :goto_2f
.end method
