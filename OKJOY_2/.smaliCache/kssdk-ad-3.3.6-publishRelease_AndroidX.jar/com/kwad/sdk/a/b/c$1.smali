.class Lcom/kwad/sdk/a/b/c$1;
.super Lcom/kwad/sdk/contentalliance/detail/video/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/a/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/a/b/c;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/a/b/c;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/a/b/c$1;->a:Lcom/kwad/sdk/a/b/c;

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .registers 5

    iget-object p1, p0, Lcom/kwad/sdk/a/b/c$1;->a:Lcom/kwad/sdk/a/b/c;

    invoke-static {p1, p3, p4}, Lcom/kwad/sdk/a/b/c;->a(Lcom/kwad/sdk/a/b/c;J)V

    return-void
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/a/b/c$1;->a:Lcom/kwad/sdk/a/b/c;

    invoke-static {v0}, Lcom/kwad/sdk/a/b/c;->a(Lcom/kwad/sdk/a/b/c;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    iget-boolean v0, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mPvReported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/kwad/sdk/a/b/c$1;->a:Lcom/kwad/sdk/a/b/c;

    invoke-static {v0}, Lcom/kwad/sdk/a/b/c;->b(Lcom/kwad/sdk/a/b/c;)Lcom/kwad/sdk/a/a/b;

    move-result-object v0

    iget-object v0, v0, Lcom/kwad/sdk/a/a/b;->a:Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;->onAdShow(Lcom/kwad/sdk/api/KsNativeAd;)V

    :cond_16
    iget-object v0, p0, Lcom/kwad/sdk/a/b/c$1;->a:Lcom/kwad/sdk/a/b/c;

    invoke-static {v0}, Lcom/kwad/sdk/a/b/c;->a(Lcom/kwad/sdk/a/b/c;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/kwad/sdk/a/b/c$1;->a:Lcom/kwad/sdk/a/b/c;

    invoke-static {v0}, Lcom/kwad/sdk/a/b/c;->a(Lcom/kwad/sdk/a/b/c;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/report/b;->h(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    return-void
.end method

.method public f()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/a/b/c$1;->a:Lcom/kwad/sdk/a/b/c;

    invoke-static {v0}, Lcom/kwad/sdk/a/b/c;->a(Lcom/kwad/sdk/a/b/c;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/report/b;->i(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    return-void
.end method
