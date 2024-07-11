.class Lcom/sigmob/windad/Splash/WindSplashAD$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/windad/common/PointEntityWindUtils$OnPointEntityExtraInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/Splash/WindSplashAD$4;->onSuccess(Ljava/util/List;Lcom/sigmob/sdk/common/e/n;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/sigmob/windad/Splash/WindSplashAD$4;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/Splash/WindSplashAD$4;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD$4$1;->b:Lcom/sigmob/windad/Splash/WindSplashAD$4;

    iput-object p2, p0, Lcom/sigmob/windad/Splash/WindSplashAD$4$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddExtra(Ljava/lang/Object;)V
    .registers 4

    instance-of v0, p1, Lcom/sigmob/sdk/common/mta/PointEntityWind;

    if-eqz v0, :cond_29

    check-cast p1, Lcom/sigmob/sdk/common/mta/PointEntityWind;

    const-string v0, "1"

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->setSub_category(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD$4$1;->b:Lcom/sigmob/windad/Splash/WindSplashAD$4;

    iget-object v0, v0, Lcom/sigmob/windad/Splash/WindSplashAD$4;->b:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {v0}, Lcom/sigmob/windad/Splash/WindSplashAD;->b(Lcom/sigmob/windad/Splash/WindSplashAD;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD$4$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->setLoad_id(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD$4$1;->b:Lcom/sigmob/windad/Splash/WindSplashAD$4;

    iget-object v0, v0, Lcom/sigmob/windad/Splash/WindSplashAD$4;->b:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {v0}, Lcom/sigmob/windad/Splash/WindSplashAD;->c(Lcom/sigmob/windad/Splash/WindSplashAD;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->setVlist(Ljava/lang/String;)V

    :cond_29
    return-void
.end method
