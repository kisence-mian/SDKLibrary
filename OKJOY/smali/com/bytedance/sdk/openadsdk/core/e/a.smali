.class public Lcom/bytedance/sdk/openadsdk/core/e/a;
.super Ljava/lang/Object;
.source "TTNativeAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeAd;


# instance fields
.field private a:I

.field protected final g:Lcom/bytedance/sdk/openadsdk/core/n;

.field protected final h:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field protected final i:Landroid/content/Context;

.field protected j:Lcom/bytedance/sdk/openadsdk/TTAdDislike;

.field protected k:Lcom/bytedance/sdk/openadsdk/DownloadStatusController;

.field protected l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;I)V
    .registers 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/d/k;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "materialMeta\u4e0d\u80fd\u4e3anull"

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/y;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 59
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->i:Landroid/content/Context;

    .line 60
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->l:I

    .line 61
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/n;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->i:Landroid/content/Context;

    invoke-direct {p0, p3}, Lcom/bytedance/sdk/openadsdk/core/e/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, p2, v2}, Lcom/bytedance/sdk/openadsdk/core/n;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTNativeAd;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->g:Lcom/bytedance/sdk/openadsdk/core/n;

    .line 62
    return-void
.end method

.method private a(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 326
    const-string v0, "banner_ad"

    .line 327
    packed-switch p1, :pswitch_data_14

    .line 341
    :pswitch_5
    const-string v0, "embeded_ad"

    .line 344
    :goto_7
    return-object v0

    .line 329
    :pswitch_8
    const-string v0, "banner_ad"

    goto :goto_7

    .line 332
    :pswitch_b
    const-string v0, "interaction"

    goto :goto_7

    .line 335
    :pswitch_e
    const-string v0, "embeded_ad"

    goto :goto_7

    .line 338
    :pswitch_11
    const-string v0, "draw_ad"

    goto :goto_7

    .line 327
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_8
        :pswitch_b
        :pswitch_5
        :pswitch_5
        :pswitch_e
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_11
    .end packed-switch
.end method

.method private a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 106
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 107
    if-eqz p1, :cond_1f

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 108
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    .line 109
    :goto_13
    if-ge v1, v3, :cond_1f

    .line 110
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 114
    :cond_1f
    if-eqz p2, :cond_37

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_37

    .line 115
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 116
    :goto_2b
    if-ge v0, v1, :cond_37

    .line 117
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 120
    :cond_37
    return-object v2
.end method

.method private a(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 316
    .line 317
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->i:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->i:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_12

    .line 319
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->i:Landroid/content/Context;

    .line 321
    :cond_12
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/dislike/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->j:Lcom/bytedance/sdk/openadsdk/TTAdDislike;

    .line 322
    return-void
.end method

.method private a(Z)V
    .registers 5

    .prologue
    .line 348
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->d(Ljava/lang/String;)I

    move-result v0

    .line 349
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a/d;->b()Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->l:I

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/f/a/d;->a(I)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/f/a/d;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    .line 350
    if-eqz p1, :cond_26

    .line 351
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/f/a;->i(Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    .line 355
    :goto_25
    return-void

    .line 353
    :cond_26
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/f/a;->j(Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    goto :goto_25
.end method

.method private a()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 358
    .line 359
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-nez v2, :cond_7

    .line 370
    :cond_6
    :goto_6
    return v1

    .line 362
    :cond_7
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->B()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_6

    .line 366
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->a:I

    if-nez v2, :cond_20

    .line 367
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ah;->d(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->a:I

    .line 369
    :cond_20
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v2

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->a:I

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/h/l;->d(I)I

    move-result v2

    if-ne v2, v0, :cond_2e

    :goto_2c
    move v1, v0

    .line 370
    goto :goto_6

    :cond_2e
    move v0, v1

    .line 369
    goto :goto_2c
.end method


# virtual methods
.method public getAdLogo()Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 144
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_ad_logo_small"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getAdView()Landroid/view/View;
    .registers 2

    .prologue
    .line 301
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppCommentNum()I
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->N()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 183
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->N()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->f()I

    move-result v0

    .line 185
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getAppScore()I
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->N()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 175
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->N()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->e()I

    move-result v0

    .line 177
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getAppSize()I
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->N()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 191
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->N()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->g()I

    move-result v0

    .line 193
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getButtonText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->L()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 162
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->J()Ljava/lang/String;

    move-result-object v0

    .line 164
    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->K()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public getDislikeDialog(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/TTAdDislike;
    .registers 3

    .prologue
    .line 240
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->j:Lcom/bytedance/sdk/openadsdk/TTAdDislike;

    if-nez v0, :cond_7

    .line 241
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/e/a;->a(Landroid/app/Activity;)V

    .line 243
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->j:Lcom/bytedance/sdk/openadsdk/TTAdDislike;

    return-object v0
.end method

.method public getDislikeDialog(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)Lcom/bytedance/sdk/openadsdk/TTAdDislike;
    .registers 4

    .prologue
    .line 248
    if-nez p1, :cond_a

    .line 249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dialog is null, please check"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 253
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/e/a$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/e/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/e/a;Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    return-object v0
.end method

.method public getDownloadStatusController()Lcom/bytedance/sdk/openadsdk/DownloadStatusController;
    .registers 3

    .prologue
    .line 271
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->k:Lcom/bytedance/sdk/openadsdk/DownloadStatusController;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->g:Lcom/bytedance/sdk/openadsdk/core/n;

    if-eqz v0, :cond_17

    .line 273
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->g:Lcom/bytedance/sdk/openadsdk/core/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_17

    .line 275
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/e/a$2;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/e/a$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/e/a;Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->k:Lcom/bytedance/sdk/openadsdk/DownloadStatusController;

    .line 288
    :cond_17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->k:Lcom/bytedance/sdk/openadsdk/DownloadStatusController;

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
    .line 235
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->R()Ljava/util/List;

    move-result-object v0

    goto :goto_5
.end method

.method public getIcon()Lcom/bytedance/sdk/openadsdk/TTImage;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->C()Lcom/bytedance/sdk/openadsdk/core/d/j;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->C()Lcom/bytedance/sdk/openadsdk/core/d/j;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a(Lcom/bytedance/sdk/openadsdk/core/d/j;)Lcom/bytedance/sdk/openadsdk/TTImage;

    move-result-object v0

    goto :goto_9
.end method

.method public getImageList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/TTImage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 209
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->F()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->F()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    .line 210
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->F()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/j;

    .line 211
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a(Lcom/bytedance/sdk/openadsdk/core/d/j;)Lcom/bytedance/sdk/openadsdk/TTImage;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 214
    :cond_37
    return-object v1
.end method

.method public getImageMode()I
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-nez v0, :cond_6

    .line 228
    const/4 v0, -0x1

    .line 230
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->Q()I

    move-result v0

    goto :goto_5
.end method

.method public getInteractionType()I
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-nez v0, :cond_6

    .line 220
    const/4 v0, -0x1

    .line 222
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

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
    .line 306
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_b

    .line 307
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->X()Ljava/util/Map;

    move-result-object v0

    .line 309
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getSource()Ljava/lang/String;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->A()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->N()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->N()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 151
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->N()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 156
    :goto_22
    return-object v0

    .line 153
    :cond_23
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/a;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 154
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/a;->getSource()Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    .line 156
    :cond_32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->J()Ljava/lang/String;

    move-result-object v0

    goto :goto_22
.end method

.method public getVideoCoverImage()Lcom/bytedance/sdk/openadsdk/TTImage;
    .registers 5

    .prologue
    .line 133
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 134
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->f()Ljava/lang/String;

    move-result-object v1

    .line 135
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->a()I

    move-result v2

    .line 136
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->b()I

    move-result v3

    .line 137
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TTImage;

    invoke-direct {v0, v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/TTImage;-><init>(IILjava/lang/String;)V

    .line 139
    :goto_2f
    return-object v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V
    .registers 6
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 66
    const-string v0, "container\u4e0d\u80fd\u4e3anull"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/y;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    const-string v0, "clickView\u4e0d\u80fd\u4e3anull"

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/y;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/bytedance/sdk/openadsdk/core/e/a;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    .line 72
    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V
    .registers 12
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    const-string v0, "container\u4e0d\u80fd\u4e3anull"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/y;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    const-string v0, "clickView\u4e0d\u80fd\u4e3anull"

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/y;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_37

    move v0, v1

    :goto_13
    const-string v3, "clickViews\u6570\u91cf\u5fc5\u987b\u5927\u4e8e\u7b49\u4e8e1"

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/y;->a(ZLjava/lang/String;)V

    .line 90
    if-eqz p3, :cond_39

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_39

    .line 91
    :goto_20
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/e/a;->a(Z)V

    .line 94
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 95
    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/e/a;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 98
    :goto_2d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->g:Lcom/bytedance/sdk/openadsdk/core/n;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/n;->a(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    .line 100
    return-void

    :cond_37
    move v0, v2

    .line 87
    goto :goto_13

    :cond_39
    move v1, v2

    .line 90
    goto :goto_20

    :cond_3b
    move-object v3, p3

    goto :goto_2d
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V
    .registers 11
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    const-string v0, "container\u4e0d\u80fd\u4e3anull"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/y;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    const-string v0, "clickView\u4e0d\u80fd\u4e3anull"

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/y;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_20

    const/4 v0, 0x1

    :goto_11
    const-string v1, "clickViews\u6570\u91cf\u5fc5\u987b\u5927\u4e8e\u7b49\u4e8e1"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/y;->a(ZLjava/lang/String;)V

    .line 80
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/e/a;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    .line 81
    return-void

    .line 78
    :cond_20
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public setActivityForDownloadApp(Landroid/app/Activity;)V
    .registers 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 294
    if-eqz p1, :cond_7

    .line 295
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->g:Lcom/bytedance/sdk/openadsdk/core/n;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/n;->a(Landroid/app/Activity;)V

    .line 297
    :cond_7
    return-void
.end method

.method public setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .registers 3

    .prologue
    .line 126
    const-string v0, "downloadListener\u4e0d\u80fd\u4e3anull"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/y;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a;->g:Lcom/bytedance/sdk/openadsdk/core/n;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/n;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 128
    return-void
.end method
