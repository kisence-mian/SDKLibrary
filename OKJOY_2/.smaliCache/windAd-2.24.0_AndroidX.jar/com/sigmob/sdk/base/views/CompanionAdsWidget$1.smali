.class Lcom/sigmob/sdk/base/views/CompanionAdsWidget$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$1;->a:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$1;->a:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->a(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;Z)Z

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$1;->a:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->b(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;Z)Z

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$1;->a:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-static {p1}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->a(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;)Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->clearAnimation()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$1;->a:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->a(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;Z)Z

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$1;->a:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->b(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;Z)Z

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$1;->a:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-static {p1}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->a(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;)Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->clearAnimation()V

    return-void
.end method
