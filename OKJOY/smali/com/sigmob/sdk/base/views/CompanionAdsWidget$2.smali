.class Lcom/sigmob/sdk/base/views/CompanionAdsWidget$2;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->e()V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$2;->a:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$2;->a:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->a(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$2;->a:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->b(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$2;->a:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-static {v0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->a(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;)Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->clearAnimation()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$2;->a:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->a(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$2;->a:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->b(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$2;->a:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-static {v0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->a(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;)Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->clearAnimation()V

    return-void
.end method
