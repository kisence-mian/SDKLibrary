.class public Lcom/kwad/sdk/d/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/export/i/KsDrawAd;


# instance fields
.field private a:Lcom/kwad/sdk/core/response/model/AdTemplate;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private b:Lcom/kwad/sdk/export/i/KsDrawAd$AdInteractionListener;

.field private c:Lcom/kwad/sdk/draw/view/c;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 3
    .param p1    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/d/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v0, p0, Lcom/kwad/sdk/d/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->l(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->preloadImage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/d/a;)Lcom/kwad/sdk/export/i/KsDrawAd$AdInteractionListener;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/d/a;->b:Lcom/kwad/sdk/export/i/KsDrawAd$AdInteractionListener;

    return-object v0
.end method


# virtual methods
.method public getDrawView(Landroid/content/Context;)Landroid/view/View;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/d/a;->c:Lcom/kwad/sdk/draw/view/c;

    if-nez v0, :cond_1f

    new-instance v0, Lcom/kwad/sdk/draw/view/c;

    iget-object v1, p0, Lcom/kwad/sdk/d/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-direct {v0, p1, v1}, Lcom/kwad/sdk/draw/view/c;-><init>(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iput-object v0, p0, Lcom/kwad/sdk/d/a;->c:Lcom/kwad/sdk/draw/view/c;

    iget-object v0, p0, Lcom/kwad/sdk/d/a;->c:Lcom/kwad/sdk/draw/view/c;

    new-instance v1, Lcom/kwad/sdk/d/a$a;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/d/a$a;-><init>(Lcom/kwad/sdk/d/a;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/draw/view/c;->setAdClickListener(Lcom/kwad/sdk/draw/view/c$h;)V

    :goto_17
    iget-object v0, p0, Lcom/kwad/sdk/d/a;->c:Lcom/kwad/sdk/draw/view/c;

    invoke-virtual {v0}, Lcom/kwad/sdk/draw/view/c;->k()V

    iget-object v0, p0, Lcom/kwad/sdk/d/a;->c:Lcom/kwad/sdk/draw/view/c;

    return-object v0

    :cond_1f
    const-string v0, "KsNativeAdControl"

    const-string v1, "mDrawVideoView is not null"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method

.method public setAdInteractionListener(Lcom/kwad/sdk/export/i/KsDrawAd$AdInteractionListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/d/a;->b:Lcom/kwad/sdk/export/i/KsDrawAd$AdInteractionListener;

    return-void
.end method
