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

    .line 51
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

    .line 66
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public onAttributionFailure(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "af\u521d\u59cb\u5316\u5931\u8d25\uff1a\uff1a\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public onConversionDataFail(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "af\u521d\u59cb\u5316\u5931\u8d25message\uff1a\uff1a\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 61
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

    .line 55
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-void
.end method
