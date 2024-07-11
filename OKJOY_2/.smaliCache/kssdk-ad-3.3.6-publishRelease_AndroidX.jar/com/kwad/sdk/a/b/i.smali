.class public Lcom/kwad/sdk/a/b/i;
.super Lcom/kwad/sdk/a/a/a;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private b:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

.field private c:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private d:Lcom/kwad/sdk/contentalliance/detail/video/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/a/a/a;-><init>()V

    new-instance v0, Lcom/kwad/sdk/a/b/i$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/a/b/i$1;-><init>(Lcom/kwad/sdk/a/b/i;)V

    iput-object v0, p0, Lcom/kwad/sdk/a/b/i;->d:Lcom/kwad/sdk/contentalliance/detail/video/d;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/a/b/i;)Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/a/b/i;->b:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    return-object p0
.end method

.method static synthetic b(Lcom/kwad/sdk/a/b/i;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/a/b/i;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method static synthetic c(Lcom/kwad/sdk/a/b/i;)Lcom/kwad/sdk/a/a/b;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/a/b/i;->a:Lcom/kwad/sdk/a/a/b;

    return-object p0
.end method

.method private e()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/a/b/i;->b:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/a/b/i;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v2, Lcom/kwad/sdk/a/b/i$2;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/a/b/i$2;-><init>(Lcom/kwad/sdk/a/b/i;)V

    iget-object v3, p0, Lcom/kwad/sdk/a/b/i;->a:Lcom/kwad/sdk/a/a/b;

    iget-object v3, v3, Lcom/kwad/sdk/a/a/b;->e:Lcom/kwad/sdk/core/download/b/b;

    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/core/download/b/a;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/b/a$a;Lcom/kwad/sdk/core/download/b/b;)V

    return-void
.end method

.method private m()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/a/b/i;->a:Lcom/kwad/sdk/a/a/b;

    iget-object v0, v0, Lcom/kwad/sdk/a/a/b;->a:Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;

    iget-object v1, p0, Lcom/kwad/sdk/a/b/i;->b:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;->onAdClicked(Landroid/view/View;Lcom/kwad/sdk/api/KsNativeAd;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/a/a/a;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/a/b/i;->a:Lcom/kwad/sdk/a/a/b;

    iget-object v0, v0, Lcom/kwad/sdk/a/a/b;->d:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object v0, p0, Lcom/kwad/sdk/a/b/i;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v0, p0, Lcom/kwad/sdk/a/b/i;->a:Lcom/kwad/sdk/a/a/b;

    iget-object v0, v0, Lcom/kwad/sdk/a/a/b;->f:Lcom/kwad/sdk/a/c/a;

    iget-object v1, p0, Lcom/kwad/sdk/a/b/i;->d:Lcom/kwad/sdk/contentalliance/detail/video/d;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/a/c/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    return-void
.end method

.method protected b()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/a/a/a;->b()V

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_player:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/a/b/i;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    iput-object v0, p0, Lcom/kwad/sdk/a/b/i;->b:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    return-void
.end method

.method protected c()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/a/a/a;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/a/b/i;->b:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/a/b/i;->a:Lcom/kwad/sdk/a/a/b;

    iget-object v0, v0, Lcom/kwad/sdk/a/a/b;->f:Lcom/kwad/sdk/a/c/a;

    iget-object v1, p0, Lcom/kwad/sdk/a/b/i;->d:Lcom/kwad/sdk/contentalliance/detail/video/d;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/a/c/a;->b(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/a/b/i;->b:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    if-ne p1, v0, :cond_a

    invoke-direct {p0}, Lcom/kwad/sdk/a/b/i;->e()V

    invoke-direct {p0}, Lcom/kwad/sdk/a/b/i;->m()V

    :cond_a
    return-void
.end method
