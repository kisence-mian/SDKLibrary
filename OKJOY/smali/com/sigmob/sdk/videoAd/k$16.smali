.class Lcom/sigmob/sdk/videoAd/k$16;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/views/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/k;->c(Landroid/content/Context;I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/videoAd/k;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/videoAd/k;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/k$16;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$16;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->f(Lcom/sigmob/sdk/videoAd/k;)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$16;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/k;->n()Lcom/sigmob/sdk/base/common/w;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->m:Lcom/sigmob/sdk/base/common/a;

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k$16;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoAd/k;->t()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/w;->a(Lcom/sigmob/sdk/base/common/a;I)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$16;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->m(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k$16;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/k;->z(Lcom/sigmob/sdk/videoAd/k;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k$16;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoAd/k;->t()I

    move-result v2

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/k$16;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v3}, Lcom/sigmob/sdk/videoAd/k;->s()I

    move-result v3

    iget-object v4, p0, Lcom/sigmob/sdk/videoAd/k$16;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v4}, Lcom/sigmob/sdk/videoAd/k;->a(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sigmob/sdk/videoAd/a;->b(Landroid/content/Context;IILcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_3a
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$16;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->b(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/views/AlertDialogWidget;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->setVisibility(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$16;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->m(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/a;->l()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$16;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->A(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/common/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/base/common/o;->a()V

    :cond_5a
    :goto_5a
    return-void

    :cond_5b
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$16;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->B(Lcom/sigmob/sdk/videoAd/k;)Z

    move-result v0

    if-nez v0, :cond_6e

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$16;->a:Lcom/sigmob/sdk/videoAd/k;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k$16;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/k;->t()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/videoAd/k;->c(Lcom/sigmob/sdk/videoAd/k;I)V

    :cond_6e
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$16;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->k(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/videoAd/BaseVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->stopPlayback()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$16;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->u(Lcom/sigmob/sdk/videoAd/k;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$16;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->w(Lcom/sigmob/sdk/videoAd/k;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$16;->a:Lcom/sigmob/sdk/videoAd/k;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/videoAd/k;->c(Lcom/sigmob/sdk/videoAd/k;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$16;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->c(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/videoAd/g;

    move-result-object v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$16;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->c(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/videoAd/g;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k$16;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/k;->C(Lcom/sigmob/sdk/videoAd/k;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k$16;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoAd/k;->t()I

    move-result v2

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/k$16;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v3}, Lcom/sigmob/sdk/videoAd/k;->m()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    iget-object v4, p0, Lcom/sigmob/sdk/videoAd/k$16;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v4}, Lcom/sigmob/sdk/videoAd/k;->D(Lcom/sigmob/sdk/videoAd/k;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sigmob/sdk/videoAd/g;->a(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    goto :goto_5a
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$16;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->k(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/videoAd/BaseVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->start()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$16;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->b(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/views/AlertDialogWidget;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->setVisibility(I)V

    return-void
.end method
