.class public Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;
.super Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l;
.source "TTBannerExpressAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/al$a;


# instance fields
.field protected a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

.field protected final b:Landroid/content/Context;

.field protected c:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field protected d:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field protected e:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

.field protected f:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

.field g:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

.field private h:Lcom/bytedance/sdk/openadsdk/dislike/b;

.field private i:Lcom/bytedance/sdk/openadsdk/utils/al;

.field private j:I

.field private k:Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;

.field private l:Landroid/content/Context;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 5

    .line 66
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l;-><init>()V

    .line 63
    const-string v0, "banner_ad"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->o:Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->b:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 69
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->d:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 70
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 71
    return-void
.end method

.method private a(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;
    .registers 5

    .line 382
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 383
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 384
    instance-of v2, v1, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    if-eqz v2, :cond_12

    .line 385
    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    return-object v1

    .line 382
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 388
    :cond_15
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;)Lcom/bytedance/sdk/openadsdk/dislike/b;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->h:Lcom/bytedance/sdk/openadsdk/dislike/b;

    return-object p0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;
    .registers 4

    .line 194
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->T()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    .line 195
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->o:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object p1

    .line 196
    return-object p1

    .line 198
    :cond_10
    const/4 p1, 0x0

    return-object p1
.end method

.method private a()V
    .registers 5

    .line 202
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->i:Lcom/bytedance/sdk/openadsdk/utils/al;

    if-eqz v0, :cond_13

    .line 203
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 204
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->i:Lcom/bytedance/sdk/openadsdk/utils/al;

    const v1, 0x1b649

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->j:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendEmptyMessageDelayed(IJ)Z

    .line 206
    :cond_13
    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
    .registers 6

    .line 183
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->h:Lcom/bytedance/sdk/openadsdk/dislike/b;

    if-nez v0, :cond_f

    .line 184
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->o:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/dislike/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->h:Lcom/bytedance/sdk/openadsdk/dislike/b;

    .line 186
    :cond_f
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->l:Landroid/content/Context;

    .line 187
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->h:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/dislike/b;->setDislikeInteractionCallback(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    .line 188
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->getCurView()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 189
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->getCurView()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->h:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setDislike(Lcom/bytedance/sdk/openadsdk/dislike/b;)V

    .line 191
    :cond_2b
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->b(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V
    .registers 5

    .line 369
    if-eqz p1, :cond_20

    if-nez p2, :cond_5

    goto :goto_20

    .line 372
    :cond_5
    nop

    .line 373
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz p2, :cond_f

    .line 374
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object p2

    goto :goto_11

    .line 373
    :cond_f
    const-string p2, ""

    .line 376
    :goto_11
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l$a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->f:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    invoke-direct {v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l$a;-><init>(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->n:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l$a;

    .line 377
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->n:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l$a;

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 378
    return-void

    .line 370
    :cond_20
    :goto_20
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;)Ljava/lang/String;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->o:Ljava/lang/String;

    return-object p0
.end method

.method private b()V
    .registers 3

    .line 209
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->i:Lcom/bytedance/sdk/openadsdk/utils/al;

    if-eqz v0, :cond_8

    .line 210
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 212
    :cond_8
    return-void
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 3

    .line 215
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->getNextView()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->b()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 216
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->getNextView()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->b(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 217
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->getNextView()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 219
    :cond_22
    return-void
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 4

    .line 222
    if-eqz p1, :cond_24

    if-nez p2, :cond_5

    goto :goto_24

    .line 225
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->k:Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;

    if-eqz v0, :cond_15

    .line 226
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->h:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/dislike/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 227
    if-eqz p1, :cond_15

    .line 228
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->h:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setDislike(Lcom/bytedance/sdk/openadsdk/dislike/b;)V

    .line 232
    :cond_15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->g:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    if-eqz v0, :cond_23

    .line 233
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 234
    if-eqz p1, :cond_23

    .line 235
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->g:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setOuterDislike(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    .line 238
    :cond_23
    return-void

    .line 223
    :cond_24
    :goto_24
    return-void
.end method

.method private c()V
    .registers 8

    .line 421
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->d:Lcom/bytedance/sdk/openadsdk/AdSlot;

    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$3;

    invoke-direct {v5, p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v6, 0x1388

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;ILcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$a;I)V

    .line 440
    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;)V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a()V

    return-void
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;)V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->b()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 5

    .line 74
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    .line 75
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->getCurView()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 76
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .registers 3

    .line 444
    iget p1, p1, Landroid/os/Message;->what:I

    const v0, 0x1b649

    if-ne p1, v0, :cond_a

    .line 445
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->c()V

    .line 447
    :cond_a
    return-void
.end method

.method protected a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 9

    .line 245
    if-eqz p1, :cond_84

    if-nez p2, :cond_6

    goto/16 :goto_84

    .line 248
    :cond_6
    nop

    .line 249
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 250
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    .line 252
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$1;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setBackupListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/c;)V

    .line 268
    if-eqz v0, :cond_31

    .line 269
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->b()V

    .line 270
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_31

    .line 271
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Landroid/app/Activity;)V

    .line 274
    :cond_31
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 275
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    move-result-object v1

    .line 276
    if-nez v1, :cond_44

    .line 277
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 278
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->addView(Landroid/view/View;)V

    .line 281
    :cond_44
    if-eqz v0, :cond_49

    .line 282
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Landroid/view/View;)V

    .line 285
    :cond_49
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$2;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setCallback(Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;)V

    .line 349
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->o:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-direct {v2, v3, p2, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;I)V

    .line 350
    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Landroid/view/View;)V

    .line 351
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 353
    invoke-virtual {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V

    .line 354
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setClickListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;)V

    .line 356
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->o:Ljava/lang/String;

    invoke-direct {v2, v3, p2, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;I)V

    .line 357
    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Landroid/view/View;)V

    .line 358
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 360
    invoke-virtual {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V

    .line 361
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setClickCreativeListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;)V

    .line 362
    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V

    .line 363
    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setNeedCheckingShow(Z)V

    .line 364
    return-void

    .line 246
    :cond_84
    :goto_84
    return-void
.end method

.method public destroy()V
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    if-eqz v0, :cond_7

    .line 138
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->d()V

    .line 140
    :cond_7
    return-void
.end method

.method public getDislikeDialog(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/TTAdDislike;
    .registers 3

    .line 173
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->h:Lcom/bytedance/sdk/openadsdk/dislike/b;

    if-nez v0, :cond_8

    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    .line 176
    :cond_8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->h:Lcom/bytedance/sdk/openadsdk/dislike/b;

    return-object p1
.end method

.method public getExpressAdView()Landroid/view/View;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

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

    .line 94
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->al()Ljava/util/List;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public getImageMode()I
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_6

    .line 87
    const/4 v0, -0x1

    return v0

    .line 89
    :cond_6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ak()I

    move-result v0

    return v0
.end method

.method public getInteractionType()I
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_6

    .line 125
    const/4 v0, -0x1

    return v0

    .line 127
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

    .line 393
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_9

    .line 394
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->as()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 396
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPersonalizationPrompt()Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->am()Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public render()V
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->e()V

    .line 133
    return-void
.end method

.method public setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
    .registers 3

    .line 151
    if-eqz p2, :cond_b

    if-nez p1, :cond_5

    goto :goto_b

    .line 154
    :cond_5
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->k:Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    .line 156
    return-void

    .line 152
    :cond_b
    :goto_b
    return-void
.end method

.method public setDislikeDialog(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V
    .registers 3

    .line 160
    if-nez p1, :cond_8

    .line 161
    const-string p1, "dialog is null, please check"

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;)V

    .line 162
    return-void

    .line 164
    :cond_8
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->g:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    .line 165
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->getCurView()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->getCurView()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setOuterDislike(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    .line 169
    :cond_22
    return-void
.end method

.method public setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .registers 3

    .line 116
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->f:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    .line 117
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->n:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l$a;

    if-eqz v0, :cond_b

    .line 118
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->n:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l$a;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l$a;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 120
    :cond_b
    return-void
.end method

.method public setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;)V
    .registers 3

    .line 110
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->e:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    .line 111
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    .line 112
    return-void
.end method

.method public setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V
    .registers 3

    .line 104
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->e:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    .line 105
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    .line 106
    return-void
.end method

.method public setSlideIntervalTime(I)V
    .registers 4

    .line 401
    if-gtz p1, :cond_3

    .line 402
    return-void

    .line 404
    :cond_3
    const-string v0, "slide_banner_ad"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->o:Ljava/lang/String;

    .line 405
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->getCurView()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 407
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->setDuration(I)V

    .line 408
    const v0, 0x1d4c0

    const/16 v1, 0x7530

    if-ge p1, v1, :cond_22

    .line 409
    move p1, v1

    goto :goto_25

    .line 410
    :cond_22
    if-le p1, v0, :cond_25

    .line 411
    move p1, v0

    .line 413
    :cond_25
    :goto_25
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->j:I

    .line 414
    new-instance p1, Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/al;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/openadsdk/utils/al$a;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->i:Lcom/bytedance/sdk/openadsdk/utils/al;

    .line 415
    return-void
.end method
