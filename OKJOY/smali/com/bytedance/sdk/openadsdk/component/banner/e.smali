.class public Lcom/bytedance/sdk/openadsdk/component/banner/e;
.super Ljava/lang/Object;
.source "TTBannerAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTBannerAd;
.implements Lcom/bytedance/sdk/openadsdk/utils/ak$a;


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

.field private final b:Lcom/bytedance/sdk/openadsdk/component/banner/a;

.field private final c:Landroid/content/Context;

.field private d:Lcom/bytedance/sdk/openadsdk/utils/ak;

.field private e:I

.field private f:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field private g:Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;

.field private h:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

.field private i:Lcom/bytedance/sdk/openadsdk/dislike/b;

.field private final j:Lcom/bytedance/sdk/openadsdk/component/banner/b;

.field private k:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

.field private l:Ljava/lang/String;

.field private m:Lcom/bytedance/sdk/openadsdk/AdSlot;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/component/banner/a;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 5

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "banner_ad"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->l:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->c:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->b:Lcom/bytedance/sdk/openadsdk/component/banner/a;

    .line 60
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->m:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 61
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/banner/a;->b()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->f:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 62
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/banner/d;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/banner/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/b;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/banner/b;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->j:Lcom/bytedance/sdk/openadsdk/component/banner/b;

    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->b()Lcom/bytedance/sdk/openadsdk/component/banner/c;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a(Lcom/bytedance/sdk/openadsdk/component/banner/c;Lcom/bytedance/sdk/openadsdk/component/banner/a;)V

    .line 66
    return-void
.end method

.method private a(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;
    .registers 5

    .prologue
    .line 365
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_17

    .line 366
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 367
    instance-of v2, v0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    if-eqz v2, :cond_13

    .line 368
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    .line 371
    :goto_12
    return-object v0

    .line 365
    :cond_13
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 371
    :cond_17
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;
    .registers 4

    .prologue
    .line 255
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->B()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    .line 256
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->l:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    .line 258
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private a()V
    .registers 4

    .prologue
    .line 217
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->j:Lcom/bytedance/sdk/openadsdk/component/banner/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->m:Lcom/bytedance/sdk/openadsdk/AdSlot;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/banner/e$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/banner/e$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/banner/e;)V

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/banner/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/component/banner/b$a;)V

    .line 230
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
    .registers 4

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->b(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    .line 193
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->i:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->a(Lcom/bytedance/sdk/openadsdk/dislike/b;)V

    .line 194
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/component/banner/a;)V
    .registers 3
    .param p1    # Lcom/bytedance/sdk/openadsdk/component/banner/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 249
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->c()Lcom/bytedance/sdk/openadsdk/component/banner/c;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->f()Z

    move-result v0

    if-nez v0, :cond_19

    .line 250
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->c()Lcom/bytedance/sdk/openadsdk/component/banner/c;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a(Lcom/bytedance/sdk/openadsdk/component/banner/c;Lcom/bytedance/sdk/openadsdk/component/banner/a;)V

    .line 252
    :cond_19
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/component/banner/c;Lcom/bytedance/sdk/openadsdk/component/banner/a;)V
    .registers 9
    .param p1    # Lcom/bytedance/sdk/openadsdk/component/banner/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/component/banner/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 266
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/banner/a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/banner/c;->a(Landroid/graphics/Bitmap;)V

    .line 267
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/banner/a;->b()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    .line 268
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->f:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 269
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/b;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->f:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-direct {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/dislike/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->i:Lcom/bytedance/sdk/openadsdk/dislike/b;

    .line 270
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/banner/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 271
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->k:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 272
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->k:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_43

    .line 273
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->k:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->b()V

    .line 274
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/banner/c;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_43

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/banner/c;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_43

    .line 275
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->k:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/banner/c;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-interface {v2, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Landroid/app/Activity;)V

    .line 278
    :cond_43
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 279
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    move-result-object v0

    .line 280
    if-nez v0, :cond_56

    .line 281
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->c:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 282
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/banner/c;->addView(Landroid/view/View;)V

    .line 285
    :cond_56
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->k:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v2, :cond_5f

    .line 286
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->k:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v2, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Landroid/view/View;)V

    .line 289
    :cond_5f
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;

    invoke-direct {v2, p0, v1}, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/banner/e;Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setCallback(Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;)V

    .line 342
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/a/a;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->l:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/a/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;I)V

    .line 343
    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Landroid/view/View;)V

    .line 344
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->d()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->b(Landroid/view/View;)V

    .line 345
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->k:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 346
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/banner/e$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/banner/e$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/banner/e;)V

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/a/b$a;)V

    .line 355
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/banner/c;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/banner/c;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 357
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->k:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v1, :cond_9b

    .line 358
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->k:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->h:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 360
    :cond_9b
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setNeedCheckingShow(Z)V

    .line 361
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/banner/e;)V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->b()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/banner/e;Lcom/bytedance/sdk/openadsdk/component/banner/a;)V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a(Lcom/bytedance/sdk/openadsdk/component/banner/a;)V

    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->k:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    return-object v0
.end method

.method private b()V
    .registers 5

    .prologue
    .line 233
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->d:Lcom/bytedance/sdk/openadsdk/utils/ak;

    if-eqz v0, :cond_13

    .line 234
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->d:Lcom/bytedance/sdk/openadsdk/utils/ak;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 235
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->d:Lcom/bytedance/sdk/openadsdk/utils/ak;

    const/4 v1, 0x1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->e:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->sendEmptyMessageDelayed(IJ)Z

    .line 237
    :cond_13
    return-void
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
    .registers 5

    .prologue
    .line 200
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->i:Lcom/bytedance/sdk/openadsdk/dislike/b;

    if-nez v0, :cond_f

    .line 201
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->f:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/dislike/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->i:Lcom/bytedance/sdk/openadsdk/dislike/b;

    .line 203
    :cond_f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->i:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/b;->setDislikeInteractionCallback(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    .line 204
    return-void
.end method

.method private c()V
    .registers 3

    .prologue
    .line 240
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->d:Lcom/bytedance/sdk/openadsdk/utils/ak;

    if-eqz v0, :cond_a

    .line 241
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->d:Lcom/bytedance/sdk/openadsdk/utils/ak;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 243
    :cond_a
    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/component/banner/e;)V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->c()V

    return-void
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Lcom/bytedance/sdk/openadsdk/component/banner/d;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    return-object v0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->g:Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 208
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 209
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a()V

    .line 211
    :cond_8
    return-void
.end method

.method public getBannerView()Landroid/view/View;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    return-object v0
.end method

.method public getDislikeDialog(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)Lcom/bytedance/sdk/openadsdk/TTAdDislike;
    .registers 3

    .prologue
    .line 145
    if-nez p1, :cond_4

    .line 146
    const/4 v0, 0x0

    .line 149
    :goto_3
    return-object v0

    .line 148
    :cond_4
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->b(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    .line 149
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->i:Lcom/bytedance/sdk/openadsdk/dislike/b;

    goto :goto_3
.end method

.method public getInteractionType()I
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->f:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-nez v0, :cond_6

    .line 138
    const/4 v0, -0x1

    .line 140
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->f:Lcom/bytedance/sdk/openadsdk/core/d/k;

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
    .line 181
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->f:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_b

    .line 182
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->f:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->X()Ljava/util/Map;

    move-result-object v0

    .line 184
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setBannerInteractionListener(Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;)V
    .registers 2

    .prologue
    .line 123
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->g:Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;

    .line 124
    return-void
.end method

.method public setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .registers 4

    .prologue
    .line 128
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->h:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->k:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_d

    .line 131
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->k:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->h:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 133
    :cond_d
    return-void
.end method

.method public setShowDislikeIcon(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
    .registers 2

    .prologue
    .line 154
    if-nez p1, :cond_3

    .line 158
    :goto_2
    return-void

    .line 157
    :cond_3
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    goto :goto_2
.end method

.method public setSlideIntervalTime(I)V
    .registers 6

    .prologue
    const v1, 0x1d4c0

    const/16 v0, 0x7530

    .line 162
    if-gtz p1, :cond_8

    .line 177
    :goto_7
    return-void

    .line 165
    :cond_8
    const-string v2, "slide_banner_ad"

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->l:Ljava/lang/String;

    .line 166
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->b()Lcom/bytedance/sdk/openadsdk/component/banner/c;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->b:Lcom/bytedance/sdk/openadsdk/component/banner/a;

    invoke-direct {p0, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a(Lcom/bytedance/sdk/openadsdk/component/banner/c;Lcom/bytedance/sdk/openadsdk/component/banner/a;)V

    .line 168
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->a()V

    .line 169
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->a(I)V

    .line 170
    if-ge p1, v0, :cond_34

    move p1, v0

    .line 175
    :cond_26
    :goto_26
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->e:I

    .line 176
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/utils/ak;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/openadsdk/utils/ak$a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->d:Lcom/bytedance/sdk/openadsdk/utils/ak;

    goto :goto_7

    .line 172
    :cond_34
    if-le p1, v1, :cond_26

    move p1, v1

    .line 173
    goto :goto_26
.end method
