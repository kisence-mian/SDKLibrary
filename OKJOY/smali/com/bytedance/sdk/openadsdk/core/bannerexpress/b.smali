.class public Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;
.super Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l;
.source "TTBannerExpressAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/ak$a;


# instance fields
.field a:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

.field private b:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

.field private final c:Landroid/content/Context;

.field private d:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field private f:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private g:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

.field private h:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

.field private i:Lcom/bytedance/sdk/openadsdk/dislike/b;

.field private j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

.field private k:Lcom/bytedance/sdk/openadsdk/utils/ak;

.field private l:I

.field private m:Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;

.field private n:Landroid/content/Context;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 6

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l;-><init>()V

    .line 64
    const-string v0, "banner_ad"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->o:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->c:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 70
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->f:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 71
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->b:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->b:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->c()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->b(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 73
    return-void
.end method

.method private a(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;
    .registers 5

    .prologue
    .line 348
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_17

    .line 349
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 350
    instance-of v2, v0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    if-eqz v2, :cond_13

    .line 351
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    .line 354
    :goto_12
    return-object v0

    .line 348
    :cond_13
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 354
    :cond_17
    const/4 v0, 0x0

    goto :goto_12
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;)Lcom/bytedance/sdk/openadsdk/core/d/k;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    return-object v0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;
    .registers 4

    .prologue
    .line 179
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->B()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    .line 180
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->o:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    .line 182
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private a()V
    .registers 5

    .prologue
    .line 186
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->k:Lcom/bytedance/sdk/openadsdk/utils/ak;

    if-eqz v0, :cond_15

    .line 187
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->k:Lcom/bytedance/sdk/openadsdk/utils/ak;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 188
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->k:Lcom/bytedance/sdk/openadsdk/utils/ak;

    const v1, 0x1b649

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->l:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->sendEmptyMessageDelayed(IJ)Z

    .line 190
    :cond_15
    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
    .registers 5

    .prologue
    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->i:Lcom/bytedance/sdk/openadsdk/dislike/b;

    if-nez v0, :cond_d

    .line 168
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/dislike/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->i:Lcom/bytedance/sdk/openadsdk/dislike/b;

    .line 170
    :cond_d
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->n:Landroid/content/Context;

    .line 171
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->i:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/dislike/b;->setDislikeInteractionCallback(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    .line 172
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->b:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->b:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->c()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 173
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->b:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->c()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->i:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setDislike(Lcom/bytedance/sdk/openadsdk/TTAdDislike;)V

    .line 175
    :cond_2b
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->b(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .registers 4
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/d/k;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 206
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 222
    :cond_4
    :goto_4
    return-void

    .line 209
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->m:Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;

    if-eqz v0, :cond_15

    .line 210
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->i:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/dislike/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 211
    if-eqz p1, :cond_15

    .line 212
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->i:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setDislike(Lcom/bytedance/sdk/openadsdk/TTAdDislike;)V

    .line 216
    :cond_15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    if-eqz v0, :cond_4

    .line 217
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 218
    if-eqz p1, :cond_4

    .line 219
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setOuterDislike(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    goto :goto_4
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    return-object v0
.end method

.method private b()V
    .registers 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->k:Lcom/bytedance/sdk/openadsdk/utils/ak;

    if-eqz v0, :cond_a

    .line 194
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->k:Lcom/bytedance/sdk/openadsdk/utils/ak;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 196
    :cond_a
    return-void
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .registers 3
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/d/k;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 199
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->b:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->d()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->b:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->f()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 200
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->b:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->d()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 201
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->b:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->d()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->b(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 203
    :cond_22
    return-void
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .registers 8
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/d/k;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 229
    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    .line 345
    :cond_5
    :goto_5
    return-void

    .line 233
    :cond_6
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 236
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setBackupListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/c;)V

    .line 248
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 249
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_38

    .line 250
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->b()V

    .line 251
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_38

    .line 252
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Landroid/app/Activity;)V

    .line 255
    :cond_38
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 256
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    move-result-object v0

    .line 257
    if-nez v0, :cond_4b

    .line 258
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 259
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->addView(Landroid/view/View;)V

    .line 262
    :cond_4b
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v1, :cond_54

    .line 263
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Landroid/view/View;)V

    .line 266
    :cond_54
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setCallback(Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;)V

    .line 331
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->o:Ljava/lang/String;

    invoke-direct {v1, v2, p2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;I)V

    .line 332
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Landroid/view/View;)V

    .line 333
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 334
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setClickListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;)V

    .line 336
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->o:Ljava/lang/String;

    invoke-direct {v1, v2, p2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;I)V

    .line 337
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Landroid/view/View;)V

    .line 338
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 339
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setClickCreativeListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;)V

    .line 341
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v1, :cond_8f

    .line 342
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->h:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 344
    :cond_8f
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setNeedCheckingShow(Z)V

    goto/16 :goto_5
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;)Lcom/bytedance/sdk/openadsdk/dislike/b;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->i:Lcom/bytedance/sdk/openadsdk/dislike/b;

    return-object v0
.end method

.method private c()V
    .registers 7

    .prologue
    .line 387
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->f:Lcom/bytedance/sdk/openadsdk/AdSlot;

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$3;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;)V

    const/16 v5, 0x1388

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;ILcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$a;I)V

    .line 402
    return-void
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;)V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a()V

    return-void
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;)V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->b()V

    return-void
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->g:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    return-object v0
.end method

.method static synthetic i(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;)Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->b:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    return-object v0
.end method

.method static synthetic j(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;)Lcom/bytedance/sdk/openadsdk/AdSlot;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->f:Lcom/bytedance/sdk/openadsdk/AdSlot;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 406
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x1b649

    if-ne v0, v1, :cond_a

    .line 407
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->c()V

    .line 409
    :cond_a
    return-void
.end method

.method public destroy()V
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->b:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    if-eqz v0, :cond_9

    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->b:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->b()V

    .line 132
    :cond_9
    return-void
.end method

.method public getExpressAdView()Landroid/view/View;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->b:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    return-object v0
.end method

.method public getFilterWords()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->R()Ljava/util/List;

    move-result-object v0

    goto :goto_5
.end method

.method public getImageMode()I
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-nez v0, :cond_6

    .line 84
    const/4 v0, -0x1

    .line 86
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->Q()I

    move-result v0

    goto :goto_5
.end method

.method public getInteractionType()I
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-nez v0, :cond_6

    .line 117
    const/4 v0, -0x1

    .line 119
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

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
    .line 359
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_b

    .line 360
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->X()Ljava/util/Map;

    move-result-object v0

    .line 362
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public render()V
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->b:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->a()V

    .line 125
    return-void
.end method

.method public setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
    .registers 3

    .prologue
    .line 143
    if-eqz p2, :cond_4

    if-nez p1, :cond_5

    .line 148
    :cond_4
    :goto_4
    return-void

    .line 146
    :cond_5
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->m:Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;

    .line 147
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    goto :goto_4
.end method

.method public setDislikeDialog(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V
    .registers 3

    .prologue
    .line 152
    if-nez p1, :cond_8

    .line 153
    const-string v0, "dialog is null, please check"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;)V

    .line 161
    :cond_7
    :goto_7
    return-void

    .line 156
    :cond_8
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    .line 157
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 158
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->b:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->b:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->c()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 159
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->b:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->c()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setOuterDislike(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    goto :goto_7
.end method

.method public setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .registers 4

    .prologue
    .line 108
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->h:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    .line 109
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_d

    .line 110
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->h:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 112
    :cond_d
    return-void
.end method

.method public setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;)V
    .registers 3

    .prologue
    .line 102
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->g:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->b:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->a(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    .line 104
    return-void
.end method

.method public setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V
    .registers 3

    .prologue
    .line 96
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->g:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    .line 97
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->b:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->a(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    .line 98
    return-void
.end method

.method public setSlideIntervalTime(I)V
    .registers 6

    .prologue
    const v1, 0x1d4c0

    const/16 v0, 0x7530

    .line 367
    if-gtz p1, :cond_8

    .line 381
    :goto_7
    return-void

    .line 370
    :cond_8
    const-string v2, "slide_banner_ad"

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->o:Ljava/lang/String;

    .line 371
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->b:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->c()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-direct {p0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->b(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 373
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->b:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->a(I)V

    .line 374
    if-ge p1, v0, :cond_2f

    move p1, v0

    .line 379
    :cond_21
    :goto_21
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->l:I

    .line 380
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/utils/ak;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/openadsdk/utils/ak$a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->k:Lcom/bytedance/sdk/openadsdk/utils/ak;

    goto :goto_7

    .line 376
    :cond_2f
    if-le p1, v1, :cond_21

    move p1, v1

    .line 377
    goto :goto_21
.end method
