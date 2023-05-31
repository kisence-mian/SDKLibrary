.class Lcom/sigmob/windad/Splash/WindSplashAD$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/Splash/WindSplashAD;->a(Landroid/app/Activity;Landroid/view/ViewGroup;ILcom/sigmob/windad/Splash/WindSplashAdRequest;Ljava/util/List;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/windad/Splash/WindSplashAD;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/Splash/WindSplashAD;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD$1;->a:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD$1;->a:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {v0}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAD;)Lcom/sigmob/windad/Splash/WindSplashADListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD$1;->a:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {v0}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAD;)Lcom/sigmob/windad/Splash/WindSplashADListener;

    move-result-object v0

    sget-object v1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NOT_FOUD_ADAPTER:Lcom/sigmob/windad/WindAdError;

    iget-object v2, p0, Lcom/sigmob/windad/Splash/WindSplashAD$1;->a:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {v2}, Lcom/sigmob/windad/Splash/WindSplashAD;->b(Lcom/sigmob/windad/Splash/WindSplashAD;)Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sigmob/windad/Splash/WindSplashADListener;->onSplashAdFailToPresent(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    :cond_1d
    return-void
.end method
