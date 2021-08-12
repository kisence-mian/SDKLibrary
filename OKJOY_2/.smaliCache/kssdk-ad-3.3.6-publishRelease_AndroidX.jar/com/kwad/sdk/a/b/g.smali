.class public Lcom/kwad/sdk/a/b/g;
.super Lcom/kwad/sdk/a/a/a;


# instance fields
.field private b:Landroid/widget/ImageView;

.field private c:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private d:Lcom/kwad/sdk/contentalliance/detail/video/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/a/a/a;-><init>()V

    new-instance v0, Lcom/kwad/sdk/a/b/g$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/a/b/g$1;-><init>(Lcom/kwad/sdk/a/b/g;)V

    iput-object v0, p0, Lcom/kwad/sdk/a/b/g;->d:Lcom/kwad/sdk/contentalliance/detail/video/d;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/a/b/g;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/a/b/g;->e()V

    return-void
.end method

.method private e()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/a/b/g;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kwad/sdk/a/b/g;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->f(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/a/b/g;->a:Lcom/kwad/sdk/a/a/b;

    iget-object v2, v2, Lcom/kwad/sdk/a/a/b;->d:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object v0, p0, Lcom/kwad/sdk/a/b/g;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/a/a/a;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/a/b/g;->a:Lcom/kwad/sdk/a/a/b;

    iget-object v0, v0, Lcom/kwad/sdk/a/a/b;->d:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/a/b/g;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, p0, Lcom/kwad/sdk/a/b/g;->a:Lcom/kwad/sdk/a/a/b;

    iget-object v0, v0, Lcom/kwad/sdk/a/a/b;->f:Lcom/kwad/sdk/a/c/a;

    iget-object v1, p0, Lcom/kwad/sdk/a/b/g;->d:Lcom/kwad/sdk/contentalliance/detail/video/d;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/a/c/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    iget-object v0, p0, Lcom/kwad/sdk/a/b/g;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method protected b()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/a/a/a;->b()V

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_cover_image:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/a/b/g;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/a/b/g;->b:Landroid/widget/ImageView;

    return-void
.end method

.method protected c()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/a/a/a;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/a/b/g;->a:Lcom/kwad/sdk/a/a/b;

    iget-object v0, v0, Lcom/kwad/sdk/a/a/b;->f:Lcom/kwad/sdk/a/c/a;

    iget-object v1, p0, Lcom/kwad/sdk/a/b/g;->d:Lcom/kwad/sdk/contentalliance/detail/video/d;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/a/c/a;->b(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    return-void
.end method
