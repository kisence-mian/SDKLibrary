.class Lcom/kwad/sdk/a/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/download/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/a/a;->a(Landroid/view/View;Lcom/kwad/sdk/utils/o$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/utils/o$a;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/kwad/sdk/a/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/a/a;Lcom/kwad/sdk/utils/o$a;Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lcom/kwad/sdk/a/a$3;->c:Lcom/kwad/sdk/a/a;

    iput-object p2, p0, Lcom/kwad/sdk/a/a$3;->a:Lcom/kwad/sdk/utils/o$a;

    iput-object p3, p0, Lcom/kwad/sdk/a/a$3;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/a/a$3;->c:Lcom/kwad/sdk/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/a/a;->a(Lcom/kwad/sdk/a/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/a/a$3;->a:Lcom/kwad/sdk/utils/o$a;

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/utils/o$a;)V

    iget-object v0, p0, Lcom/kwad/sdk/a/a$3;->c:Lcom/kwad/sdk/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/a/a;->b(Lcom/kwad/sdk/a/a;)Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/kwad/sdk/a/a$3;->c:Lcom/kwad/sdk/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/a/a;->b(Lcom/kwad/sdk/a/a;)Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/a/a$3;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/kwad/sdk/a/a$3;->c:Lcom/kwad/sdk/a/a;

    invoke-interface {v0, v1, v2}, Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;->onAdClicked(Landroid/view/View;Lcom/kwad/sdk/api/KsNativeAd;)V

    :cond_20
    return-void
.end method
