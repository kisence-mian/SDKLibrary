.class Lcom/kwad/sdk/draw/b/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/download/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/draw/b/b;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/draw/b/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/draw/b/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/draw/b/b$3;->a:Lcom/kwad/sdk/draw/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b$3;->a:Lcom/kwad/sdk/draw/b/b;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/b;->j(Lcom/kwad/sdk/draw/b/b;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/draw/b/b$3;->a:Lcom/kwad/sdk/draw/b/b;

    invoke-static {v1}, Lcom/kwad/sdk/draw/b/b;->k(Lcom/kwad/sdk/draw/b/b;)Lcom/kwad/sdk/draw/a/b;

    move-result-object v1

    iget-object v1, v1, Lcom/kwad/sdk/draw/a/b;->b:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    invoke-virtual {v1}, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;->getTouchCoords()Lcom/kwad/sdk/utils/o$a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/utils/o$a;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b$3;->a:Lcom/kwad/sdk/draw/b/b;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/b;->l(Lcom/kwad/sdk/draw/b/b;)Lcom/kwad/sdk/draw/a/b;

    move-result-object v0

    iget-object v0, v0, Lcom/kwad/sdk/draw/a/b;->a:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b$3;->a:Lcom/kwad/sdk/draw/b/b;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/b;->m(Lcom/kwad/sdk/draw/b/b;)Lcom/kwad/sdk/draw/a/b;

    move-result-object v0

    iget-object v0, v0, Lcom/kwad/sdk/draw/a/b;->a:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;->onAdClicked()V

    :cond_2b
    return-void
.end method
