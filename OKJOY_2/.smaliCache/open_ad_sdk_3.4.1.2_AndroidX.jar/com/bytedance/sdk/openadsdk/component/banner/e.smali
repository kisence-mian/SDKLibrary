.class public Lcom/bytedance/sdk/openadsdk/component/banner/e;
.super Ljava/lang/Object;
.source "TTBannerAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTBannerAd;
.implements Lcom/bytedance/sdk/openadsdk/utils/al$a;


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

.field private final b:Lcom/bytedance/sdk/openadsdk/component/banner/a;

.field private final c:Landroid/content/Context;

.field private d:Lcom/bytedance/sdk/openadsdk/utils/al;

.field private e:I

.field private f:Lcom/bytedance/sdk/openadsdk/core/d/l;

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
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/banner/a;->b()Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p3

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->f:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 62
    new-instance p3, Lcom/bytedance/sdk/openadsdk/component/banner/d;

    invoke-direct {p3, p1}, Lcom/bytedance/sdk/openadsdk/component/banner/d;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    .line 63
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/banner/b;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/banner/b;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->j:Lcom/bytedance/sdk/openadsdk/component/banner/b;

    .line 64
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->b()Lcom/bytedance/sdk/openadsdk/component/banner/c;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a(Lcom/bytedance/sdk/openadsdk/component/banner/c;Lcom/bytedance/sdk/openadsdk/component/banner/a;)V

    .line 66
    return-void
.end method

.method private a(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;
    .registers 5

    .line 364
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 365
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 366
    instance-of v2, v1, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    if-eqz v2, :cond_12

    .line 367
    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    return-object v1

    .line 364
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 370
    :cond_15
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;
    .registers 4

    .line 256
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->T()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    .line 257
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->l:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object p1

    return-object p1

    .line 259
    :cond_10
    const/4 p1, 0x0

    return-object p1
.end method

.method private a()V
    .registers 4

    .line 218
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->j:Lcom/bytedance/sdk/openadsdk/component/banner/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->m:Lcom/bytedance/sdk/openadsdk/AdSlot;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/banner/e$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/banner/e$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/banner/e;)V

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/banner/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/component/banner/b$a;)V

    .line 231
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
    .registers 3

    .line 193
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->b(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    .line 194
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->i:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->a(Lcom/bytedance/sdk/openadsdk/dislike/b;)V

    .line 195
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/component/banner/a;)V
    .registers 3

    .line 250
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->c()Lcom/bytedance/sdk/openadsdk/component/banner/c;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->f()Z

    move-result v0

    if-nez v0, :cond_19

    .line 251
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->c()Lcom/bytedance/sdk/openadsdk/component/banner/c;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a(Lcom/bytedance/sdk/openadsdk/component/banner/c;Lcom/bytedance/sdk/openadsdk/component/banner/a;)V

    .line 253
    :cond_19
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/component/banner/c;Lcom/bytedance/sdk/openadsdk/component/banner/a;)V
    .registers 8

    .line 267
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/banner/a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/banner/c;->a(Landroid/graphics/Bitmap;)V

    .line 268
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/banner/a;->b()Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p2

    .line 269
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->f:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 270
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->f:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->l:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/dislike/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->i:Lcom/bytedance/sdk/openadsdk/dislike/b;

    .line 271
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/banner/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 272
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->k:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 273
    if-eqz v0, :cond_41

    .line 274
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->b()V

    .line 275
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/banner/c;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_41

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/banner/c;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_41

    .line 276
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->k:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/banner/c;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Landroid/app/Activity;)V

    .line 279
    :cond_41
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 280
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    move-result-object v0

    .line 281
    if-nez v0, :cond_54

    .line 282
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 283
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/banner/c;->addView(Landroid/view/View;)V

    .line 286
    :cond_54
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->k:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v1, :cond_5b

    .line 287
    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Landroid/view/View;)V

    .line 290
    :cond_5b
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;

    invoke-direct {v1, p0, p2}, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/banner/e;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setCallback(Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;)V

    .line 341
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/a/a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->l:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-direct {v1, v2, p2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/a/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;I)V

    .line 342
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Landroid/view/View;)V

    .line 343
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->d()Landroid/view/View;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/core/a/a;->b(Landroid/view/View;)V

    .line 344
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->k:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 345
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/banner/e$3;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/banner/e$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/banner/e;)V

    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/a/b$a;)V

    .line 354
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/banner/c;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/banner/c;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 356
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->k:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz p1, :cond_95

    .line 357
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->h:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 359
    :cond_95
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setNeedCheckingShow(Z)V

    .line 360
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/banner/e;)V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->b()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/banner/e;Lcom/bytedance/sdk/openadsdk/component/banner/a;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a(Lcom/bytedance/sdk/openadsdk/component/banner/a;)V

    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->k:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    return-object p0
.end method

.method private b()V
    .registers 5

    .line 234
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->d:Lcom/bytedance/sdk/openadsdk/utils/al;

    if-eqz v0, :cond_11

    .line 235
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 236
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->d:Lcom/bytedance/sdk/openadsdk/utils/al;

    const/4 v1, 0x1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->e:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendEmptyMessageDelayed(IJ)Z

    .line 238
    :cond_11
    return-void
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
    .registers 6

    .line 201
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->i:Lcom/bytedance/sdk/openadsdk/dislike/b;

    if-nez v0, :cond_11

    .line 202
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->f:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->l:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/dislike/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->i:Lcom/bytedance/sdk/openadsdk/dislike/b;

    .line 204
    :cond_11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->i:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/b;->setDislikeInteractionCallback(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    .line 205
    return-void
.end method

.method private c()V
    .registers 3

    .line 241
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->d:Lcom/bytedance/sdk/openadsdk/utils/al;

    if-eqz v0, :cond_8

    .line 242
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 244
    :cond_8
    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/component/banner/e;)V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->c()V

    return-void
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Lcom/bytedance/sdk/openadsdk/component/banner/d;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    return-object p0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Landroid/content/Context;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Ljava/lang/String;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->g:Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .registers 3

    .line 209
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 210
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a()V

    .line 212
    :cond_8
    return-void
.end method

.method public getBannerView()Landroid/view/View;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    return-object v0
.end method

.method public getDislikeDialog(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)Lcom/bytedance/sdk/openadsdk/TTAdDislike;
    .registers 3

    .line 145
    if-nez p1, :cond_4

    .line 146
    const/4 p1, 0x0

    return-object p1

    .line 148
    :cond_4
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->b(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    .line 149
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->i:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->a(Lcom/bytedance/sdk/openadsdk/dislike/b;)V

    .line 150
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->i:Lcom/bytedance/sdk/openadsdk/dislike/b;

    return-object p1
.end method

.method public getInteractionType()I
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->f:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_6

    .line 138
    const/4 v0, -0x1

    return v0

    .line 140
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

    .line 182
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->f:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_9

    .line 183
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->as()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 185
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBannerInteractionListener(Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;)V
    .registers 2

    .line 123
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->g:Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;

    .line 124
    return-void
.end method

.method public setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .registers 3

    .line 128
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->h:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->k:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_9

    .line 131
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 133
    :cond_9
    return-void
.end method

.method public setShowDislikeIcon(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
    .registers 2

    .line 155
    if-nez p1, :cond_3

    .line 156
    return-void

    .line 158
    :cond_3
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    .line 159
    return-void
.end method

.method public setSlideIntervalTime(I)V
    .registers 4

    .line 163
    if-gtz p1, :cond_3

    .line 164
    return-void

    .line 166
    :cond_3
    const-string v0, "slide_banner_ad"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->l:Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->b()Lcom/bytedance/sdk/openadsdk/component/banner/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->b:Lcom/bytedance/sdk/openadsdk/component/banner/a;

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a(Lcom/bytedance/sdk/openadsdk/component/banner/c;Lcom/bytedance/sdk/openadsdk/component/banner/a;)V

    .line 169
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->a()V

    .line 170
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->a(I)V

    .line 171
    const v0, 0x1d4c0

    const/16 v1, 0x7530

    if-ge p1, v1, :cond_27

    .line 172
    move p1, v1

    goto :goto_2a

    .line 173
    :cond_27
    if-le p1, v0, :cond_2a

    .line 174
    move p1, v0

    .line 176
    :cond_2a
    :goto_2a
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->e:I

    .line 177
    new-instance p1, Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/al;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/openadsdk/utils/al$a;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->d:Lcom/bytedance/sdk/openadsdk/utils/al;

    .line 178
    return-void
.end method
