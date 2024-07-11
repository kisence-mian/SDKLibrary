.class Lcom/sigmob/sdk/splash/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/splash/g;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/splash/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/splash/g;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/splash/g;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/splash/g$1;->a:Lcom/sigmob/sdk/splash/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/sdk/splash/g$1;->a:Lcom/sigmob/sdk/splash/g;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/g;->a(Lcom/sigmob/sdk/splash/g;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/sigmob/sdk/splash/g$1;->a:Lcom/sigmob/sdk/splash/g;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/g;->a(Lcom/sigmob/sdk/splash/g;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/g$1;->a:Lcom/sigmob/sdk/splash/g;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/g;->b(Lcom/sigmob/sdk/splash/g;)Lcom/sigmob/sdk/splash/SplashAdView;

    move-result-object v0

    if-nez v0, :cond_1b

    return-void

    :cond_1b
    iget-object v0, p0, Lcom/sigmob/sdk/splash/g$1;->a:Lcom/sigmob/sdk/splash/g;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/g;->c(Lcom/sigmob/sdk/splash/g;)I

    move-result v0

    if-lez v0, :cond_49

    iget-object v0, p0, Lcom/sigmob/sdk/splash/g$1;->a:Lcom/sigmob/sdk/splash/g;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/g;->b(Lcom/sigmob/sdk/splash/g;)Lcom/sigmob/sdk/splash/SplashAdView;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/splash/g$1;->a:Lcom/sigmob/sdk/splash/g;

    invoke-static {v1}, Lcom/sigmob/sdk/splash/g;->c(Lcom/sigmob/sdk/splash/g;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/splash/SplashAdView;->setDuration(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/g$1;->a:Lcom/sigmob/sdk/splash/g;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/g;->a(Lcom/sigmob/sdk/splash/g;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/splash/g$1;->a:Lcom/sigmob/sdk/splash/g;

    invoke-static {v1}, Lcom/sigmob/sdk/splash/g;->d(Lcom/sigmob/sdk/splash/g;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/sigmob/sdk/splash/g$1;->a:Lcom/sigmob/sdk/splash/g;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/g;->e(Lcom/sigmob/sdk/splash/g;)I

    goto :goto_68

    :cond_49
    iget-object v0, p0, Lcom/sigmob/sdk/splash/g$1;->a:Lcom/sigmob/sdk/splash/g;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/g;->b(Lcom/sigmob/sdk/splash/g;)Lcom/sigmob/sdk/splash/SplashAdView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/splash/SplashAdView;->setDuration(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/g$1;->a:Lcom/sigmob/sdk/splash/g;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/g;->f(Lcom/sigmob/sdk/splash/g;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/splash/g$1;->a:Lcom/sigmob/sdk/splash/g;

    invoke-static {v3}, Lcom/sigmob/sdk/splash/g;->g(Lcom/sigmob/sdk/splash/g;)Lcom/sigmob/sdk/base/models/LoadAdRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "complete"

    invoke-static {v0, v1, v4, v2, v3}, Lcom/sigmob/sdk/splash/g;->a(Lcom/sigmob/sdk/splash/g;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :cond_68
    :goto_68
    return-void
.end method
