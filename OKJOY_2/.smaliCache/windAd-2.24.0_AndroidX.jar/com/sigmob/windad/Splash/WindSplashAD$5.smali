.class Lcom/sigmob/windad/Splash/WindSplashAD$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/windad/common/PointEntityWindUtils$OnPointEntityExtraInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/Splash/WindSplashAD;->adapterDidAdClickWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/windad/Splash/WindSplashAD;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/Splash/WindSplashAD;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD$5;->a:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddExtra(Ljava/lang/Object;)V
    .registers 4

    instance-of v0, p1, Lcom/sigmob/sdk/common/mta/PointEntityWind;

    if-eqz v0, :cond_28

    check-cast p1, Lcom/sigmob/sdk/common/mta/PointEntityWind;

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD$5;->a:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {v0}, Lcom/sigmob/windad/Splash/WindSplashAD;->b(Lcom/sigmob/windad/Splash/WindSplashAD;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD$5;->a:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {v1}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAD;)Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->setLoad_id(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD$5;->a:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {v0}, Lcom/sigmob/windad/Splash/WindSplashAD;->c(Lcom/sigmob/windad/Splash/WindSplashAD;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->setVlist(Ljava/lang/String;)V

    :cond_28
    return-void
.end method
