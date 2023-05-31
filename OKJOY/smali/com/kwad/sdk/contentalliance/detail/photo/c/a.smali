.class public Lcom/kwad/sdk/contentalliance/detail/photo/c/a;
.super Lcom/kwad/sdk/b/c/b;
.source ""


# instance fields
.field private f:Lcom/kwad/sdk/contentalliance/detail/photo/PhotoBottomView;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/b/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected g()V
    .registers 5

    invoke-super {p0}, Lcom/kwad/sdk/b/c/b;->g()V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/b;->e(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/PhotoInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/c;->a(Lcom/kwad/sdk/core/response/model/PhotoInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/c;->c(Lcom/kwad/sdk/core/response/model/PhotoInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/c;->j(Lcom/kwad/sdk/core/response/model/PhotoInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/a;->f:Lcom/kwad/sdk/contentalliance/detail/photo/PhotoBottomView;

    invoke-virtual {v3, v1}, Lcom/kwad/sdk/contentalliance/detail/photo/PhotoBottomView;->setAuthorIcon(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/a;->f:Lcom/kwad/sdk/contentalliance/detail/photo/PhotoBottomView;

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/contentalliance/detail/photo/PhotoBottomView;->setAuthorName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/a;->f:Lcom/kwad/sdk/contentalliance/detail/photo/PhotoBottomView;

    invoke-virtual {v1, v0}, Lcom/kwad/sdk/contentalliance/detail/photo/PhotoBottomView;->setPhotoDescribe(Ljava/lang/String;)V

    return-void
.end method

.method protected h()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->h()V

    const-string v0, "ksad_photo_detail_bottom"

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/detail/photo/PhotoBottomView;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/a;->f:Lcom/kwad/sdk/contentalliance/detail/photo/PhotoBottomView;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/a;->f:Lcom/kwad/sdk/contentalliance/detail/photo/PhotoBottomView;

    new-instance v1, Lcom/kwad/sdk/contentalliance/detail/photo/c/a$a;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/a$a;-><init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
