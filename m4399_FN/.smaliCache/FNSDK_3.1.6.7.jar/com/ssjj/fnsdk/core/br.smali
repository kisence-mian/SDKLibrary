.class Lcom/ssjj/fnsdk/core/br;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

.field private final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;Ljava/lang/String;)V
    .registers 8

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/br;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/br;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/br;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/br;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/ssjj/fnsdk/core/br;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/ssjj/fnsdk/core/br;->f:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    iput-object p7, p0, Lcom/ssjj/fnsdk/core/br;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const-string v0, "roleLevel"

    const-string v1, "android"

    const-string v2, "0"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    :try_start_16
    const-string v5, "eventId"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "ip"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "did"

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/br;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-virtual {v6}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "appVersion"

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/br;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-virtual {v6}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getAppVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "sdkVersion"

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/br;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v6}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "uid"

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/br;->b:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "nickname"

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/br;->c:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "platformId"

    sget-object v6, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatId:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "gameId"

    sget-object v6, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnGameId:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "areaId"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "serverId"

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/br;->d:Ljava/lang/String;

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "os"

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "osVersion"

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_72} :catch_16d

    const-string v6, ""

    if-nez v5, :cond_78

    move-object v5, v6

    goto :goto_7a

    :cond_78
    :try_start_78
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    :goto_7a
    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "device"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v5, :cond_85

    move-object v5, v6

    goto :goto_87

    :cond_85
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_87
    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "deviceType"

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "screen"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/br;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getScreen()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mno"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/br;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getMno()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "nm"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/br;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getNm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "eventTime"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/br;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->f(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/br;->e:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "channel"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/br;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->b(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "channelOld"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/br;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->j(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "channelSy"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/br;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->c(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "username"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/br;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->k(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/br;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-virtual {v1, v3}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fillJson(Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/br;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    const/4 v2, 0x1

    invoke-static {v1, v3, v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Lorg/json/JSONObject;I)V

    const-string v1, "pkgName"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/br;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->d(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_106

    goto :goto_110

    :cond_106
    iget-object v2, p0, Lcom/ssjj/fnsdk/core/br;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->d(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    :goto_110
    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/br;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->l(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/br;->e:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loginServerLog data: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/br;->f:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string v2, "time"

    invoke-virtual {v1, v2, v4}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/br;->f:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string v2, "flag"

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "6dm1165332e914ec281e7676d451f242"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/br;->f:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16c
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_16c} :catch_16d

    goto :goto_16e

    :catch_16d
    move-exception v0

    :goto_16e
    :try_start_16e
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/br;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->d(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/br;->g:Ljava/lang/String;

    const-string v2, "GET"

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/br;->f:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-static {v0, v1, v2, v3}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)Ljava/lang/String;
    :try_end_17d
    .catch Lcom/ssjj/fnsdk/core/SsjjFNException; {:try_start_16e .. :try_end_17d} :catch_17e

    goto :goto_182

    :catch_17e
    move-exception v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNException;->printStackTrace()V

    :goto_182
    return-void
.end method
