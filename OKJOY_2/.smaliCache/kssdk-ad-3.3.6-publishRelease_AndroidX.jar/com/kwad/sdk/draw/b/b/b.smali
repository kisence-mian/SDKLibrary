.class public Lcom/kwad/sdk/draw/b/b/b;
.super Lcom/kwad/sdk/draw/a/a;


# instance fields
.field private b:Landroid/view/ViewGroup;

.field private c:Lcom/kwad/sdk/draw/view/playcard/DrawCardApp;

.field private d:Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;

.field private e:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private f:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private g:Lcom/kwad/sdk/draw/b/b/a$a;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/draw/a/a;-><init>()V

    new-instance v0, Lcom/kwad/sdk/draw/b/b/b$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/draw/b/b/b$1;-><init>(Lcom/kwad/sdk/draw/b/b/b;)V

    iput-object v0, p0, Lcom/kwad/sdk/draw/b/b/b;->g:Lcom/kwad/sdk/draw/b/b/a$a;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/draw/b/b/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/draw/b/b/b;->e()V

    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/draw/b/b/b;)Landroid/view/ViewGroup;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/draw/b/b/b;->b:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic c(Lcom/kwad/sdk/draw/b/b/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/draw/b/b/b;->o()V

    return-void
.end method

.method private e()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b/b;->f:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->t(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/kwad/sdk/draw/b/b/b;->m()V

    goto :goto_f

    :cond_c
    invoke-direct {p0}, Lcom/kwad/sdk/draw/b/b/b;->n()V

    :goto_f
    return-void
.end method

.method private m()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b/b;->b:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b/b;->c:Lcom/kwad/sdk/draw/view/playcard/DrawCardApp;

    iget-object v1, p0, Lcom/kwad/sdk/draw/b/b/b;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v2, Lcom/kwad/sdk/draw/b/b/b$2;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/draw/b/b/b$2;-><init>(Lcom/kwad/sdk/draw/b/b/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/draw/view/playcard/DrawCardApp;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/draw/view/playcard/DrawCardApp$a;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b/b;->c:Lcom/kwad/sdk/draw/view/playcard/DrawCardApp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/draw/view/playcard/DrawCardApp;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b/b;->c:Lcom/kwad/sdk/draw/view/playcard/DrawCardApp;

    invoke-virtual {v0}, Lcom/kwad/sdk/draw/view/playcard/DrawCardApp;->b()V

    return-void
.end method

.method private n()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b/b;->b:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b/b;->d:Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;

    iget-object v1, p0, Lcom/kwad/sdk/draw/b/b/b;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v2, Lcom/kwad/sdk/draw/b/b/b$3;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/draw/b/b/b$3;-><init>(Lcom/kwad/sdk/draw/b/b/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/draw/view/playcard/DrawCardH5$a;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b/b;->d:Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b/b;->d:Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;

    invoke-virtual {v0}, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->b()V

    return-void
.end method

.method private o()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b/b;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, p0, Lcom/kwad/sdk/draw/b/b/b;->a:Lcom/kwad/sdk/draw/a/b;

    iget-object v1, v1, Lcom/kwad/sdk/draw/a/b;->b:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    invoke-virtual {v1}, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;->getTouchCoords()Lcom/kwad/sdk/utils/o$a;

    move-result-object v1

    const/16 v2, 0x1d

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/utils/o$a;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b/b;->a:Lcom/kwad/sdk/draw/a/b;

    iget-object v0, v0, Lcom/kwad/sdk/draw/a/b;->a:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b/b;->a:Lcom/kwad/sdk/draw/a/b;

    iget-object v0, v0, Lcom/kwad/sdk/draw/a/b;->a:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;->onAdClicked()V

    :cond_1c
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/draw/a/a;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b/b;->a:Lcom/kwad/sdk/draw/a/b;

    iget-object v0, v0, Lcom/kwad/sdk/draw/a/b;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object v0, p0, Lcom/kwad/sdk/draw/b/b/b;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/draw/b/b/b;->f:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b/b;->a:Lcom/kwad/sdk/draw/a/b;

    iget-object v0, v0, Lcom/kwad/sdk/draw/a/b;->f:Lcom/kwad/sdk/draw/b/b/a;

    iget-object v1, p0, Lcom/kwad/sdk/draw/b/b/b;->g:Lcom/kwad/sdk/draw/b/b/a$a;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/draw/b/b/a;->a(Lcom/kwad/sdk/draw/b/b/a$a;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b/b;->c:Lcom/kwad/sdk/draw/view/playcard/DrawCardApp;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/draw/view/playcard/DrawCardApp;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b/b;->d:Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->setVisibility(I)V

    return-void
.end method

.method protected b()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/draw/a/a;->b()V

    sget v0, Lcom/kwad/sdk/R$id;->ksad_ad_normal_container:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/draw/b/b/b;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kwad/sdk/draw/b/b/b;->b:Landroid/view/ViewGroup;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_card_app_container:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/draw/b/b/b;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/draw/view/playcard/DrawCardApp;

    iput-object v0, p0, Lcom/kwad/sdk/draw/b/b/b;->c:Lcom/kwad/sdk/draw/view/playcard/DrawCardApp;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_card_h5_container:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/draw/b/b/b;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;

    iput-object v0, p0, Lcom/kwad/sdk/draw/b/b/b;->d:Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;

    return-void
.end method

.method protected c()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/draw/a/a;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b/b;->c:Lcom/kwad/sdk/draw/view/playcard/DrawCardApp;

    invoke-virtual {v0}, Lcom/kwad/sdk/draw/view/playcard/DrawCardApp;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b/b;->d:Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;

    invoke-virtual {v0}, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b/b;->a:Lcom/kwad/sdk/draw/a/b;

    iget-object v0, v0, Lcom/kwad/sdk/draw/a/b;->f:Lcom/kwad/sdk/draw/b/b/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/draw/b/b/a;->a(Lcom/kwad/sdk/draw/b/b/a$a;)V

    return-void
.end method
