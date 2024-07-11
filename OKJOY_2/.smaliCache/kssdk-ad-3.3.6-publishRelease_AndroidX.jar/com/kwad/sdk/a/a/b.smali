.class public Lcom/kwad/sdk/a/a/b;
.super Lcom/kwad/sdk/core/e/b;


# instance fields
.field public a:Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;

.field public b:Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

.field public c:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

.field public d:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field public e:Lcom/kwad/sdk/core/download/b/b;

.field public f:Lcom/kwad/sdk/a/c/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/e/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/a/a/b;->e:Lcom/kwad/sdk/core/download/b/b;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/kwad/sdk/core/download/b/b;->f()V

    :cond_7
    iget-object v0, p0, Lcom/kwad/sdk/a/a/b;->f:Lcom/kwad/sdk/a/c/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/a/c/a;->e()V

    return-void
.end method
