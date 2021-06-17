.class Lcom/loongcheer/appsflyersdk/init/AppsflyerInit$1;
.super Ljava/lang/Object;
.source "AppsflyerInit.java"

# interfaces
.implements Lcom/appsflyer/AppsFlyerConversionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;->init(Landroid/app/Application;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;


# direct methods
.method constructor <init>(Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;)V
    .registers 2
    .param p1, "this$0"    # Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;

    .line 50
    iput-object p1, p0, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit$1;->this$0:Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppOpenAttribution(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public onAttributionFailure(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 69
    return-void
.end method

.method public onConversionDataFail(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 59
    return-void
.end method

.method public onConversionDataSuccess(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 54
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-void
.end method
