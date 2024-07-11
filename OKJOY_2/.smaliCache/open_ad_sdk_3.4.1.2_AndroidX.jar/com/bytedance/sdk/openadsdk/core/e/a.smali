.class public Lcom/bytedance/sdk/openadsdk/core/e/a;
.super Ljava/lang/Object;
.source "TTNativeAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeAd;


# instance fields
.field private a:I

.field private b:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/view/View;

.field private e:F

.field private f:F

.field protected final g:Lcom/bytedance/sdk/openadsdk/core/o;

.field protected final h:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field protected final i:Landroid/content/Context;

.field protected j:Lcom/bytedance/sdk/openadsdk/TTAdDislike;

.field protected k:Lcom/bytedance/sdk/openadsdk/DownloadStatusController;

.field protected l:I

.field protected m:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private p:Lcom/bytedance/sdk/openadsdk/TTNativeAd$ExpressRenderListener;

.field private q:Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;ILcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 7

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    const-string v0, "materialMeta\u4e0d\u80fd\u4e3anull"

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 79
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->i:Landroid/content/Context;

    .line 80
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->l:I

    .line 81
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->m:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 82
    new-instance p4, Lcom/bytedance/sdk/openadsdk/core/o;

    invoke-direct {p0, p3}, Lcom/bytedance/sdk/openadsdk/core/e/a;->a(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p4, p1, p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/o;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTNativeAd;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->g:Lcom/bytedance/sdk/openadsdk/core/o;

    .line 83
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/e/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->b:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 84
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/e/a;->b()V

    .line 85
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/e/a;F)F
    .registers 2

    .line 55
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->e:F

    return p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/e/a;Landroid/view/View;)Landroid/view/View;
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->d:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/e/a;)Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->q:Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;

    return-object p0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;
    .registers 5

    .line 483
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_6b

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->d()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_d

    goto :goto_6b

    .line 486
    :cond_d
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->l:I

    sparse-switch v0, :sswitch_data_6c

    .line 508
    return-object v1

    .line 494
    :sswitch_13
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/m;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->m:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/m;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-object v0

    .line 488
    :sswitch_1d
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 489
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/o;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->m:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/o;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-object v0

    .line 491
    :cond_2d
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->m:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-object v0

    .line 502
    :sswitch_37
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 503
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/c/c;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->m:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/c/c;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-object v0

    .line 505
    :cond_47
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/c/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->m:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/c/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-object v0

    .line 496
    :sswitch_51
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 497
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/c;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->m:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/c;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-object v0

    .line 499
    :cond_61
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->m:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-object v0

    .line 484
    :cond_6b
    :goto_6b
    return-object v1

    :sswitch_data_6c
    .sparse-switch
        0x1 -> :sswitch_51
        0x2 -> :sswitch_37
        0x5 -> :sswitch_1d
        0x9 -> :sswitch_13
    .end sparse-switch
.end method

.method private a(I)Ljava/lang/String;
    .registers 3

    .line 432
    nop

    .line 433
    const-string v0, "embeded_ad"

    packed-switch p1, :pswitch_data_1a

    .line 450
    :pswitch_6
    goto :goto_18

    .line 444
    :pswitch_7
    nop

    .line 445
    const-string v0, "draw_ad"

    goto :goto_18

    .line 447
    :pswitch_b
    nop

    .line 448
    const-string v0, "stream"

    goto :goto_18

    .line 441
    :pswitch_f
    nop

    .line 442
    goto :goto_18

    .line 438
    :pswitch_11
    nop

    .line 439
    const-string v0, "interaction"

    goto :goto_18

    .line 435
    :pswitch_15
    nop

    .line 436
    const-string v0, "banner_ad"

    .line 453
    :goto_18
    return-object v0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_11
        :pswitch_6
        :pswitch_6
        :pswitch_f
        :pswitch_b
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 144
    const/4 v1, 0x0

    if-eqz p1, :cond_1f

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 145
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 146
    move v3, v1

    :goto_13
    if-ge v3, v2, :cond_1f

    .line 147
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 151
    :cond_1f
    if-eqz p2, :cond_38

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_38

    .line 152
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    .line 153
    nop

    :goto_2c
    if-ge v1, p1, :cond_38

    .line 154
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 157
    :cond_38
    return-object v0
.end method

.method private a(Landroid/app/Activity;)V
    .registers 5

    .line 422
    nop

    .line 423
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->i:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_11

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_11

    .line 425
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->i:Landroid/content/Context;

    .line 427
    :cond_11
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->l:I

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/e/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/dislike/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->j:Lcom/bytedance/sdk/openadsdk/TTAdDislike;

    .line 428
    return-void
.end method

.method private a(Z)V
    .registers 5

    .line 457
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->d(Ljava/lang/String;)I

    move-result v0

    .line 458
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b()Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->l:I

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a(I)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v0

    .line 459
    if-eqz p1, :cond_26

    .line 460
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a;->a()Lcom/bytedance/sdk/openadsdk/g/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/g/a;->i(Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    goto :goto_2d

    .line 462
    :cond_26
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a;->a()Lcom/bytedance/sdk/openadsdk/g/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/g/a;->j(Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    .line 464
    :goto_2d
    return-void
.end method

.method private a()Z
    .registers 4

    .line 467
    nop

    .line 468
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 469
    return v1

    .line 471
    :cond_7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->T()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_f

    .line 473
    return v1

    .line 475
    :cond_f
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->a:I

    if-nez v0, :cond_1f

    .line 476
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->d(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->a:I

    .line 478
    :cond_1f
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->a:I

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/h/h;->d(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2d

    move v1, v2

    .line 479
    :cond_2d
    return v1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/e/a;F)F
    .registers 2

    .line 55
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->f:F

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/e/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private b()V
    .registers 6

    .line 513
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->b:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-nez v0, :cond_1b

    .line 514
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->p:Lcom/bytedance/sdk/openadsdk/TTNativeAd$ExpressRenderListener;

    if-eqz v0, :cond_1a

    .line 515
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->c:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->m:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedWidth()F

    move-result v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->m:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 516
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedHeight()F

    move-result v3

    const/4 v4, 0x0

    .line 515
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/TTNativeAd$ExpressRenderListener;->onRenderSuccess(Landroid/view/View;FFZ)V

    .line 518
    :cond_1a
    return-void

    .line 520
    :cond_1b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->p:Lcom/bytedance/sdk/openadsdk/TTNativeAd$ExpressRenderListener;

    if-eqz v0, :cond_37

    .line 521
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->d:Landroid/view/View;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->e:F

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->f:F

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/TTNativeAd$ExpressRenderListener;->onRenderSuccess(Landroid/view/View;FFZ)V

    .line 522
    return-void

    .line 524
    :cond_37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->b:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/e/a$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/e/a$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/e/a;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    .line 564
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->b:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->render()V

    .line 565
    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/e/a;)Landroid/view/ViewGroup;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->c:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private c()V
    .registers 3

    .line 568
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2b

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->b:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->d:Landroid/view/View;

    if-nez v1, :cond_d

    goto :goto_2b

    .line 571
    :cond_d
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 572
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 573
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 575
    :cond_23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 576
    return-void

    .line 569
    :cond_2b
    :goto_2b
    return-void
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/core/e/a;)Lcom/bytedance/sdk/openadsdk/TTNativeAd$ExpressRenderListener;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->p:Lcom/bytedance/sdk/openadsdk/TTNativeAd$ExpressRenderListener;

    return-object p0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/core/e/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .line 383
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->b:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_7

    .line 384
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->destroy()V

    .line 386
    :cond_7
    return-void
.end method

.method public getAdLogo()Landroid/graphics/Bitmap;
    .registers 4

    .line 184
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_ad_logo_small_rectangle"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getAdView()Landroid/view/View;
    .registers 2

    .line 365
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppCommentNum()I
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 223
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->f()I

    move-result v0

    return v0

    .line 225
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public getAppScore()I
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 215
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->e()I

    move-result v0

    return v0

    .line 217
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public getAppSize()I
    .registers 2

    .line 230
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 231
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->g()I

    move-result v0

    return v0

    .line 233
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public getButtonText()Ljava/lang/String;
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->af()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 201
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ad()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 202
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ad()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 204
    :cond_13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ae()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDislikeDialog(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/TTAdDislike;
    .registers 3

    .line 285
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->b:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 286
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->b:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getDislikeDialog(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/TTAdDislike;

    move-result-object p1

    return-object p1

    .line 288
    :cond_13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->j:Lcom/bytedance/sdk/openadsdk/TTAdDislike;

    if-nez v0, :cond_1a

    .line 289
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/e/a;->a(Landroid/app/Activity;)V

    .line 291
    :cond_1a
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->j:Lcom/bytedance/sdk/openadsdk/TTAdDislike;

    return-object p1
.end method

.method public getDislikeDialog(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)Lcom/bytedance/sdk/openadsdk/TTAdDislike;
    .registers 3

    .line 296
    if-eqz p1, :cond_d

    .line 299
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 301
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/e/a$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/e/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/e/a;Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    return-object v0

    .line 297
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "dialog is null, please check"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDownloadStatusController()Lcom/bytedance/sdk/openadsdk/DownloadStatusController;
    .registers 3

    .line 333
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->b:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 334
    const/4 v0, 0x0

    return-object v0

    .line 336
    :cond_e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->k:Lcom/bytedance/sdk/openadsdk/DownloadStatusController;

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->g:Lcom/bytedance/sdk/openadsdk/core/o;

    if-eqz v0, :cond_23

    .line 338
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    .line 339
    if-eqz v0, :cond_23

    .line 340
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/e/a$2;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/e/a$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/e/a;Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->k:Lcom/bytedance/sdk/openadsdk/DownloadStatusController;

    .line 353
    :cond_23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->k:Lcom/bytedance/sdk/openadsdk/DownloadStatusController;

    return-object v0
.end method

.method public getFilterWords()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->al()Ljava/util/List;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public getIcon()Lcom/bytedance/sdk/openadsdk/TTImage;
    .registers 2

    .line 243
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_14

    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Lcom/bytedance/sdk/openadsdk/TTImage;

    move-result-object v0

    :goto_14
    return-object v0
.end method

.method public getImageList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/TTImage;",
            ">;"
        }
    .end annotation

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 249
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Z()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Z()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_37

    .line 250
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Z()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 251
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Lcom/bytedance/sdk/openadsdk/TTImage;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    goto :goto_23

    .line 254
    :cond_37
    return-object v0
.end method

.method public getImageMode()I
    .registers 2

    .line 267
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_6

    .line 268
    const/4 v0, -0x1

    return v0

    .line 270
    :cond_6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ak()I

    move-result v0

    return v0
.end method

.method public getInteractionType()I
    .registers 2

    .line 259
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_6

    .line 260
    const/4 v0, -0x1

    return v0

    .line 262
    :cond_6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->T()I

    move-result v0

    return v0
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_9

    .line 371
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->as()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 373
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPersonalizationPrompt()Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;
    .registers 2

    .line 280
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->am()Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .registers 2

    .line 238
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->S()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 190
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 191
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 193
    :cond_23
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/a;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 194
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/a;->getSource()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 196
    :cond_32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ad()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoCoverImage()Lcom/bytedance/sdk/openadsdk/TTImage;
    .registers 8

    .line 173
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 174
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->h()Ljava/lang/String;

    move-result-object v4

    .line 175
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->b()I

    move-result v2

    .line 176
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->c()I

    move-result v3

    .line 177
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TTImage;

    const-wide/16 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/TTImage;-><init>(IILjava/lang/String;D)V

    return-object v0

    .line 179
    :cond_31
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V
    .registers 8

    .line 89
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_f

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_f

    :cond_d
    move v2, v0

    goto :goto_10

    :cond_f
    :goto_f
    move v2, v1

    :goto_10
    const-string v3, "container\u4e0d\u80fd\u4e3anull"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(ZLjava/lang/String;)V

    .line 90
    if-nez p2, :cond_1f

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_20

    :cond_1f
    move v0, v1

    :cond_20
    const-string v2, "clickView\u4e0d\u80fd\u4e3anull"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(ZLjava/lang/String;)V

    .line 91
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->c:Landroid/view/ViewGroup;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/e/a;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    .line 95
    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;",
            ")V"
        }
    .end annotation

    .line 108
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_f

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_f

    :cond_d
    move v2, v0

    goto :goto_10

    :cond_f
    :goto_f
    move v2, v1

    :goto_10
    const-string v3, "container\u4e0d\u80fd\u4e3anull"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(ZLjava/lang/String;)V

    .line 109
    if-nez p2, :cond_22

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_22

    :cond_20
    move v2, v0

    goto :goto_23

    :cond_22
    :goto_22
    move v2, v1

    :goto_23
    const-string v3, "clickView\u4e0d\u80fd\u4e3anull"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(ZLjava/lang/String;)V

    .line 110
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2f

    move v0, v1

    :cond_2f
    const-string v1, "clickViews\u6570\u91cf\u5fc5\u987b\u5927\u4e8e\u7b49\u4e8e1"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(ZLjava/lang/String;)V

    .line 111
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->c:Landroid/view/ViewGroup;

    .line 112
    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/core/e/a;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    .line 114
    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;",
            ")V"
        }
    .end annotation

    .line 99
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_f

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_f

    :cond_d
    move v2, v0

    goto :goto_10

    :cond_f
    :goto_f
    move v2, v1

    :goto_10
    const-string v3, "container\u4e0d\u80fd\u4e3anull"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(ZLjava/lang/String;)V

    .line 100
    if-nez p2, :cond_22

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_22

    :cond_20
    move v2, v0

    goto :goto_23

    :cond_22
    :goto_22
    move v2, v1

    :goto_23
    const-string v3, "clickView\u4e0d\u80fd\u4e3anull"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(ZLjava/lang/String;)V

    .line 101
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2f

    move v0, v1

    :cond_2f
    const-string v1, "clickViews\u6570\u91cf\u5fc5\u987b\u5927\u4e8e\u7b49\u4e8e1"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(ZLjava/lang/String;)V

    .line 102
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->c:Landroid/view/ViewGroup;

    .line 103
    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/e/a;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    .line 104
    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;",
            ")V"
        }
    .end annotation

    .line 118
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_f

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_f

    :cond_d
    move v2, v0

    goto :goto_10

    :cond_f
    :goto_f
    move v2, v1

    :goto_10
    const-string v3, "container\u4e0d\u80fd\u4e3anull"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(ZLjava/lang/String;)V

    .line 119
    if-nez p3, :cond_22

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_22

    :cond_20
    move v2, v0

    goto :goto_23

    :cond_22
    :goto_22
    move v2, v1

    :goto_23
    const-string v3, "clickView\u4e0d\u80fd\u4e3anull"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(ZLjava/lang/String;)V

    .line 120
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_30

    move v2, v1

    goto :goto_31

    :cond_30
    move v2, v0

    :goto_31
    const-string v3, "clickViews\u6570\u91cf\u5fc5\u987b\u5927\u4e8e\u7b49\u4e8e1"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(ZLjava/lang/String;)V

    .line 121
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->c:Landroid/view/ViewGroup;

    .line 122
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->q:Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;

    .line 124
    if-eqz p4, :cond_43

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_43

    move v0, v1

    .line 125
    :cond_43
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/e/a;->a(Z)V

    .line 128
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 129
    invoke-direct {p0, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/e/a;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p4

    move-object v6, p4

    goto :goto_53

    .line 128
    :cond_52
    move-object v6, p4

    .line 131
    :goto_53
    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p4

    if-eqz p4, :cond_65

    iget p4, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->l:I

    const/4 v0, 0x5

    if-eq p4, v0, :cond_62

    if-ne p4, v1, :cond_65

    .line 132
    :cond_62
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/e/a;->c()V

    .line 134
    :cond_65
    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p4

    if-nez p4, :cond_77

    .line 135
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->g:Lcom/bytedance/sdk/openadsdk/core/o;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/core/o;->a(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    .line 137
    :cond_77
    return-void
.end method

.method public render()V
    .registers 1

    .line 378
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/e/a;->b()V

    .line 379
    return-void
.end method

.method public setActivityForDownloadApp(Landroid/app/Activity;)V
    .registers 3

    .line 359
    if-eqz p1, :cond_7

    .line 360
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->g:Lcom/bytedance/sdk/openadsdk/core/o;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/o;->a(Landroid/app/Activity;)V

    .line 362
    :cond_7
    return-void
.end method

.method public setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
    .registers 4

    .line 395
    if-eqz p2, :cond_d

    if-nez p1, :cond_5

    goto :goto_d

    .line 398
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->b:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_c

    .line 399
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    .line 401
    :cond_c
    return-void

    .line 396
    :cond_d
    :goto_d
    return-void
.end method

.method public setDislikeDialog(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V
    .registers 3

    .line 406
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->b:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_7

    .line 407
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setDislikeDialog(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    .line 409
    :cond_7
    return-void
.end method

.method public setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .registers 3

    .line 163
    const-string v0, "downloadListener\u4e0d\u80fd\u4e3anull"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->g:Lcom/bytedance/sdk/openadsdk/core/o;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/o;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 165
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->b:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_11

    .line 166
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 168
    :cond_11
    return-void
.end method

.method public setExpressRenderListener(Lcom/bytedance/sdk/openadsdk/TTNativeAd$ExpressRenderListener;)V
    .registers 2

    .line 390
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->p:Lcom/bytedance/sdk/openadsdk/TTNativeAd$ExpressRenderListener;

    .line 391
    return-void
.end method

.method public showInteractionExpressAd(Landroid/app/Activity;)V
    .registers 3

    .line 413
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->b:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_7

    .line 414
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->showInteractionExpressAd(Landroid/app/Activity;)V

    .line 416
    :cond_7
    return-void
.end method
