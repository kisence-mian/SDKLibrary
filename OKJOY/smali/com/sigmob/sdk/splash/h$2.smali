.class Lcom/sigmob/sdk/splash/h$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/splash/h;->a(IZ)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/splash/h;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/splash/h;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/splash/h$2;->a:Lcom/sigmob/sdk/splash/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h$2;->a:Lcom/sigmob/sdk/splash/h;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/h;->a(Lcom/sigmob/sdk/splash/h;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h$2;->a:Lcom/sigmob/sdk/splash/h;

    invoke-static {v0, v2}, Lcom/sigmob/sdk/splash/h;->a(Lcom/sigmob/sdk/splash/h;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h$2;->a:Lcom/sigmob/sdk/splash/h;

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->I:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sigmob/sdk/splash/h$2;->a:Lcom/sigmob/sdk/splash/h;

    invoke-static {v3}, Lcom/sigmob/sdk/splash/h;->g(Lcom/sigmob/sdk/splash/h;)Lcom/sigmob/sdk/base/models/LoadAdRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_SPLASH_TIMEOUT:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/SigmobError;->getErrorCode()I

    move-result v4

    const-string v5, "load ad timeout"

    invoke-static/range {v0 .. v5}, Lcom/sigmob/sdk/splash/h;->a(Lcom/sigmob/sdk/splash/h;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h$2;->a:Lcom/sigmob/sdk/splash/h;

    sget-object v1, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_SPLASH_TIMEOUT:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/splash/h;->a(Lcom/sigmob/sdk/splash/h;Lcom/sigmob/sdk/base/models/SigmobError;)V

    return-void
.end method
