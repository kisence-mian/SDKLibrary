.class public Lcom/kwad/sdk/feed/widget/b;
.super Lcom/kwad/sdk/feed/widget/base/a;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Lcom/kwad/sdk/widget/KsLogoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/feed/widget/base/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/kwad/sdk/feed/widget/base/a;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/b;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/b;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->l(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/b;->k:Lcom/kwad/sdk/widget/KsLogoView;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/widget/KsLogoView;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/b;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/a;->B(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_4b

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/b;->g:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/kwad/sdk/feed/widget/b;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadFeeImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/b;->h:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/kwad/sdk/feed/widget/b;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadFeeImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/b;->i:Landroid/widget/ImageView;

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/b;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0, p1, v1}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadFeeImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    goto :goto_52

    :cond_4b
    const-string p1, "FeedTextAboveGroupImageView"

    const-string v0, "getImageUrlList size less than three"

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_52
    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/b;->j:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Lcom/kwad/sdk/feed/widget/b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected c()V
    .registers 3

    sget v0, Lcom/kwad/sdk/R$id;->ksad_ad_desc:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/b;->f:Landroid/widget/TextView;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_image_container:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    const v1, 0x3f0f5c29    # 0.56f

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->setRatio(F)V

    sget v0, Lcom/kwad/sdk/R$id;->ksad_ad_image_left:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/b;->g:Landroid/widget/ImageView;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_ad_image_mid:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/b;->h:Landroid/widget/ImageView;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_ad_image_right:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/b;->i:Landroid/widget/ImageView;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_ad_dislike:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/b;->j:Landroid/widget/ImageView;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_ad_dislike_logo:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/widget/KsLogoView;

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/b;->k:Lcom/kwad/sdk/widget/KsLogoView;

    return-void
.end method

.method protected getLayoutId()I
    .registers 2

    sget v0, Lcom/kwad/sdk/R$layout;->ksad_feed_text_above_group_image:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/b;->j:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_8

    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/b;->l()V

    goto :goto_37

    :cond_8
    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/b;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/b;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/kwad/sdk/core/download/b/d;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;I)I

    move-result p1

    if-ne p1, v1, :cond_19

    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/b;->k()V

    return-void

    :cond_19
    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/b;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/a;->t(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result p1

    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/b;->k()V

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/b;->d:Landroid/content/Context;

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/b;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/b;->c:Lcom/kwad/sdk/feed/widget/base/a$a;

    invoke-static {p1, v0, v1}, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;->launch(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/feed/widget/base/a$a;)V

    goto :goto_37

    :cond_2e
    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/b;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/b;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->launch(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    :goto_37
    return-void
.end method
