.class Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/download/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame$2;->a:Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame$2;->a:Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;

    invoke-static {v0}, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->d(Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;)Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame$2;->a:Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;

    invoke-static {v0}, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->d(Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;)Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;->onAdClicked()V

    :cond_11
    iget-object v0, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame$2;->a:Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;

    invoke-static {v0}, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->c(Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame$2;->a:Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;

    invoke-static {v2}, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->e(Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;)Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;->getTouchCoords()Lcom/kwad/sdk/utils/o$a;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/utils/o$a;)V

    return-void
.end method
