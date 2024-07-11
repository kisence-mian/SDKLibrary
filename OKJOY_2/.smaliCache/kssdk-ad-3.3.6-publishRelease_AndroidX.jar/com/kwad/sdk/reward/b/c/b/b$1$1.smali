.class Lcom/kwad/sdk/reward/b/c/b/b$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/reward/b/c/b/b$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/b/c/b/b$1;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/b/c/b/b$1;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/b/c/b/b$1$1;->a:Lcom/kwad/sdk/reward/b/c/b/b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/b$1$1;->a:Lcom/kwad/sdk/reward/b/c/b/b$1;

    iget-object v0, v0, Lcom/kwad/sdk/reward/b/c/b/b$1;->a:Lcom/kwad/sdk/reward/b/c/b/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/reward/b/c/b/b;->j()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/b$1$1;->a:Lcom/kwad/sdk/reward/b/c/b/b$1;

    iget-object v0, v0, Lcom/kwad/sdk/reward/b/c/b/b$1;->a:Lcom/kwad/sdk/reward/b/c/b/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/reward/b/c/b/b;->j()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/b$1$1;->a:Lcom/kwad/sdk/reward/b/c/b/b$1;

    iget-object v0, v0, Lcom/kwad/sdk/reward/b/c/b/b$1;->a:Lcom/kwad/sdk/reward/b/c/b/b;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/c/b/b;->c(Lcom/kwad/sdk/reward/b/c/b/b;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/b$1$1;->a:Lcom/kwad/sdk/reward/b/c/b/b$1;

    iget-object v0, v0, Lcom/kwad/sdk/reward/b/c/b/b$1;->a:Lcom/kwad/sdk/reward/b/c/b/b;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/c/b/b;->d(Lcom/kwad/sdk/reward/b/c/b/b;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/b$1$1;->a:Lcom/kwad/sdk/reward/b/c/b/b$1;

    iget-object v0, v0, Lcom/kwad/sdk/reward/b/c/b/b$1;->a:Lcom/kwad/sdk/reward/b/c/b/b;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/c/b/b;->d(Lcom/kwad/sdk/reward/b/c/b/b;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_46
    return-void
.end method
