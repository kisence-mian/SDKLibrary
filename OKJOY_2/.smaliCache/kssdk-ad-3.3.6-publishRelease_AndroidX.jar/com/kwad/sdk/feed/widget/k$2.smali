.class Lcom/kwad/sdk/feed/widget/k$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/feed/widget/k;->a(Lcom/kwad/sdk/core/video/videoview/a;Lcom/kwad/sdk/core/video/videoview/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/feed/widget/k;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/feed/widget/k;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/feed/widget/k$2;->a:Lcom/kwad/sdk/feed/widget/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k$2;->a:Lcom/kwad/sdk/feed/widget/k;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/k;->a(Lcom/kwad/sdk/feed/widget/k;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b0

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k$2;->a:Lcom/kwad/sdk/feed/widget/k;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/k;->d(Lcom/kwad/sdk/feed/widget/k;)Lcom/kwad/sdk/core/video/videoview/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/core/video/videoview/b;->i()Z

    move-result v0

    const-wide/16 v2, 0x1388

    const/4 v4, 0x0

    if-nez v0, :cond_68

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k$2;->a:Lcom/kwad/sdk/feed/widget/k;

    invoke-static {p1}, Lcom/kwad/sdk/feed/widget/k;->a(Lcom/kwad/sdk/feed/widget/k;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k$2;->a:Lcom/kwad/sdk/feed/widget/k;

    invoke-static {p1}, Lcom/kwad/sdk/feed/widget/k;->b(Lcom/kwad/sdk/feed/widget/k;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k$2;->a:Lcom/kwad/sdk/feed/widget/k;

    invoke-static {p1}, Lcom/kwad/sdk/feed/widget/k;->c(Lcom/kwad/sdk/feed/widget/k;)Lcom/kwad/sdk/feed/widget/j;

    move-result-object p1

    if-eqz p1, :cond_40

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k$2;->a:Lcom/kwad/sdk/feed/widget/k;

    invoke-static {p1}, Lcom/kwad/sdk/feed/widget/k;->c(Lcom/kwad/sdk/feed/widget/k;)Lcom/kwad/sdk/feed/widget/j;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/kwad/sdk/feed/widget/j;->a(Z)V

    :cond_40
    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k$2;->a:Lcom/kwad/sdk/feed/widget/k;

    invoke-virtual {p1}, Lcom/kwad/sdk/feed/widget/k;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_e0

    :goto_48
    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k$2;->a:Lcom/kwad/sdk/feed/widget/k;

    invoke-virtual {p1}, Lcom/kwad/sdk/feed/widget/k;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k$2;->a:Lcom/kwad/sdk/feed/widget/k;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/k;->e(Lcom/kwad/sdk/feed/widget/k;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k$2;->a:Lcom/kwad/sdk/feed/widget/k;

    invoke-virtual {p1}, Lcom/kwad/sdk/feed/widget/k;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k$2;->a:Lcom/kwad/sdk/feed/widget/k;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/k;->f(Lcom/kwad/sdk/feed/widget/k;)Lcom/kwad/sdk/utils/aj;

    move-result-object v0

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_e0

    :cond_68
    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k$2;->a:Lcom/kwad/sdk/feed/widget/k;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/k;->g(Lcom/kwad/sdk/feed/widget/k;)I

    move-result v0

    const/16 v5, 0x65

    if-ne v0, v5, :cond_9e

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k$2;->a:Lcom/kwad/sdk/feed/widget/k;

    invoke-static {p1}, Lcom/kwad/sdk/feed/widget/k;->a(Lcom/kwad/sdk/feed/widget/k;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k$2;->a:Lcom/kwad/sdk/feed/widget/k;

    invoke-static {p1}, Lcom/kwad/sdk/feed/widget/k;->b(Lcom/kwad/sdk/feed/widget/k;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k$2;->a:Lcom/kwad/sdk/feed/widget/k;

    invoke-static {p1}, Lcom/kwad/sdk/feed/widget/k;->c(Lcom/kwad/sdk/feed/widget/k;)Lcom/kwad/sdk/feed/widget/j;

    move-result-object p1

    if-eqz p1, :cond_95

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k$2;->a:Lcom/kwad/sdk/feed/widget/k;

    invoke-static {p1}, Lcom/kwad/sdk/feed/widget/k;->c(Lcom/kwad/sdk/feed/widget/k;)Lcom/kwad/sdk/feed/widget/j;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/kwad/sdk/feed/widget/j;->a(Z)V

    :cond_95
    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k$2;->a:Lcom/kwad/sdk/feed/widget/k;

    invoke-virtual {p1}, Lcom/kwad/sdk/feed/widget/k;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_e0

    goto :goto_48

    :cond_9e
    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k$2;->a:Lcom/kwad/sdk/feed/widget/k;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/k;->h(Lcom/kwad/sdk/feed/widget/k;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_e0

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k$2;->a:Lcom/kwad/sdk/feed/widget/k;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/k;->h(Lcom/kwad/sdk/feed/widget/k;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_e0

    :cond_b0
    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k$2;->a:Lcom/kwad/sdk/feed/widget/k;

    invoke-virtual {p1}, Lcom/kwad/sdk/feed/widget/k;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_e0

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k$2;->a:Lcom/kwad/sdk/feed/widget/k;

    invoke-virtual {p1}, Lcom/kwad/sdk/feed/widget/k;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k$2;->a:Lcom/kwad/sdk/feed/widget/k;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/k;->e(Lcom/kwad/sdk/feed/widget/k;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k$2;->a:Lcom/kwad/sdk/feed/widget/k;

    invoke-static {p1}, Lcom/kwad/sdk/feed/widget/k;->i(Lcom/kwad/sdk/feed/widget/k;)Z

    move-result p1

    if-nez p1, :cond_e0

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k$2;->a:Lcom/kwad/sdk/feed/widget/k;

    invoke-virtual {p1}, Lcom/kwad/sdk/feed/widget/k;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k$2;->a:Lcom/kwad/sdk/feed/widget/k;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/k;->f(Lcom/kwad/sdk/feed/widget/k;)Lcom/kwad/sdk/utils/aj;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_e0
    :goto_e0
    return-void
.end method
