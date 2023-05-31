.class public Lcom/bytedance/sdk/openadsdk/core/c/b;
.super Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l;
.source "TTInteractionExpressAdImpl.java"


# instance fields
.field a:Lcom/bytedance/sdk/openadsdk/core/c/a;

.field private b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

.field private final c:Landroid/content/Context;

.field private d:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field private f:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

.field private g:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;

.field private h:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

.field private i:Lcom/bytedance/sdk/openadsdk/dislike/b;

.field private j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

.field private k:Landroid/app/Dialog;

.field private l:Landroid/widget/FrameLayout;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 6

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l;-><init>()V

    .line 60
    const-string v0, "interaction"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->m:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->c:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 66
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->m:Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c/b;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/c/b;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .registers 2

    .prologue
    .line 44
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->l:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method private a(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;
    .registers 5

    .prologue
    .line 301
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_17

    .line 302
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 303
    instance-of v2, v0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    if-eqz v2, :cond_13

    .line 304
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    .line 307
    :goto_12
    return-object v0

    .line 301
    :cond_13
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 307
    :cond_17
    const/4 v0, 0x0

    goto :goto_12
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/c/b;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    return-object v0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;
    .registers 4

    .prologue
    .line 173
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->B()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    .line 174
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->m:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    .line 176
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private a()V
    .registers 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->k:Landroid/app/Dialog;

    if-eqz v0, :cond_9

    .line 364
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->k:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 366
    :cond_9
    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 323
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->k:Landroid/app/Dialog;

    if-nez v0, :cond_22

    .line 324
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/m;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->k:Landroid/app/Dialog;

    .line 325
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->k:Landroid/app/Dialog;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/c/b$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/c/b$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/c/b;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 340
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->k:Landroid/app/Dialog;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/m;

    const/4 v1, 0x1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/c/b$5;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/c/b$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/c/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/m;->a(ZLcom/bytedance/sdk/openadsdk/core/m$a;)V

    .line 354
    :cond_22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->a:Lcom/bytedance/sdk/openadsdk/core/c/a;

    if-eqz v0, :cond_2d

    .line 355
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->a:Lcom/bytedance/sdk/openadsdk/core/c/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->k:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Landroid/app/Dialog;)V

    .line 357
    :cond_2d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->k:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 358
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->k:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 360
    :cond_3a
    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
    .registers 5

    .prologue
    .line 162
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->i:Lcom/bytedance/sdk/openadsdk/dislike/b;

    if-nez v0, :cond_d

    .line 163
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/dislike/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->i:Lcom/bytedance/sdk/openadsdk/dislike/b;

    .line 165
    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->i:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/dislike/b;->setDislikeInteractionCallback(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_1d

    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->i:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setDislike(Lcom/bytedance/sdk/openadsdk/TTAdDislike;)V

    .line 169
    :cond_1d
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/d/k;)V
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
    const/4 v4, 0x3

    .line 184
    .line 185
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 188
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/c/b$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/c/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/c/b;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setBackupListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/c;)V

    .line 198
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/c/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 199
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_35

    .line 200
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->b()V

    .line 201
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_35

    .line 202
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Landroid/app/Activity;)V

    .line 205
    :cond_35
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 206
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/c/b;->a(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    move-result-object v0

    .line 207
    if-nez v0, :cond_48

    .line 208
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 209
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->addView(Landroid/view/View;)V

    .line 212
    :cond_48
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v1, :cond_51

    .line 213
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Landroid/view/View;)V

    .line 216
    :cond_51
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/c/b$2;

    invoke-direct {v1, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/c/b$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/c/b;Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setCallback(Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;)V

    .line 273
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->m:Ljava/lang/String;

    invoke-direct {v1, v2, p2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;I)V

    .line 274
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Landroid/view/View;)V

    .line 275
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 276
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setClickListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;)V

    .line 278
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->m:Ljava/lang/String;

    invoke-direct {v1, v2, p2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;I)V

    .line 279
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Landroid/view/View;)V

    .line 280
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 281
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/c/b$3;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/c/b$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/c/b;)V

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Lcom/bytedance/sdk/openadsdk/core/a/b$a;)V

    .line 291
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setClickCreativeListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;)V

    .line 294
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v1, :cond_98

    .line 295
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->h:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 297
    :cond_98
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setNeedCheckingShow(Z)V

    .line 298
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/c/b;)Lcom/bytedance/sdk/openadsdk/core/d/k;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    return-object v0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/c/b;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    return-object v0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/core/c/b;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/core/c/b;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/core/c/b;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->f:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    return-object v0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/core/c/b;)V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/c/b;->a()V

    return-void
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/core/c/b;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->g:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;

    return-object v0
.end method

.method static synthetic i(Lcom/bytedance/sdk/openadsdk/core/c/b;)Landroid/widget/FrameLayout;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->l:Landroid/widget/FrameLayout;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_9

    .line 134
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->k()V

    .line 136
    :cond_9
    return-void
.end method

.method public getExpressAdView()Landroid/view/View;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

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
    .line 86
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->R()Ljava/util/List;

    move-result-object v0

    goto :goto_5
.end method

.method public getImageMode()I
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-nez v0, :cond_6

    .line 79
    const/4 v0, -0x1

    .line 81
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->Q()I

    move-result v0

    goto :goto_5
.end method

.method public getInteractionType()I
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-nez v0, :cond_6

    .line 121
    const/4 v0, -0x1

    .line 123
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

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
    .line 112
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_b

    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->X()Ljava/util/Map;

    move-result-object v0

    .line 115
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public render()V
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->h()V

    .line 129
    return-void
.end method

.method public setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
    .registers 3

    .prologue
    .line 140
    if-eqz p2, :cond_4

    if-nez p1, :cond_5

    .line 144
    :cond_4
    :goto_4
    return-void

    .line 143
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/c/b;->a(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    goto :goto_4
.end method

.method public setDislikeDialog(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V
    .registers 3

    .prologue
    .line 148
    if-nez p1, :cond_8

    .line 149
    const-string v0, "dialog is null, please check"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;)V

    .line 156
    :cond_7
    :goto_7
    return-void

    .line 152
    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 153
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_7

    .line 154
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setOuterDislike(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    goto :goto_7
.end method

.method public setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .registers 4

    .prologue
    .line 104
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->h:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    .line 105
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_d

    .line 106
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->j:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->h:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 108
    :cond_d
    return-void
.end method

.method public setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;)V
    .registers 3

    .prologue
    .line 97
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->g:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;

    .line 98
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->f:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    .line 100
    return-void
.end method

.method public setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V
    .registers 3

    .prologue
    .line 91
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->f:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    .line 93
    return-void
.end method

.method public showInteractionExpressAd(Landroid/app/Activity;)V
    .registers 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 312
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 320
    :cond_8
    :goto_8
    return-void

    .line 315
    :cond_9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_19

    .line 316
    const-string v0, "\u4e0d\u80fd\u5728\u5b50\u7ebf\u7a0b\u8c03\u7528 TTInteractionExpressAd.showInteractionAd"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;)V

    goto :goto_8

    .line 319
    :cond_19
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/c/b;->a(Landroid/app/Activity;)V

    goto :goto_8
.end method
