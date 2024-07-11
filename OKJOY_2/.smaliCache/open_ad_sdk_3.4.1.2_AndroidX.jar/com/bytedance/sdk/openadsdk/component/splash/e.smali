.class public Lcom/bytedance/sdk/openadsdk/component/splash/e;
.super Ljava/lang/Object;
.source "TTSplashAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTSplashAd;


# instance fields
.field public a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:I

.field private final d:Landroid/content/Context;

.field private final e:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field private f:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

.field private g:Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;

.field private h:Z

.field private i:J

.field private j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

.field private k:Lcom/bytedance/sdk/openadsdk/component/splash/d;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:I

.field private r:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

.field private s:Ljava/lang/String;

.field private t:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private u:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

.field private v:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private w:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private x:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V
    .registers 7

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x3

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c:I

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->i:J

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->l:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->m:Z

    .line 67
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->n:Z

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->p:Z

    .line 70
    const/4 v1, -0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->q:I

    .line 75
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 76
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 85
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ar()Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->n:Z

    .line 86
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->t:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 87
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->s:Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->b()V

    .line 89
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V
    .registers 8

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x3

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c:I

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->i:J

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->l:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->m:Z

    .line 67
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->n:Z

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->p:Z

    .line 70
    const/4 v1, -0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->q:I

    .line 75
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 76
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 95
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ar()Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->n:Z

    .line 96
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->l:Ljava/lang/String;

    .line 97
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->t:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 98
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->s:Ljava/lang/String;

    .line 99
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->b()V

    .line 100
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/e;I)I
    .registers 2

    .line 49
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c:I

    return p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/e;J)J
    .registers 3

    .line 49
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->i:J

    return-wide p1
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;
    .registers 4

    .line 709
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->T()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    .line 710
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->s:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object p1

    return-object p1

    .line 712
    :cond_10
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(I)V
    .registers 3

    .line 739
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->f:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    if-eqz v0, :cond_7

    .line 740
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setCountDownTime(I)V

    .line 742
    :cond_7
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 9

    .line 277
    nop

    .line 278
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 279
    if-eqz v0, :cond_25

    .line 280
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->b()V

    .line 281
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_25

    .line 282
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Landroid/app/Activity;)V

    .line 285
    :cond_25
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 286
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 287
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v1, :cond_36

    .line 288
    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Landroid/view/View;)V

    .line 290
    :cond_36
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/splash/e$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/e;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setCallback(Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;)V

    .line 327
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 329
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "splash_show_type"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->s:Ljava/lang/String;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v3, p2, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;I)V

    .line 333
    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Landroid/view/View;)V

    .line 334
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 335
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Ljava/util/Map;)V

    .line 336
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->r:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setClickListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;)V

    .line 338
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->s:Ljava/lang/String;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v3, p2, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;I)V

    .line 339
    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Landroid/view/View;)V

    .line 340
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 341
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Ljava/util/Map;)V

    .line 342
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->r:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setClickCreativeListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;)V

    .line 344
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setNeedCheckingShow(Z)V

    .line 345
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(Z)V

    .line 346
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 671
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k:Lcom/bytedance/sdk/openadsdk/component/splash/d;

    if-eqz v0, :cond_29

    .line 672
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 673
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->o()J

    move-result-wide v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k:Lcom/bytedance/sdk/openadsdk/component/splash/d;

    .line 674
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    .line 672
    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;JLcom/bytedance/sdk/openadsdk/core/video/d/d;)Ljava/util/Map;

    move-result-object v11

    .line 675
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Landroid/content/Context;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k:Lcom/bytedance/sdk/openadsdk/component/splash/d;

    .line 676
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->p()J

    move-result-wide v8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k:Lcom/bytedance/sdk/openadsdk/component/splash/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->r()I

    move-result v10

    .line 675
    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v4 .. v11}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    .line 678
    :cond_29
    return-void
.end method

.method private a(Z)V
    .registers 5

    .line 365
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-nez v0, :cond_5

    .line 366
    return-void

    .line 368
    :cond_5
    nop

    .line 369
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_f

    .line 370
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 369
    :cond_f
    const-string v0, ""

    .line 372
    :goto_11
    nop

    .line 373
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;

    invoke-direct {v2, p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/e;ZLjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 437
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Z
    .registers 1

    .line 49
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->p:Z

    return p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/e;Z)Z
    .registers 2

    .line 49
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Landroid/content/Context;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Landroid/content/Context;

    return-object p0
.end method

.method private b()V
    .registers 5

    .line 104
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->f:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    .line 105
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_31

    .line 108
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->n:Z

    if-eqz v0, :cond_31

    .line 109
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->f:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setVideoViewVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->f:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setImageViewVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->f:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/splash/e$1;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/e;)V

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setVoiceViewListener(Landroid/view/View$OnClickListener;)V

    .line 126
    :cond_31
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->n:Z

    if-nez v0, :cond_3f

    .line 127
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->f:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setVideoViewVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->f:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setImageViewVisibility(I)V

    .line 131
    :cond_3f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->m()I

    move-result v0

    if-nez v0, :cond_4f

    .line 132
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->f:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    if-eqz v0, :cond_56

    .line 133
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setAdlogoViewVisibility(I)V

    goto :goto_56

    .line 136
    :cond_4f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->f:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    if-eqz v0, :cond_56

    .line 137
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setAdlogoViewVisibility(I)V

    .line 142
    :cond_56
    :goto_56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ao()I

    move-result v0

    if-gtz v0, :cond_63

    .line 143
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(I)V

    goto :goto_6e

    .line 145
    :cond_63
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ao()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c:I

    .line 146
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(I)V

    .line 149
    :goto_6e
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e()V

    .line 150
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d()V

    .line 151
    return-void
.end method

.method private b([B)Z
    .registers 6

    .line 464
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1c

    array-length v2, p1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1c

    aget-byte v2, p1, v1

    const/16 v3, 0x47

    if-ne v2, v3, :cond_1c

    aget-byte v2, p1, v0

    const/16 v3, 0x49

    if-ne v2, v3, :cond_1c

    const/4 v2, 0x2

    aget-byte p1, p1, v2

    const/16 v2, 0x46

    if-ne p1, v2, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v1

    :goto_1d
    return v0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/TsView;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->f:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    return-object p0
.end method

.method private c()Z
    .registers 13

    .line 154
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->f:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->getVideoContainer()Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/splash/d;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k:Lcom/bytedance/sdk/openadsdk/component/splash/d;

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mVideoCachePath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wzj"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k:Lcom/bytedance/sdk/openadsdk/component/splash/d;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/splash/e$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/e;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;)V

    .line 191
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k:Lcom/bytedance/sdk/openadsdk/component/splash/d;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->f:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    .line 192
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->getVideoContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->f:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->getVideoContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v8

    iget-boolean v11, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->p:Z

    .line 191
    const/4 v7, 0x0

    const-wide/16 v9, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->a(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;JZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->o:Z

    return v0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/d;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k:Lcom/bytedance/sdk/openadsdk/component/splash/d;

    return-object p0
.end method

.method private d()V
    .registers 6

    .line 205
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_5f

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    goto :goto_5f

    .line 208
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    if-nez v0, :cond_24

    .line 209
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->t:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->s:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->r:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    goto :goto_4a

    .line 210
    :cond_24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 212
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->t:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->s:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->r:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 215
    :cond_4a
    :goto_4a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->r:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-nez v0, :cond_4f

    .line 216
    return-void

    .line 218
    :cond_4f
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 219
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->r:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/splash/e$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/e;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    .line 274
    return-void

    .line 206
    :cond_5f
    :goto_5f
    return-void
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->g:Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;

    return-object p0
.end method

.method private e()V
    .registers 7

    .line 469
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    .line 470
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->l:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 472
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->q:I

    goto :goto_17

    .line 475
    :cond_11
    const/4 v0, 0x2

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->q:I

    goto :goto_17

    .line 478
    :cond_15
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->q:I

    .line 480
    :goto_17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 481
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->f:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-direct {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 482
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setAdType(I)V

    .line 483
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->f:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->addView(Landroid/view/View;)V

    .line 484
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v3, :cond_38

    .line 485
    invoke-interface {v3, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Landroid/view/View;)V

    .line 487
    :cond_38
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(Z)V

    .line 488
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/splash/e$6;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e$6;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/e;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setCallback(Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;)V

    .line 606
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setNeedCheckingShow(Z)V

    .line 607
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 609
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "splash_show_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/a/a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->s:Ljava/lang/String;

    const/4 v5, 0x4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/a/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;I)V

    .line 611
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Ljava/util/Map;)V

    .line 612
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->f:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Landroid/view/View;)V

    .line 613
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->f:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->getDislikeView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->b(Landroid/view/View;)V

    .line 614
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 615
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/e$7;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e$7;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/e;)V

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/a/b$a;)V

    .line 642
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->f:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setOnClickListenerInternal(Landroid/view/View$OnClickListener;)V

    .line 643
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->f:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setOnTouchListenerInternal(Landroid/view/View$OnTouchListener;)V

    .line 644
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->f:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/splash/e$8;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e$8;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/e;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setSkipListener(Landroid/view/View$OnClickListener;)V

    .line 668
    return-void
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->u:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    return-object p0
.end method

.method private f()V
    .registers 2

    .line 758
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k:Lcom/bytedance/sdk/openadsdk/component/splash/d;

    if-eqz v0, :cond_7

    .line 759
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->h()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    .line 762
    :cond_7
    goto :goto_9

    .line 761
    :catchall_8
    move-exception v0

    .line 763
    :goto_9
    return-void
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private g()V
    .registers 2

    .line 767
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k:Lcom/bytedance/sdk/openadsdk/component/splash/d;

    if-eqz v0, :cond_7

    .line 768
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->k()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    .line 771
    :cond_7
    goto :goto_9

    .line 770
    :catchall_8
    move-exception v0

    .line 772
    :goto_9
    return-void
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->r:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    return-object p0
.end method

.method static synthetic i(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic j(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    return-object p0
.end method

.method static synthetic k(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->x:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    return-object p0
.end method

.method static synthetic l(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method

.method static synthetic m(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Ljava/lang/String;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic n(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Ljava/lang/String;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->s:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic o(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Z
    .registers 1

    .line 49
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->h:Z

    return p0
.end method

.method static synthetic p(Lcom/bytedance/sdk/openadsdk/component/splash/e;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->g()V

    return-void
.end method

.method static synthetic q(Lcom/bytedance/sdk/openadsdk/component/splash/e;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->f()V

    return-void
.end method

.method static synthetic r(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Z
    .registers 1

    .line 49
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->o:Z

    return p0
.end method

.method static synthetic s(Lcom/bytedance/sdk/openadsdk/component/splash/e;)J
    .registers 3

    .line 49
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->i:J

    return-wide v0
.end method


# virtual methods
.method a([B)V
    .registers 4

    .line 353
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->b([B)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 354
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->f:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setGifView([B)V

    goto :goto_3a

    .line 356
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Z()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Z()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 357
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->b()I

    move-result v0

    .line 358
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/o;->a([BI)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 359
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->f:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 362
    :cond_3a
    :goto_3a
    return-void
.end method

.method public a()Z
    .registers 4

    .line 732
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 733
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->d()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1

    .line 735
    :cond_e
    return v1
.end method

.method public getInteractionType()I
    .registers 2

    .line 695
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->T()I

    move-result v0

    :goto_a
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

    .line 725
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_9

    .line 726
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->as()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 728
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSplashView()Landroid/view/View;
    .registers 2

    .line 683
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 684
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->f:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->getVideoContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->l:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 685
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 686
    const/4 v0, 0x0

    return-object v0

    .line 690
    :cond_1e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->f:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    return-object v0
.end method

.method public renderExpressAd(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V
    .registers 3

    .line 197
    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->r:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-nez v0, :cond_7

    goto :goto_d

    .line 200
    :cond_7
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->u:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    .line 201
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->h()V

    .line 202
    return-void

    .line 198
    :cond_d
    :goto_d
    return-void
.end method

.method public setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .registers 2

    .line 705
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->x:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    .line 706
    return-void
.end method

.method public setNotAllowSdkCountdown()V
    .registers 3

    .line 717
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->h:Z

    .line 718
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->f:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    if-eqz v0, :cond_c

    .line 719
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setSkipIconVisibility(I)V

    .line 721
    :cond_c
    return-void
.end method

.method public setSplashInteractionListener(Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;)V
    .registers 2

    .line 700
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->g:Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;

    .line 701
    return-void
.end method
