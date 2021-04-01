.class Lcom/sigmob/sdk/splash/SplashAdView$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/splash/SplashAdView;->b(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/splash/SplashAdView;

.field private b:Landroid/view/MotionEvent;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/splash/SplashAdView;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView$2;->a:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 11

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_b

    iput-object p2, p0, Lcom/sigmob/sdk/splash/SplashAdView$2;->b:Landroid/view/MotionEvent;

    :cond_a
    :goto_a
    return v6

    :cond_b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v6, :cond_a

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPressure()F

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView$2;->b:Landroid/view/MotionEvent;

    if-nez v1, :cond_1a

    iput-object p2, p0, Lcom/sigmob/sdk/splash/SplashAdView$2;->b:Landroid/view/MotionEvent;

    :cond_1a
    const-string v1, "%d,%d,%d,%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sigmob/sdk/splash/SplashAdView$2;->b:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/sigmob/sdk/splash/SplashAdView$2;->b:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :try_start_55
    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView$2;->a:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v1}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v2

    instance-of v1, v2, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v1, :cond_ad

    move-object v0, v2

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-object v1, v0

    const-string v4, "_DOWNX_"

    iget-object v5, p0, Lcom/sigmob/sdk/splash/SplashAdView$2;->b:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-object v1, v0

    const-string v4, "_DOWNY_"

    iget-object v5, p0, Lcom/sigmob/sdk/splash/SplashAdView$2;->b:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-object v1, v0

    const-string v4, "_UPX_"

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v1, "_UPY_"

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ad
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_ad} :catch_c7

    :cond_ad
    :goto_ad
    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView$2;->a:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v1}, Lcom/sigmob/sdk/splash/SplashAdView;->c(Lcom/sigmob/sdk/splash/SplashAdView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView$2;->a:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v1}, Lcom/sigmob/sdk/splash/SplashAdView;->c(Lcom/sigmob/sdk/splash/SplashAdView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView$2;->a:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v1, v3}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Lcom/sigmob/sdk/splash/SplashAdView;Ljava/lang/String;)V

    goto/16 :goto_a

    :catch_c7
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "splash click macro set "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_ad
.end method
