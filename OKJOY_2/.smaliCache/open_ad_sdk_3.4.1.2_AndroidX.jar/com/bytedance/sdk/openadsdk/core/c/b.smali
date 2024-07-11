.class public Lcom/bytedance/sdk/openadsdk/core/c/b;
.super Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l;
.source "TTInteractionExpressAdImpl.java"


# instance fields
.field protected a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

.field protected final b:Landroid/content/Context;

.field protected c:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field protected d:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

.field protected e:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;

.field protected f:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

.field protected g:Lcom/bytedance/sdk/openadsdk/dislike/b;

.field protected h:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

.field protected i:Landroid/app/Dialog;

.field protected j:Landroid/widget/ImageView;

.field protected k:Landroid/widget/FrameLayout;

.field l:Lcom/bytedance/sdk/openadsdk/core/c/a;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 5

    .line 65
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l;-><init>()V

    .line 62
    const-string v0, "interaction"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->o:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->b:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 68
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/core/c/b;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V

    .line 69
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/c/b;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 70
    return-void
.end method

.method private a(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;
    .registers 5

    .line 307
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 308
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 309
    instance-of v2, v1, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    if-eqz v2, :cond_12

    .line 310
    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    return-object v1

    .line 307
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 313
    :cond_15
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;
    .registers 4

    .line 191
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->T()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    .line 192
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->o:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object p1

    return-object p1

    .line 194
    :cond_10
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/c/b;)Ljava/lang/String;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->o:Ljava/lang/String;

    return-object p0
.end method

.method private a()V
    .registers 6

    .line 381
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->o:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;I)V

    .line 382
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Landroid/view/View;)V

    .line 383
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->b(Landroid/view/View;)V

    .line 384
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->h:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 386
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V

    .line 387
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setClickListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;)V

    .line 389
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->o:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;I)V

    .line 390
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Landroid/view/View;)V

    .line 391
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->b(Landroid/view/View;)V

    .line 393
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V

    .line 394
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->h:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 395
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/c/b$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/c/b$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/c/b;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Lcom/bytedance/sdk/openadsdk/core/a/b$a;)V

    .line 405
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setClickCreativeListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;)V

    .line 406
    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .registers 4

    .line 329
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->i:Landroid/app/Dialog;

    if-nez v0, :cond_20

    .line 330
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/n;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->i:Landroid/app/Dialog;

    .line 331
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/c/b$3;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/c/b$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/c/b;)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 345
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->i:Landroid/app/Dialog;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/n;

    const/4 v0, 0x1

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/c/b$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/c/b$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/c/b;)V

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/n;->a(ZLcom/bytedance/sdk/openadsdk/core/n$a;)V

    .line 371
    :cond_20
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->l:Lcom/bytedance/sdk/openadsdk/core/c/a;

    if-eqz p1, :cond_29

    .line 372
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->i:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Landroid/app/Dialog;)V

    .line 374
    :cond_29
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->i:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_36

    .line 375
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->i:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 377
    :cond_36
    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
    .registers 6

    .line 180
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->g:Lcom/bytedance/sdk/openadsdk/dislike/b;

    if-nez v0, :cond_12

    .line 181
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->o:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/dislike/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->g:Lcom/bytedance/sdk/openadsdk/dislike/b;

    .line 182
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/dislike/b;->setIsInteractionAd()V

    .line 184
    :cond_12
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->g:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/dislike/b;->setDislikeInteractionCallback(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    .line 185
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz p1, :cond_20

    .line 186
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->g:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setDislike(Lcom/bytedance/sdk/openadsdk/dislike/b;)V

    .line 188
    :cond_20
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 5

    .line 202
    nop

    .line 203
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 206
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/c/b$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/c/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/c/b;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setBackupListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/c;)V

    .line 220
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/c/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->h:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 221
    if-eqz v0, :cond_31

    .line 222
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->b()V

    .line 223
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_31

    .line 224
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->h:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Landroid/app/Activity;)V

    .line 227
    :cond_31
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 228
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/c/b;->a(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    move-result-object v0

    .line 229
    if-nez v0, :cond_44

    .line 230
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 231
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->addView(Landroid/view/View;)V

    .line 234
    :cond_44
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->h:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz p1, :cond_4b

    .line 235
    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Landroid/view/View;)V

    .line 238
    :cond_4b
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/c/b$2;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/c/b$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/c/b;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setCallback(Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;)V

    .line 289
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->h:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/c/b;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V

    .line 290
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setNeedCheckingShow(Z)V

    .line 291
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V
    .registers 5

    .line 295
    if-eqz p1, :cond_20

    if-nez p2, :cond_5

    goto :goto_20

    .line 298
    :cond_5
    nop

    .line 299
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz p2, :cond_f

    .line 300
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object p2

    goto :goto_11

    .line 299
    :cond_f
    const-string p2, ""

    .line 302
    :goto_11
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l$a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->f:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    invoke-direct {v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l$a;-><init>(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->n:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l$a;

    .line 303
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->n:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l$a;

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 304
    return-void

    .line 296
    :cond_20
    :goto_20
    return-void
.end method

.method private b()V
    .registers 2

    .line 409
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->i:Landroid/app/Dialog;

    if-eqz v0, :cond_7

    .line 410
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 412
    :cond_7
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/c/b;)V
    .registers 1

    .line 45
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/c/b;->a()V

    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/c/b;)V
    .registers 1

    .line 45
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/c/b;->b()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V
    .registers 6

    .line 73
    new-instance p4, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->o:Ljava/lang/String;

    invoke-direct {p4, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 74
    return-void
.end method

.method public destroy()V
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_7

    .line 144
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->k()V

    .line 146
    :cond_7
    return-void
.end method

.method public getDislikeDialog(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/TTAdDislike;
    .registers 3

    .line 170
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->g:Lcom/bytedance/sdk/openadsdk/dislike/b;

    if-nez v0, :cond_8

    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/c/b;->a(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    .line 173
    :cond_8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->g:Lcom/bytedance/sdk/openadsdk/dislike/b;

    return-object p1
.end method

.method public getExpressAdView()Landroid/view/View;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

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

    .line 91
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

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

    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_6

    .line 84
    const/4 v0, -0x1

    return v0

    .line 86
    :cond_6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ak()I

    move-result v0

    return v0
.end method

.method public getInteractionType()I
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_6

    .line 131
    const/4 v0, -0x1

    return v0

    .line 133
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

    .line 122
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_9

    .line 123
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->as()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 125
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPersonalizationPrompt()Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

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

    .line 138
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->h()V

    .line 139
    return-void
.end method

.method public setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
    .registers 3

    .line 150
    if-eqz p2, :cond_9

    if-nez p1, :cond_5

    goto :goto_9

    .line 153
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/c/b;->a(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    .line 154
    return-void

    .line 151
    :cond_9
    :goto_9
    return-void
.end method

.method public setDislikeDialog(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V
    .registers 3

    .line 158
    if-nez p1, :cond_8

    .line 159
    const-string p1, "dialog is null, please check"

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;)V

    .line 160
    return-void

    .line 162
    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 163
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_14

    .line 164
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setOuterDislike(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    .line 166
    :cond_14
    return-void
.end method

.method public setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .registers 3

    .line 114
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->f:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    .line 115
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->n:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l$a;

    if-eqz v0, :cond_b

    .line 116
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->n:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l$a;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l$a;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 118
    :cond_b
    return-void
.end method

.method public setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;)V
    .registers 3

    .line 107
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->e:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;

    .line 108
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->d:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    .line 109
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    .line 110
    return-void
.end method

.method public setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V
    .registers 3

    .line 101
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->d:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    .line 102
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    .line 103
    return-void
.end method

.method public showInteractionExpressAd(Landroid/app/Activity;)V
    .registers 4

    .line 318
    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1d

    .line 321
    :cond_9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_19

    .line 322
    const-string p1, "\u4e0d\u80fd\u5728\u5b50\u7ebf\u7a0b\u8c03\u7528 TTInteractionExpressAd.showInteractionAd"

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;)V

    .line 323
    return-void

    .line 325
    :cond_19
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/c/b;->a(Landroid/app/Activity;)V

    .line 326
    return-void

    .line 319
    :cond_1d
    :goto_1d
    return-void
.end method
