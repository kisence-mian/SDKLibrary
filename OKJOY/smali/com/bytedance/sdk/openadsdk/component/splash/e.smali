.class public Lcom/bytedance/sdk/openadsdk/component/splash/e;
.super Ljava/lang/Object;
.source "TTSplashAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTSplashAd;


# instance fields
.field public a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private b:I

.field private final c:Landroid/content/Context;

.field private final d:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field private e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

.field private f:Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;

.field private g:Z

.field private h:J

.field private i:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

.field private j:Lcom/bytedance/sdk/openadsdk/component/splash/d;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:I

.field private q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

.field private r:Ljava/lang/String;

.field private s:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private t:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

.field private u:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private v:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V
    .registers 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/d/k;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x3

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->b:I

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->h:J

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k:Ljava/lang/String;

    .line 61
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->l:Z

    .line 62
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->m:Z

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->o:Z

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->p:I

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 76
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 78
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->W()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->m:Z

    .line 79
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->s:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 80
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->r:Ljava/lang/String;

    .line 81
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->b()V

    .line 82
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V
    .registers 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/d/k;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x3

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->b:I

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->h:J

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k:Ljava/lang/String;

    .line 61
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->l:Z

    .line 62
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->m:Z

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->o:Z

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->p:I

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 86
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 88
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->W()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->m:Z

    .line 89
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k:Ljava/lang/String;

    .line 90
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->s:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 91
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->r:Ljava/lang/String;

    .line 92
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->b()V

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/e;I)I
    .registers 2

    .prologue
    .line 44
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->b:I

    return p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/e;J)J
    .registers 4

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->h:J

    return-wide p1
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;
    .registers 4

    .prologue
    .line 601
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->B()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    .line 602
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->r:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    .line 604
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private a(I)V
    .registers 3

    .prologue
    .line 631
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    if-eqz v0, :cond_9

    .line 632
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setCountDownTime(I)V

    .line 634
    :cond_9
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .registers 9
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/d/k;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 266
    .line 267
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->i:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 268
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->i:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_28

    .line 269
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->i:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->b()V

    .line 270
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_28

    .line 271
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->i:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Landroid/app/Activity;)V

    .line 274
    :cond_28
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 275
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 276
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->i:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v1, :cond_3b

    .line 277
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->i:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Landroid/view/View;)V

    .line 279
    :cond_3b
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/splash/e$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/e;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setCallback(Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;)V

    .line 316
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 318
    const-string v2, "splash_show_type"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->r:Ljava/lang/String;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->r:Ljava/lang/String;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v3, p2, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;I)V

    .line 322
    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Landroid/view/View;)V

    .line 323
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->i:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 324
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Ljava/util/Map;)V

    .line 325
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setClickListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;)V

    .line 327
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->r:Ljava/lang/String;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->r:Ljava/lang/String;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v3, p2, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;I)V

    .line 328
    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Landroid/view/View;)V

    .line 329
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->i:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 330
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Ljava/util/Map;)V

    .line 331
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setClickCreativeListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;)V

    .line 333
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setNeedCheckingShow(Z)V

    .line 334
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 561
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j:Lcom/bytedance/sdk/openadsdk/component/splash/d;

    if-eqz v0, :cond_2b

    .line 562
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j:Lcom/bytedance/sdk/openadsdk/component/splash/d;

    .line 563
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->n()J

    move-result-wide v2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j:Lcom/bytedance/sdk/openadsdk/component/splash/d;

    .line 564
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->t()Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v1

    .line 562
    invoke-static {v0, v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;JLcom/bytedance/sdk/openadsdk/core/video/c/d;)Ljava/util/Map;

    move-result-object v7

    .line 565
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j:Lcom/bytedance/sdk/openadsdk/component/splash/d;

    .line 566
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->o()J

    move-result-wide v4

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j:Lcom/bytedance/sdk/openadsdk/component/splash/d;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->q()I

    move-result v6

    move-object v2, p1

    move-object v3, p2

    .line 565
    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    .line 568
    :cond_2b
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Z
    .registers 2

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->o:Z

    return v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/e;Z)Z
    .registers 2

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 97
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 100
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 101
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->m:Z

    if-eqz v0, :cond_31

    .line 102
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setVideoViewVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setImageViewVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/splash/e$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/e;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setVoiceViewListener(Landroid/view/View$OnClickListener;)V

    .line 119
    :cond_31
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->m:Z

    if-nez v0, :cond_3f

    .line 120
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setVideoViewVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setImageViewVisibility(I)V

    .line 124
    :cond_3f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->g()I

    move-result v0

    if-nez v0, :cond_63

    .line 125
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    if-eqz v0, :cond_50

    .line 126
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setAdlogoViewVisibility(I)V

    .line 135
    :cond_50
    :goto_50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->T()I

    move-result v0

    if-gtz v0, :cond_6d

    .line 136
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(I)V

    .line 142
    :goto_5c
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e()V

    .line 143
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d()V

    .line 144
    return-void

    .line 129
    :cond_63
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    if-eqz v0, :cond_50

    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setAdlogoViewVisibility(I)V

    goto :goto_50

    .line 138
    :cond_6d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->T()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->b:I

    .line 139
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->b:I

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(I)V

    goto :goto_5c
.end method

.method private b([B)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 353
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

    aget-byte v2, p1, v2

    const/16 v3, 0x46

    if-ne v2, v3, :cond_1c

    :goto_1b
    return v0

    :cond_1c
    move v0, v1

    goto :goto_1b
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/TsView;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    return-object v0
.end method

.method private c()Z
    .registers 12

    .prologue
    .line 147
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->getVideoContainer()Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/splash/d;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j:Lcom/bytedance/sdk/openadsdk/component/splash/d;

    .line 149
    const-string v0, "wzj"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVideoCachePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j:Lcom/bytedance/sdk/openadsdk/component/splash/d;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/splash/e$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/e;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;)V

    .line 184
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j:Lcom/bytedance/sdk/openadsdk/component/splash/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->M()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    .line 185
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->getVideoContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->getVideoContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    iget-boolean v10, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->o:Z

    .line 184
    invoke-virtual/range {v1 .. v10}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->a(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;JZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->n:Z

    return v0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/d;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j:Lcom/bytedance/sdk/openadsdk/component/splash/d;

    return-object v0
.end method

.method private d()V
    .registers 6

    .prologue
    .line 198
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->x()Lcom/bytedance/sdk/openadsdk/core/d/k$a;

    move-result-object v0

    if-nez v0, :cond_d

    .line 263
    :cond_c
    :goto_c
    return-void

    .line 201
    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    if-nez v0, :cond_3a

    .line 202
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->s:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->r:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 206
    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_c

    .line 209
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 210
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/splash/e$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/e;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    goto :goto_c

    .line 203
    :cond_3a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 204
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->s:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->r:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    goto :goto_24
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->f:Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;

    return-object v0
.end method

.method private e()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 358
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    if-eqz v0, :cond_90

    .line 359
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k:Ljava/lang/String;

    if-eqz v0, :cond_8c

    .line 361
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->p:I

    .line 371
    :goto_f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->i:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 372
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 373
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setAdType(I)V

    .line 374
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->addView(Landroid/view/View;)V

    .line 375
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->i:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v1, :cond_32

    .line 376
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->i:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Landroid/view/View;)V

    .line 378
    :cond_32
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/e;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setCallback(Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;)V

    .line 497
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setNeedCheckingShow(Z)V

    .line 498
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 500
    const-string v1, "splash_show_type"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/a/a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->r:Ljava/lang/String;

    const/4 v5, 0x4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/a/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;I)V

    .line 502
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Ljava/util/Map;)V

    .line 503
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Landroid/view/View;)V

    .line 504
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->getDislikeView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->b(Landroid/view/View;)V

    .line 505
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->i:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 506
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e$6;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/e;)V

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/a/b$a;)V

    .line 532
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setOnClickListenerInternal(Landroid/view/View$OnClickListener;)V

    .line 533
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setOnTouchListenerInternal(Landroid/view/View$OnTouchListener;)V

    .line 534
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/splash/e$7;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e$7;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/e;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setSkipListener(Landroid/view/View$OnClickListener;)V

    .line 558
    return-void

    .line 364
    :cond_8c
    const/4 v0, 0x2

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->p:I

    goto :goto_f

    .line 367
    :cond_90
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->p:I

    goto/16 :goto_f
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->t:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    return-object v0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    return-object v0
.end method

.method static synthetic i(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic j(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->i:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    return-object v0
.end method

.method static synthetic k(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/core/d/k;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    return-object v0
.end method

.method static synthetic l(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Z
    .registers 2

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->g:Z

    return v0
.end method

.method static synthetic o(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Z
    .registers 2

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->n:Z

    return v0
.end method

.method static synthetic p(Lcom/bytedance/sdk/openadsdk/component/splash/e;)J
    .registers 3

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->h:J

    return-wide v0
.end method


# virtual methods
.method a([B)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 341
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->b([B)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 342
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setGifView([B)V

    .line 350
    :cond_c
    :goto_c
    return-void

    .line 344
    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->F()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->F()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 345
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->F()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/j;->b()I

    move-result v0

    .line 346
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/n;->a([BI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 347
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_c
.end method

.method public a()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 624
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v1, :cond_e

    .line 625
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->x()Lcom/bytedance/sdk/openadsdk/core/d/k$a;

    move-result-object v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    .line 627
    :cond_e
    return v0
.end method

.method public getInteractionType()I
    .registers 2

    .prologue
    .line 585
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->B()I

    move-result v0

    goto :goto_5
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 617
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_b

    .line 618
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->X()Ljava/util/Map;

    move-result-object v0

    .line 620
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getSplashView()Landroid/view/View;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 573
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 574
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->getVideoContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 575
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c()Z

    move-result v0

    if-nez v0, :cond_20

    .line 576
    const/4 v0, 0x0

    .line 580
    :goto_1f
    return-object v0

    :cond_20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    goto :goto_1f
.end method

.method public renderExpressAd(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V
    .registers 3

    .prologue
    .line 190
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-nez v0, :cond_7

    .line 195
    :cond_6
    :goto_6
    return-void

    .line 193
    :cond_7
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->t:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    .line 194
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->h()V

    goto :goto_6
.end method

.method public setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .registers 3

    .prologue
    .line 595
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->i:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_9

    .line 596
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->i:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 598
    :cond_9
    return-void
.end method

.method public setNotAllowSdkCountdown()V
    .registers 3

    .prologue
    .line 609
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->g:Z

    .line 610
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    if-eqz v0, :cond_e

    .line 611
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setSkipIconVisibility(I)V

    .line 613
    :cond_e
    return-void
.end method

.method public setSplashInteractionListener(Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;)V
    .registers 2

    .prologue
    .line 590
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->f:Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;

    .line 591
    return-void
.end method
