.class Lcom/kwad/sdk/reward/b/c$11;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/webview/jshandler/k$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/reward/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/b/c;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/b/c;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/b/c$11;->a:Lcom/kwad/sdk/reward/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c$11;->a:Lcom/kwad/sdk/reward/b/c;

    invoke-static {v0, p1}, Lcom/kwad/sdk/reward/b/c;->a(Lcom/kwad/sdk/reward/b/c;I)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePageStatus mPageState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RewardMiniCardPresenter"

    invoke-static {v0, p1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kwad/sdk/reward/b/c$11;->a:Lcom/kwad/sdk/reward/b/c;

    invoke-static {p1}, Lcom/kwad/sdk/reward/b/c;->l(Lcom/kwad/sdk/reward/b/c;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_39

    iget-object p1, p0, Lcom/kwad/sdk/reward/b/c$11;->a:Lcom/kwad/sdk/reward/b/c;

    invoke-static {p1}, Lcom/kwad/sdk/reward/b/c;->m(Lcom/kwad/sdk/reward/b/c;)Lcom/kwad/sdk/reward/a;

    move-result-object p1

    iget-object p1, p1, Lcom/kwad/sdk/reward/a;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c$11;->a:Lcom/kwad/sdk/reward/b/c;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/c;->a(Lcom/kwad/sdk/reward/b/c;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-static {p1, v0, v1}, Lcom/kwad/sdk/core/report/e;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    return-void
.end method
