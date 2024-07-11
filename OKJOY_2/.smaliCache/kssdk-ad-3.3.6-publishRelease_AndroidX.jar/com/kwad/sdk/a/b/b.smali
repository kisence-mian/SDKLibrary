.class public Lcom/kwad/sdk/a/b/b;
.super Lcom/kwad/sdk/a/a/a;


# instance fields
.field private b:Landroid/widget/ImageView;

.field private c:Lcom/kwad/sdk/core/response/model/c;

.field private d:Lcom/kwad/sdk/contentalliance/detail/video/d;

.field private e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/a/a/a;-><init>()V

    new-instance v0, Lcom/kwad/sdk/a/b/b$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/a/b/b$1;-><init>(Lcom/kwad/sdk/a/b/b;)V

    iput-object v0, p0, Lcom/kwad/sdk/a/b/b;->d:Lcom/kwad/sdk/contentalliance/detail/video/d;

    new-instance v0, Lcom/kwad/sdk/a/b/b$2;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/a/b/b$2;-><init>(Lcom/kwad/sdk/a/b/b;)V

    iput-object v0, p0, Lcom/kwad/sdk/a/b/b;->e:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/a/b/b;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/a/b/b;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic b(Lcom/kwad/sdk/a/b/b;)Lcom/kwad/sdk/core/response/model/c;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/a/b/b;->c:Lcom/kwad/sdk/core/response/model/c;

    return-object p0
.end method

.method static synthetic c(Lcom/kwad/sdk/a/b/b;)Lcom/kwad/sdk/a/a/b;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/a/b/b;->a:Lcom/kwad/sdk/a/a/b;

    return-object p0
.end method


# virtual methods
.method protected a()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/a/a/a;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/a/b/b;->a:Lcom/kwad/sdk/a/a/b;

    iget-object v0, v0, Lcom/kwad/sdk/a/a/b;->d:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->N(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/c;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/a/b/b;->c:Lcom/kwad/sdk/core/response/model/c;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/response/model/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    return-void

    :cond_1c
    invoke-virtual {p0}, Lcom/kwad/sdk/a/b/b;->i()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/a/b/b;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/kwad/sdk/a/b/b;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/a/b/b;->a:Lcom/kwad/sdk/a/a/b;

    iget-object v0, v0, Lcom/kwad/sdk/a/a/b;->f:Lcom/kwad/sdk/a/c/a;

    iget-object v1, p0, Lcom/kwad/sdk/a/b/b;->d:Lcom/kwad/sdk/contentalliance/detail/video/d;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/a/c/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    return-void
.end method

.method protected b()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/a/a/a;->b()V

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_first_frame:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/a/b/b;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/a/b/b;->b:Landroid/widget/ImageView;

    return-void
.end method

.method protected c()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/a/a/a;->c()V

    invoke-virtual {p0}, Lcom/kwad/sdk/a/b/b;->i()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/a/b/b;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/kwad/sdk/a/b/b;->a:Lcom/kwad/sdk/a/a/b;

    iget-object v0, v0, Lcom/kwad/sdk/a/a/b;->f:Lcom/kwad/sdk/a/c/a;

    iget-object v1, p0, Lcom/kwad/sdk/a/b/b;->d:Lcom/kwad/sdk/contentalliance/detail/video/d;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/a/c/a;->b(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    return-void
.end method
