.class Lcom/sigmob/sdk/splash/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/splash/h;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/sigmob/sdk/base/models/LoadAdRequest;ILcom/sigmob/sdk/splash/b;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/splash/h;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/splash/h;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/splash/h$1;->a:Lcom/sigmob/sdk/splash/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h$1;->a:Lcom/sigmob/sdk/splash/h;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/h;->a(Lcom/sigmob/sdk/splash/h;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h$1;->a:Lcom/sigmob/sdk/splash/h;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/h;->a(Lcom/sigmob/sdk/splash/h;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h$1;->a:Lcom/sigmob/sdk/splash/h;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/h;->b(Lcom/sigmob/sdk/splash/h;)Lcom/sigmob/sdk/splash/SplashAdView;

    move-result-object v0

    if-nez v0, :cond_1b

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    iget-object v0, p0, Lcom/sigmob/sdk/splash/h$1;->a:Lcom/sigmob/sdk/splash/h;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/h;->c(Lcom/sigmob/sdk/splash/h;)I

    move-result v0

    if-lez v0, :cond_49

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h$1;->a:Lcom/sigmob/sdk/splash/h;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/h;->b(Lcom/sigmob/sdk/splash/h;)Lcom/sigmob/sdk/splash/SplashAdView;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/splash/h$1;->a:Lcom/sigmob/sdk/splash/h;

    invoke-static {v1}, Lcom/sigmob/sdk/splash/h;->c(Lcom/sigmob/sdk/splash/h;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/splash/SplashAdView;->setDuration(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h$1;->a:Lcom/sigmob/sdk/splash/h;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/h;->a(Lcom/sigmob/sdk/splash/h;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/splash/h$1;->a:Lcom/sigmob/sdk/splash/h;

    invoke-static {v1}, Lcom/sigmob/sdk/splash/h;->d(Lcom/sigmob/sdk/splash/h;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h$1;->a:Lcom/sigmob/sdk/splash/h;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/h;->e(Lcom/sigmob/sdk/splash/h;)I

    goto :goto_1a

    :cond_49
    iget-object v0, p0, Lcom/sigmob/sdk/splash/h$1;->a:Lcom/sigmob/sdk/splash/h;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/h;->b(Lcom/sigmob/sdk/splash/h;)Lcom/sigmob/sdk/splash/SplashAdView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/splash/SplashAdView;->setDuration(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h$1;->a:Lcom/sigmob/sdk/splash/h;

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->q:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/splash/h$1;->a:Lcom/sigmob/sdk/splash/h;

    invoke-static {v2}, Lcom/sigmob/sdk/splash/h;->f(Lcom/sigmob/sdk/splash/h;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/splash/h$1;->a:Lcom/sigmob/sdk/splash/h;

    invoke-static {v3}, Lcom/sigmob/sdk/splash/h;->g(Lcom/sigmob/sdk/splash/h;)Lcom/sigmob/sdk/base/models/LoadAdRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v4, v1, v2, v3}, Lcom/sigmob/sdk/splash/h;->a(Lcom/sigmob/sdk/splash/h;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    goto :goto_1a
.end method
