.class abstract Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Landroid/content/Context;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager$a;->c:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    sget-object p1, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_SINGLE_O:Ljava/lang/String;

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager$a;->b:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager$a;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .registers 14

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager$a;->d:Ljava/util/Map;

    const-string v0, "type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getFNGid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager$a;->d:Ljava/util/Map;

    const-string v3, "uid"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getRawFNPid()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager$a;->d:Ljava/util/Map;

    const-string v6, "orderId"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, ""

    if-nez v5, :cond_2b

    move-object v5, v6

    :cond_2b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager$a;->c:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    invoke-static {v9}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v8, v10}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-direct {v9}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;-><init>()V

    invoke-virtual {v9, v0, p1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "gameid"

    invoke-virtual {v9, p1, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v3, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "pid"

    invoke-virtual {v9, p1, v4}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "time"

    invoke-virtual {v9, p1, v7}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "sign"

    invoke-virtual {v9, p1, v8}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager$a;->c:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    invoke-static {p1, v5}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_96

    const-string p1, "order"

    invoke-virtual {v9, p1, v5}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_96
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager$a;->c:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->b(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_ad

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager$a;->c:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->b(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "stoken"

    invoke-virtual {v9, v0, p1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ad
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager$a;->d:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_14c

    const-string p1, "channel"

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getFNChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, p1, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "channelSy"

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getSYChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, p1, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "os"

    const-string v0, "android"

    invoke-virtual {v9, p1, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getAppVersion()Ljava/lang/String;

    move-result-object p1

    const-string v1, "appVersion"

    invoke-virtual {v9, v1, p1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-nez p1, :cond_e9

    move-object p1, v6

    goto :goto_eb

    :cond_e9
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    :goto_eb
    const-string v1, "osVersion"

    invoke-virtual {v9, v1, p1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez p1, :cond_f6

    move-object p1, v6

    goto :goto_f8

    :cond_f6
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_f8
    const-string v1, "device"

    invoke-virtual {v9, v1, p1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object p1

    const-string v1, "did"

    invoke-virtual {v9, v1, p1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getMno()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mno"

    invoke-virtual {v9, v1, p1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getNm()Ljava/lang/String;

    move-result-object p1

    const-string v1, "nm"

    invoke-virtual {v9, v1, p1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object p1

    invoke-virtual {p1, v9}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fillParam(Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager$a;->a:Landroid/content/Context;

    if-nez p1, :cond_131

    move-object p1, v6

    goto :goto_135

    :cond_131
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    :goto_135
    const-string v1, "pkgName"

    invoke-virtual {v9, v1, p1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "deviceType"

    invoke-virtual {v9, p1, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_13f
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager$a;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager$a;->b:Ljava/lang/String;

    const-string v1, "GET"

    invoke-static {p1, v0, v1, v9}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)Ljava/lang/String;

    move-result-object v6
    :try_end_149
    .catch Lcom/ssjj/fnsdk/core/SsjjFNException; {:try_start_13f .. :try_end_149} :catch_14a

    goto :goto_14b

    :catch_14a
    move-exception p1

    :goto_14b
    return-object v6

    :cond_14c
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager$a;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b7
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method protected b(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager$a;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager$a;->b(Ljava/lang/String;)V

    return-void
.end method
