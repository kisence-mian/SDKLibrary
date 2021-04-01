.class Lcom/kwad/sdk/nativead/a$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/core/page/widget/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/nativead/a;->a(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/nativead/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/nativead/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/nativead/a$f;->a:Lcom/kwad/sdk/nativead/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/nativead/a$f;->a:Lcom/kwad/sdk/nativead/a;

    invoke-static {v0}, Lcom/kwad/sdk/nativead/a;->a(Lcom/kwad/sdk/nativead/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    iget-boolean v0, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mPvReported:Z

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/kwad/sdk/nativead/a$f;->a:Lcom/kwad/sdk/nativead/a;

    invoke-static {v0}, Lcom/kwad/sdk/nativead/a;->b(Lcom/kwad/sdk/nativead/a;)Lcom/kwad/sdk/export/i/KsNativeAd$AdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/kwad/sdk/nativead/a$f;->a:Lcom/kwad/sdk/nativead/a;

    invoke-static {v0}, Lcom/kwad/sdk/nativead/a;->b(Lcom/kwad/sdk/nativead/a;)Lcom/kwad/sdk/export/i/KsNativeAd$AdInteractionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/nativead/a$f;->a:Lcom/kwad/sdk/nativead/a;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/export/i/KsNativeAd$AdInteractionListener;->onAdShow(Lcom/kwad/sdk/export/i/KsNativeAd;)V

    :cond_1d
    iget-object v0, p0, Lcom/kwad/sdk/nativead/a$f;->a:Lcom/kwad/sdk/nativead/a;

    invoke-static {v0}, Lcom/kwad/sdk/nativead/a;->a(Lcom/kwad/sdk/nativead/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/f/b;->i(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object v0, p0, Lcom/kwad/sdk/nativead/a$f;->a:Lcom/kwad/sdk/nativead/a;

    invoke-static {v0}, Lcom/kwad/sdk/nativead/a;->a(Lcom/kwad/sdk/nativead/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mPvReported:Z

    :cond_2f
    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    return-void
.end method
