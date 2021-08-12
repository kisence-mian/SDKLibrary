.class Lcom/kwad/sdk/reward/b/b/c$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/kwad/sdk/reward/b/b/c$8;->a:Lcom/kwad/sdk/reward/b/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/c$8;->a:Lcom/kwad/sdk/reward/b/b/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kwad/sdk/reward/b/b/c;->b(Lcom/kwad/sdk/reward/b/b/c;Z)Z

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/c$8;->a:Lcom/kwad/sdk/reward/b/b/c;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/b/c;->l(Lcom/kwad/sdk/reward/b/b/c;)Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/c$8;->a:Lcom/kwad/sdk/reward/b/b/c;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/b/c;->m(Lcom/kwad/sdk/reward/b/b/c;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/c$8;->a:Lcom/kwad/sdk/reward/b/b/c;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/b/c;->n(Lcom/kwad/sdk/reward/b/b/c;)Lcom/kwad/sdk/reward/a;

    move-result-object v1

    iget-object v1, v1, Lcom/kwad/sdk/reward/a;->i:Lcom/kwad/sdk/reward/c/a;

    invoke-virtual {v1}, Lcom/kwad/sdk/reward/c/a;->i()I

    move-result v1

    iget-object v2, p0, Lcom/kwad/sdk/reward/b/b/c$8;->a:Lcom/kwad/sdk/reward/b/b/c;

    invoke-static {v2}, Lcom/kwad/sdk/reward/b/b/c;->o(Lcom/kwad/sdk/reward/b/b/c;)Lcom/kwad/sdk/reward/a;

    move-result-object v2

    iget-object v2, v2, Lcom/kwad/sdk/reward/a;->i:Lcom/kwad/sdk/reward/c/a;

    invoke-virtual {v2}, Lcom/kwad/sdk/reward/c/a;->j()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/reward/b/b/c;->a(Lcom/kwad/sdk/reward/b/b/c;II)V

    :cond_33
    return-void
.end method
