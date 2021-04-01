.class Lcom/sigmob/sdk/base/views/CompanionAdsWidget$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->h()V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$3;->a:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$3;->a:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->a(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$3;->a:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-static {v0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->a(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;)Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->clearAnimation()V

    const-string v0, "startDownToUpAnimator end"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
