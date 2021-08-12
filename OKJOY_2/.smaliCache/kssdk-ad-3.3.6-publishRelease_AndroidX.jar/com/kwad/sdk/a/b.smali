.class public Lcom/kwad/sdk/a/b;
.super Lcom/kwad/sdk/core/view/a;


# instance fields
.field private a:Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;

.field private b:Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

.field private c:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

.field private d:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

.field private e:Lcom/kwad/sdk/a/a/b;

.field private f:Lcom/kwad/sdk/mvp/Presenter;

.field private g:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private h:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private i:Lcom/kwad/sdk/core/download/b/b;

.field private j:Lcom/kwad/sdk/a/c/a;

.field private k:Lcom/kwad/sdk/core/view/b;

.field private l:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/view/a;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/kwad/sdk/a/b;->c()V

    return-void
.end method

.method private c()V
    .registers 3

    invoke-virtual {p0}, Lcom/kwad/sdk/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/kwad/sdk/R$layout;->ksad_native_video_layout:I

    invoke-static {v0, v1, p0}, Lcom/kwad/sdk/a/b;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_root_container:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/a/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    iput-object v0, p0, Lcom/kwad/sdk/a/b;->c:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    sget v1, Lcom/kwad/sdk/R$id;->ksad_video_player:I

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    iput-object v0, p0, Lcom/kwad/sdk/a/b;->d:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->setAd(Z)V

    return-void
.end method

.method private d()Lcom/kwad/sdk/a/a/b;
    .registers 4

    new-instance v0, Lcom/kwad/sdk/a/a/b;

    invoke-direct {v0}, Lcom/kwad/sdk/a/a/b;-><init>()V

    iget-object v1, p0, Lcom/kwad/sdk/a/b;->c:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    iput-object v1, v0, Lcom/kwad/sdk/a/a/b;->c:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    iget-object v1, p0, Lcom/kwad/sdk/a/b;->g:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object v1, v0, Lcom/kwad/sdk/a/a/b;->d:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, p0, Lcom/kwad/sdk/a/b;->a:Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;

    iput-object v1, v0, Lcom/kwad/sdk/a/a/b;->a:Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;

    iget-object v1, p0, Lcom/kwad/sdk/a/b;->b:Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

    iput-object v1, v0, Lcom/kwad/sdk/a/a/b;->b:Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

    iget-object v1, p0, Lcom/kwad/sdk/a/b;->i:Lcom/kwad/sdk/core/download/b/b;

    if-nez v1, :cond_29

    iget-object v1, p0, Lcom/kwad/sdk/a/b;->h:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->t(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v1

    if-eqz v1, :cond_29

    new-instance v1, Lcom/kwad/sdk/core/download/b/b;

    iget-object v2, p0, Lcom/kwad/sdk/a/b;->g:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-direct {v1, v2}, Lcom/kwad/sdk/core/download/b/b;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    goto :goto_2b

    :cond_29
    iget-object v1, p0, Lcom/kwad/sdk/a/b;->i:Lcom/kwad/sdk/core/download/b/b;

    :goto_2b
    iput-object v1, v0, Lcom/kwad/sdk/a/a/b;->e:Lcom/kwad/sdk/core/download/b/b;

    iget-object v1, p0, Lcom/kwad/sdk/a/b;->j:Lcom/kwad/sdk/a/c/a;

    iput-object v1, v0, Lcom/kwad/sdk/a/a/b;->f:Lcom/kwad/sdk/a/c/a;

    return-object v0
.end method

.method private e()Lcom/kwad/sdk/mvp/Presenter;
    .registers 3

    new-instance v0, Lcom/kwad/sdk/mvp/Presenter;

    invoke-direct {v0}, Lcom/kwad/sdk/mvp/Presenter;-><init>()V

    new-instance v1, Lcom/kwad/sdk/a/b/e;

    invoke-direct {v1}, Lcom/kwad/sdk/a/b/e;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    new-instance v1, Lcom/kwad/sdk/a/b/c;

    invoke-direct {v1}, Lcom/kwad/sdk/a/b/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    new-instance v1, Lcom/kwad/sdk/a/b/i;

    invoke-direct {v1}, Lcom/kwad/sdk/a/b/i;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    new-instance v1, Lcom/kwad/sdk/a/b/j;

    invoke-direct {v1}, Lcom/kwad/sdk/a/b/j;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    new-instance v1, Lcom/kwad/sdk/a/b/d;

    invoke-direct {v1}, Lcom/kwad/sdk/a/b/d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    new-instance v1, Lcom/kwad/sdk/a/b/b;

    invoke-direct {v1}, Lcom/kwad/sdk/a/b/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    new-instance v1, Lcom/kwad/sdk/a/b/k;

    invoke-direct {v1}, Lcom/kwad/sdk/a/b/k;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    iget-object v1, p0, Lcom/kwad/sdk/a/b;->l:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    if-eqz v1, :cond_47

    invoke-interface {v1}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig;->isDataFlowAutoStart()Z

    move-result v1

    if-nez v1, :cond_4f

    :cond_47
    new-instance v1, Lcom/kwad/sdk/a/b/a;

    invoke-direct {v1}, Lcom/kwad/sdk/a/b/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    :cond_4f
    new-instance v1, Lcom/kwad/sdk/a/b/g;

    invoke-direct {v1}, Lcom/kwad/sdk/a/b/g;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    iget-object v1, p0, Lcom/kwad/sdk/a/b;->h:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->t(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v1

    if-eqz v1, :cond_65

    new-instance v1, Lcom/kwad/sdk/a/b/f;

    invoke-direct {v1}, Lcom/kwad/sdk/a/b/f;-><init>()V

    goto :goto_6a

    :cond_65
    new-instance v1, Lcom/kwad/sdk/a/b/h;

    invoke-direct {v1}, Lcom/kwad/sdk/a/b/h;-><init>()V

    :goto_6a
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    return-object v0
.end method


# virtual methods
.method protected a()V
    .registers 3

    invoke-direct {p0}, Lcom/kwad/sdk/a/b;->d()Lcom/kwad/sdk/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/a/b;->e:Lcom/kwad/sdk/a/a/b;

    invoke-direct {p0}, Lcom/kwad/sdk/a/b;->e()Lcom/kwad/sdk/mvp/Presenter;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/a/b;->f:Lcom/kwad/sdk/mvp/Presenter;

    iget-object v1, p0, Lcom/kwad/sdk/a/b;->c:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/kwad/sdk/a/b;->f:Lcom/kwad/sdk/mvp/Presenter;

    iget-object v1, p0, Lcom/kwad/sdk/a/b;->e:Lcom/kwad/sdk/a/a/b;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kwad/sdk/a/b;->k:Lcom/kwad/sdk/core/view/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/view/b;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/a/b;->j:Lcom/kwad/sdk/a/c/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/a/c/a;->a()V

    return-void
.end method

.method public a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/b/b;Lcom/kwad/sdk/api/KsAdVideoPlayConfig;)V
    .registers 6

    iput-object p1, p0, Lcom/kwad/sdk/a/b;->g:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/a/b;->h:Lcom/kwad/sdk/core/response/model/AdInfo;

    iput-object p2, p0, Lcom/kwad/sdk/a/b;->i:Lcom/kwad/sdk/core/download/b/b;

    iput-object p3, p0, Lcom/kwad/sdk/a/b;->l:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    invoke-virtual {p0}, Lcom/kwad/sdk/a/b;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_14

    move-object p1, p0

    goto :goto_1a

    :cond_14
    invoke-virtual {p0}, Lcom/kwad/sdk/a/b;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    :goto_1a
    new-instance p2, Lcom/kwad/sdk/core/view/b;

    const/16 v0, 0x1e

    invoke-direct {p2, p1, v0}, Lcom/kwad/sdk/core/view/b;-><init>(Landroid/view/View;I)V

    iput-object p2, p0, Lcom/kwad/sdk/a/b;->k:Lcom/kwad/sdk/core/view/b;

    new-instance p1, Lcom/kwad/sdk/a/c/a;

    iget-object p2, p0, Lcom/kwad/sdk/a/b;->g:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v0, p0, Lcom/kwad/sdk/a/b;->k:Lcom/kwad/sdk/core/view/b;

    iget-object v1, p0, Lcom/kwad/sdk/a/b;->d:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    invoke-direct {p1, p2, v0, v1, p3}, Lcom/kwad/sdk/a/c/a;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/view/b;Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;Lcom/kwad/sdk/api/KsAdVideoPlayConfig;)V

    iput-object p1, p0, Lcom/kwad/sdk/a/b;->j:Lcom/kwad/sdk/a/c/a;

    return-void
.end method

.method protected b()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/a/b;->k:Lcom/kwad/sdk/core/view/b;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/kwad/sdk/core/view/b;->c()V

    :cond_7
    iget-object v0, p0, Lcom/kwad/sdk/a/b;->j:Lcom/kwad/sdk/a/c/a;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/kwad/sdk/a/c/a;->b()V

    :cond_e
    iget-object v0, p0, Lcom/kwad/sdk/a/b;->e:Lcom/kwad/sdk/a/a/b;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/kwad/sdk/a/a/b;->a()V

    :cond_15
    iget-object v0, p0, Lcom/kwad/sdk/a/b;->f:Lcom/kwad/sdk/mvp/Presenter;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/kwad/sdk/mvp/Presenter;->g()V

    :cond_1c
    return-void
.end method

.method public setAdInteractionListener(Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/a/b;->a:Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;

    return-void
.end method

.method public setVideoPlayListener(Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/a/b;->b:Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

    return-void
.end method
