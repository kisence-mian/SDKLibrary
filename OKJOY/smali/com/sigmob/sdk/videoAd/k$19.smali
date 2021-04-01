.class Lcom/sigmob/sdk/videoAd/k$19;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/k;->f(Landroid/content/Context;I)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/sigmob/sdk/videoAd/k;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/videoAd/k;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/k$19;->b:Lcom/sigmob/sdk/videoAd/k;

    iput-object p2, p0, Lcom/sigmob/sdk/videoAd/k$19;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    const/4 v3, 0x4

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$19;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->G(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/views/SkipButtonWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->a()Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$19;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/k;->n()Lcom/sigmob/sdk/base/common/w;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->n:Lcom/sigmob/sdk/base/common/a;

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k$19;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoAd/k;->t()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/w;->a(Lcom/sigmob/sdk/base/common/a;I)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$19;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->H(Lcom/sigmob/sdk/videoAd/k;)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$19;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->a(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v0

    if-ne v0, v3, :cond_6b

    :cond_33
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$19;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/k;->n()Lcom/sigmob/sdk/base/common/w;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->m:Lcom/sigmob/sdk/base/common/a;

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k$19;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoAd/k;->t()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/w;->a(Lcom/sigmob/sdk/base/common/a;I)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$19;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->m(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k$19;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/k;->I(Lcom/sigmob/sdk/videoAd/k;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k$19;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoAd/k;->t()I

    move-result v2

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/k$19;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v3}, Lcom/sigmob/sdk/videoAd/k;->s()I

    move-result v3

    iget-object v4, p0, Lcom/sigmob/sdk/videoAd/k$19;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v4}, Lcom/sigmob/sdk/videoAd/k;->a(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sigmob/sdk/videoAd/a;->b(Landroid/content/Context;IILcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$19;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v0, v5}, Lcom/sigmob/sdk/videoAd/k;->b(Z)V

    :cond_6a
    :goto_6a
    return-void

    :cond_6b
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$19;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->k(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/videoAd/BaseVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->pause()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$19;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->b(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/views/AlertDialogWidget;

    move-result-object v0

    if-nez v0, :cond_83

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$19;->b:Lcom/sigmob/sdk/videoAd/k;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k$19;->a:Landroid/content/Context;

    invoke-static {v0, v1, v3}, Lcom/sigmob/sdk/videoAd/k;->a(Lcom/sigmob/sdk/videoAd/k;Landroid/content/Context;I)V

    :cond_83
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$19;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->b(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/views/AlertDialogWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k$19;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/k;->G(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/views/SkipButtonWidget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->getTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->setduration(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$19;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->b(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/views/AlertDialogWidget;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->setVisibility(I)V

    goto :goto_6a
.end method
