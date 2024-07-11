.class public Lcom/kwad/sdk/core/page/a/a;
.super Lcom/kwad/sdk/mvp/Presenter;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/mvp/Presenter;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 5

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->a()V

    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/a/a;->k()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/page/recycle/e;

    new-instance v1, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;

    invoke-direct {v1}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;->videoSoundEnable(Z)Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;->build()Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/a/a;->i()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/kwad/sdk/feed/widget/k;

    iget-object v3, v0, Lcom/kwad/sdk/core/page/recycle/e;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-virtual {v2, v3}, Lcom/kwad/sdk/feed/widget/k;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    invoke-virtual {v2, v1}, Lcom/kwad/sdk/feed/widget/k;->a(Lcom/kwad/sdk/api/KsAdVideoPlayConfig;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/kwad/sdk/feed/widget/k;->setVisibility(I)V

    new-instance v1, Lcom/kwad/sdk/core/page/a/a$1;

    invoke-direct {v1, p0, v0}, Lcom/kwad/sdk/core/page/a/a$1;-><init>(Lcom/kwad/sdk/core/page/a/a;Lcom/kwad/sdk/core/page/recycle/e;)V

    invoke-virtual {v2, v1}, Lcom/kwad/sdk/feed/widget/k;->setOnEndBtnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected b()V
    .registers 1

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->b()V

    return-void
.end method
