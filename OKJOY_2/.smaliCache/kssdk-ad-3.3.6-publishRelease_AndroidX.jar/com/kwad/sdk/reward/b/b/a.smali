.class public Lcom/kwad/sdk/reward/b/b/a;
.super Lcom/kwad/sdk/reward/d;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private b:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/kwad/sdk/widget/KsLogoView;

.field private e:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private f:Lcom/kwad/sdk/core/download/b/b;

.field private g:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$a;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/reward/d;-><init>()V

    new-instance v0, Lcom/kwad/sdk/reward/b/b/a$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/reward/b/b/a$1;-><init>(Lcom/kwad/sdk/reward/b/b/a;)V

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/a;->g:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$a;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/reward/b/b/a;)Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/b/b/a;->b:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    return-object p0
.end method

.method static synthetic b(Lcom/kwad/sdk/reward/b/b/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/b/b/a;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method static synthetic c(Lcom/kwad/sdk/reward/b/b/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/reward/b/b/a;->e()V

    return-void
.end method

.method static synthetic d(Lcom/kwad/sdk/reward/b/b/a;)Lcom/kwad/sdk/core/download/b/b;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/b/b/a;->f:Lcom/kwad/sdk/core/download/b/b;

    return-object p0
.end method

.method private e()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/a;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b/a;->a:Lcom/kwad/sdk/reward/a;

    iget-object v1, v1, Lcom/kwad/sdk/reward/a;->h:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    invoke-virtual {v1}, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;->getTouchCoords()Lcom/kwad/sdk/utils/o$a;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/reward/b/b/a;->a:Lcom/kwad/sdk/reward/a;

    iget-object v2, v2, Lcom/kwad/sdk/reward/a;->d:Lorg/json/JSONObject;

    const/16 v3, 0x23

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/utils/o$a;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/a;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->b:Lcom/kwad/sdk/reward/a/b;

    invoke-interface {v0}, Lcom/kwad/sdk/reward/a/b;->a()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/a;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/a;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/a;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->j:Lcom/kwad/sdk/core/download/b/b;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/a;->f:Lcom/kwad/sdk/core/download/b/b;

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/a;->b:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    invoke-virtual {v0, p0}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/a;->d:Lcom/kwad/sdk/widget/KsLogoView;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b/a;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/widget/KsLogoView;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/a;->d:Lcom/kwad/sdk/widget/KsLogoView;

    invoke-virtual {v0, p0}, Lcom/kwad/sdk/widget/KsLogoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/a;->b:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b/a;->g:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$a;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->setClickListener(Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$a;)V

    return-void
.end method

.method protected b()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->b()V

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_player:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/b/b/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/a;->b:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_ad_label_play_bar:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/b/b/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/widget/KsLogoView;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/a;->d:Lcom/kwad/sdk/widget/KsLogoView;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_count_down:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/b/b/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/a;->c:Landroid/widget/TextView;

    return-void
.end method

.method protected c()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/a;->b:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->setClickListener(Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$a;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    return-void
.end method
