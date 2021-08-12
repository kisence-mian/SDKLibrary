.class Lcom/sigmob/sdk/videoAd/h$17;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/views/AlertDialogWidget$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/h;->c(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/videoAd/h;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/videoAd/h;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/h$17;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$17;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->g(Lcom/sigmob/sdk/videoAd/h;)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$17;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/h;->m()Lcom/sigmob/sdk/base/common/p;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->m:Lcom/sigmob/sdk/base/common/a;

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/h$17;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoAd/h;->r()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/p;->a(Lcom/sigmob/sdk/base/common/a;I)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$17;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->m(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h$17;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/h;->D(Lcom/sigmob/sdk/videoAd/h;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/h$17;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoAd/h;->r()I

    move-result v2

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/h$17;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {v3}, Lcom/sigmob/sdk/videoAd/h;->q()I

    move-result v3

    iget-object v4, p0, Lcom/sigmob/sdk/videoAd/h$17;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v4}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sigmob/sdk/videoAd/a;->b(Landroid/content/Context;IILcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_3a
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$17;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->b(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/views/AlertDialogWidget;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->setVisibility(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$17;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->m(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/a;->e()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$17;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->E(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/common/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/base/common/h;->a()V

    return-void

    :cond_5b
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$17;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->F(Lcom/sigmob/sdk/videoAd/h;)Z

    move-result v0

    if-nez v0, :cond_6c

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$17;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/h;->r()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/videoAd/h;->c(Lcom/sigmob/sdk/videoAd/h;I)V

    :cond_6c
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$17;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->l(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/videoAd/BaseVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->stopPlayback()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$17;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->u(Lcom/sigmob/sdk/videoAd/h;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$17;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->w(Lcom/sigmob/sdk/videoAd/h;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$17;->a:Lcom/sigmob/sdk/videoAd/h;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/videoAd/h;->c(Lcom/sigmob/sdk/videoAd/h;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$17;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->c(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/videoAd/g;

    move-result-object v0

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$17;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->c(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/videoAd/g;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h$17;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/h;->G(Lcom/sigmob/sdk/videoAd/h;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/h$17;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoAd/h;->r()I

    move-result v2

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/h$17;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {v3}, Lcom/sigmob/sdk/videoAd/h;->l()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    iget-object v4, p0, Lcom/sigmob/sdk/videoAd/h$17;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v4}, Lcom/sigmob/sdk/videoAd/h;->H(Lcom/sigmob/sdk/videoAd/h;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sigmob/sdk/videoAd/g;->a(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :cond_ae
    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$17;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->l(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/videoAd/BaseVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->start()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$17;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->b(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/views/AlertDialogWidget;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->setVisibility(I)V

    return-void
.end method
