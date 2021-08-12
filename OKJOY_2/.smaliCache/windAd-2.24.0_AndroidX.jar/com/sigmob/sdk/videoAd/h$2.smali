.class Lcom/sigmob/sdk/videoAd/h$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/h;->f(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/sigmob/sdk/videoAd/h;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/videoAd/h;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/h$2;->b:Lcom/sigmob/sdk/videoAd/h;

    iput-object p2, p0, Lcom/sigmob/sdk/videoAd/h$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$2;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->K(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/views/SkipButtonWidget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->a()Z

    move-result p1

    if-eqz p1, :cond_a5

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$2;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoAd/h;->m()Lcom/sigmob/sdk/base/common/p;

    move-result-object p1

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->n:Lcom/sigmob/sdk/base/common/a;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h$2;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/h;->r()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/sigmob/sdk/base/common/p;->a(Lcom/sigmob/sdk/base/common/a;I)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$2;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->L(Lcom/sigmob/sdk/videoAd/h;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_6e

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$2;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_34

    goto :goto_6e

    :cond_34
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$2;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->l(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/videoAd/BaseVideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->pause()V

    const-string p1, "videoView.pause()"

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$2;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->b(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/views/AlertDialogWidget;

    move-result-object p1

    if-nez p1, :cond_51

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$2;->b:Lcom/sigmob/sdk/videoAd/h;

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/h$2;->a:Landroid/content/Context;

    invoke-static {p1, v2, v1}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;Landroid/content/Context;I)V

    :cond_51
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$2;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->b(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/views/AlertDialogWidget;

    move-result-object p1

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h$2;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/h;->K(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/views/SkipButtonWidget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->getTime()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->setduration(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$2;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->b(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/views/AlertDialogWidget;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->setVisibility(I)V

    goto :goto_a5

    :cond_6e
    :goto_6e
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$2;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoAd/h;->m()Lcom/sigmob/sdk/base/common/p;

    move-result-object p1

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->m:Lcom/sigmob/sdk/base/common/a;

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/h$2;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoAd/h;->r()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/sigmob/sdk/base/common/p;->a(Lcom/sigmob/sdk/base/common/a;I)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$2;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->m(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object p1

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h$2;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/h;->M(Lcom/sigmob/sdk/videoAd/h;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/h$2;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoAd/h;->r()I

    move-result v2

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/h$2;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {v3}, Lcom/sigmob/sdk/videoAd/h;->q()I

    move-result v3

    iget-object v4, p0, Lcom/sigmob/sdk/videoAd/h$2;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v4}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v4

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/sigmob/sdk/videoAd/a;->b(Landroid/content/Context;IILcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$2;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/videoAd/h;->a(Z)V

    :cond_a5
    :goto_a5
    return-void
.end method
