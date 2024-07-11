.class Lcom/kwad/sdk/reward/b/b/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/reward/b/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/b/b/c;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/b/b/c;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/b/b/c$1;->a:Lcom/kwad/sdk/reward/b/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/c$1;->a:Lcom/kwad/sdk/reward/b/b/c;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/b/c;->b(Lcom/kwad/sdk/reward/b/b/c;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/c$1;->a:Lcom/kwad/sdk/reward/b/b/c;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/b/c;->b(Lcom/kwad/sdk/reward/b/b/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b/c$1;->a:Lcom/kwad/sdk/reward/b/b/c;

    invoke-static {v1}, Lcom/kwad/sdk/reward/b/b/c;->c(Lcom/kwad/sdk/reward/b/b/c;)Lcom/kwad/sdk/utils/aj;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/reward/b/b/c$1;->a:Lcom/kwad/sdk/reward/b/b/c;

    invoke-static {v2}, Lcom/kwad/sdk/reward/b/b/c;->d(Lcom/kwad/sdk/reward/b/b/c;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v2

    invoke-static {v2}, Lcom/kwad/sdk/core/response/b/b;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)J

    move-result-wide v2

    const-wide/16 v4, 0xc8

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object p1, p0, Lcom/kwad/sdk/reward/b/b/c$1;->a:Lcom/kwad/sdk/reward/b/b/c;

    invoke-static {p1}, Lcom/kwad/sdk/reward/b/b/c;->a(Lcom/kwad/sdk/reward/b/b/c;)Lcom/kwad/sdk/core/webview/jshandler/k$b;

    move-result-object p1

    const/4 p2, -0x1

    invoke-interface {p1, p2}, Lcom/kwad/sdk/core/webview/jshandler/k$b;->a(I)V

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method
