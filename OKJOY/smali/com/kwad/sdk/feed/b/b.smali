.class public Lcom/kwad/sdk/feed/b/b;
.super Lcom/kwad/sdk/feed/widget/base/a;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Lcom/kwad/sdk/core/download/g/b;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

.field private m:Lcom/kwad/sdk/nativead/KsAppDownloadListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/kwad/sdk/feed/widget/base/a;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/kwad/sdk/feed/b/b$a;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/feed/b/b$a;-><init>(Lcom/kwad/sdk/feed/b/b;)V

    iput-object v0, p0, Lcom/kwad/sdk/feed/b/b;->m:Lcom/kwad/sdk/nativead/KsAppDownloadListener;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/feed/b/b;)Lcom/kwad/sdk/core/response/model/AdInfo;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    return-object v0
.end method

.method static synthetic b(Lcom/kwad/sdk/feed/b/b;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/feed/b/b;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/kwad/sdk/feed/b/b;)Lcom/kwad/sdk/core/page/widget/TextProgressBar;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/feed/b/b;->l:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    return-object v0
.end method

.method static synthetic d(Lcom/kwad/sdk/feed/b/b;)V
    .registers 1

    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/base/a;->c()V

    return-void
.end method

.method private f()V
    .registers 7

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ksad_ad_download_container"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ksad_app_icon"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ksad_app_title"

    invoke-static {v1, v2}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ksad_app_desc"

    invoke-static {v2, v3}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kwad/sdk/feed/widget/base/a;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v3}, Lcom/kwad/sdk/c/g/b/a;->h(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/base/a;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/c/g/b/a;->g(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadAppIcon(Landroid/widget/ImageView;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->c(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->e:Landroid/content/Context;

    const-string v1, "ksad_app_download_before"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/feed/b/b;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kwad/sdk/feed/b/b;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/base/a;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/c/g/b/a;->b(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/b/b;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/b/b;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ksad_app_download_btn"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    iput-object v0, p0, Lcom/kwad/sdk/feed/b/b;->l:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    iget-object v0, p0, Lcom/kwad/sdk/feed/b/b;->l:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v1, v2}, Lcom/kwad/sdk/e/p;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->setTextDimen(F)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/b/b;->l:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->setTextColor(I)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/b/b;->l:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/b/b;->l:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    invoke-virtual {v0, p0}, Landroid/widget/ProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ksad_app_download_cover"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/kwad/sdk/core/download/g/b;

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/base/a;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v2, p0, Lcom/kwad/sdk/feed/b/b;->m:Lcom/kwad/sdk/nativead/KsAppDownloadListener;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/kwad/sdk/core/download/g/b;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;Lcom/kwad/sdk/nativead/KsAppDownloadListener;)V

    iput-object v0, p0, Lcom/kwad/sdk/feed/b/b;->j:Lcom/kwad/sdk/core/download/g/b;

    return-void
.end method

.method private g()V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ksad_ad_h5_container"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ksad_h5_desc"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ksad_h5_open_btn"

    invoke-static {v1, v2}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kwad/sdk/feed/widget/base/a;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v2}, Lcom/kwad/sdk/c/g/b/a;->c(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->b(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "ksad_h5_open_cover"

    invoke-static {v0, v2}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 5
    .param p1    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/kwad/sdk/feed/widget/base/a;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/b/b;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/base/a;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/c/g/b/a;->c(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->t(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_3b

    iget-object v1, p0, Lcom/kwad/sdk/feed/b/b;->h:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadFeeImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    :goto_27
    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->B(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-direct {p0}, Lcom/kwad/sdk/feed/b/b;->f()V

    :goto_32
    iget-object v0, p0, Lcom/kwad/sdk/feed/b/b;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_3b
    const-string v0, "FeedTextAboveImageView"

    const-string v1, "getImageUrlList size less than one"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    :cond_43
    invoke-direct {p0}, Lcom/kwad/sdk/feed/b/b;->g()V

    goto :goto_32
.end method

.method protected b()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->e:Landroid/content/Context;

    const-string v1, "ksad_ad_desc"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/feed/b/b;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->e:Landroid/content/Context;

    const-string v1, "ksad_image_container"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    const v1, 0x3f0f5c29    # 0.56f

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->setRatio(F)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->e:Landroid/content/Context;

    const-string v1, "ksad_ad_image"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/feed/b/b;->h:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->e:Landroid/content/Context;

    const-string v1, "ksad_ad_dislike"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/feed/b/b;->i:Landroid/widget/ImageView;

    return-void
.end method

.method protected getLayoutId()I
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->e:Landroid/content/Context;

    const-string v1, "ksad_feed_text_above_image"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/feed/b/b;->i:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_8

    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/base/a;->e()V

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/base/a;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v2, Lcom/kwad/sdk/feed/b/b$b;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/feed/b/b$b;-><init>(Lcom/kwad/sdk/feed/b/b;)V

    iget-object v3, p0, Lcom/kwad/sdk/feed/b/b;->j:Lcom/kwad/sdk/core/download/g/b;

    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/core/download/g/a;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/g/a$a;Lcom/kwad/sdk/core/download/g/b;)V

    goto :goto_7
.end method
