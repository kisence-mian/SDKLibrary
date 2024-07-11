.class public Lcom/kwad/sdk/splashscreen/c;
.super Lcom/kwad/sdk/core/e/b;


# instance fields
.field public a:Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;

.field public b:Lcom/kwad/sdk/api/KsVideoPlayConfig;

.field public c:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field public d:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

.field public e:Lcom/kwad/sdk/splashscreen/b/a;

.field public f:Lcom/kwad/sdk/core/download/b/b;

.field public g:Lcom/kwad/sdk/api/KsScene;

.field public h:Lcom/kwad/sdk/core/i/b;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/e/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/c;->e:Lcom/kwad/sdk/splashscreen/b/a;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/kwad/sdk/splashscreen/b/a;->f()V

    :cond_7
    return-void
.end method
