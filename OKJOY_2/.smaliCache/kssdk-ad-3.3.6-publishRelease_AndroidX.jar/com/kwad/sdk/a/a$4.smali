.class Lcom/kwad/sdk/a/a$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/page/widget/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/a/a;->a(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/a/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/a/a$4;->a:Lcom/kwad/sdk/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/kwad/sdk/a/a$4;->a:Lcom/kwad/sdk/a/a;

    invoke-static {p1}, Lcom/kwad/sdk/a/a;->a(Lcom/kwad/sdk/a/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object p1

    iget-boolean p1, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mPvReported:Z

    if-nez p1, :cond_1d

    iget-object p1, p0, Lcom/kwad/sdk/a/a$4;->a:Lcom/kwad/sdk/a/a;

    invoke-static {p1}, Lcom/kwad/sdk/a/a;->b(Lcom/kwad/sdk/a/a;)Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/kwad/sdk/a/a$4;->a:Lcom/kwad/sdk/a/a;

    invoke-static {p1}, Lcom/kwad/sdk/a/a;->b(Lcom/kwad/sdk/a/a;)Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/a/a$4;->a:Lcom/kwad/sdk/a/a;

    invoke-interface {p1, v0}, Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;->onAdShow(Lcom/kwad/sdk/api/KsNativeAd;)V

    :cond_1d
    iget-object p1, p0, Lcom/kwad/sdk/a/a$4;->a:Lcom/kwad/sdk/a/a;

    invoke-static {p1}, Lcom/kwad/sdk/a/a;->a(Lcom/kwad/sdk/a/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method
