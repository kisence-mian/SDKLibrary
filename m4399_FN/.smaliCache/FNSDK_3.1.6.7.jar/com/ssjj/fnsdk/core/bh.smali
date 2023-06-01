.class Lcom/ssjj/fnsdk/core/bh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:Ljava/lang/String;

.field private final synthetic h:Ljava/lang/String;

.field private final synthetic i:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

.field private final synthetic j:Ljava/lang/String;

.field private final synthetic k:Lcom/ssjj/fnsdk/core/SsjjFNListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 12

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/bh;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/bh;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/bh;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/bh;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/ssjj/fnsdk/core/bh;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/ssjj/fnsdk/core/bh;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/ssjj/fnsdk/core/bh;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/ssjj/fnsdk/core/bh;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/ssjj/fnsdk/core/bh;->i:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    iput-object p10, p0, Lcom/ssjj/fnsdk/core/bh;->j:Ljava/lang/String;

    iput-object p11, p0, Lcom/ssjj/fnsdk/core/bh;->k:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const-string v0, "android"

    const-string v1, "\u4e0a\u4f20\u5931\u8d25"

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
    const-string v5, "uid"

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/bh;->b:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1e} :catch_1c9

    const-string v7, ""

    if-eqz v6, :cond_24

    move-object v6, v7

    goto :goto_26

    :cond_24
    :try_start_24
    iget-object v6, p0, Lcom/ssjj/fnsdk/core/bh;->b:Ljava/lang/String;

    :goto_26
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "roleId"

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/bh;->c:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_35

    move-object v6, v7

    goto :goto_37

    :cond_35
    iget-object v6, p0, Lcom/ssjj/fnsdk/core/bh;->c:Ljava/lang/String;

    :goto_37
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "roleName"

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/bh;->d:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_46

    move-object v6, v7

    goto :goto_48

    :cond_46
    iget-object v6, p0, Lcom/ssjj/fnsdk/core/bh;->d:Ljava/lang/String;

    :goto_48
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "serverName"

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/bh;->e:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_57

    move-object v6, v7

    goto :goto_59

    :cond_57
    iget-object v6, p0, Lcom/ssjj/fnsdk/core/bh;->e:Ljava/lang/String;

    :goto_59
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "serverId"

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/bh;->f:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_68

    move-object v6, v7

    goto :goto_6a

    :cond_68
    iget-object v6, p0, Lcom/ssjj/fnsdk/core/bh;->f:Ljava/lang/String;

    :goto_6a
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "roleLevel"

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/bh;->g:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_79

    move-object v6, v7

    goto :goto_7b

    :cond_79
    iget-object v6, p0, Lcom/ssjj/fnsdk/core/bh;->g:Ljava/lang/String;

    :goto_7b
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "giftCode"

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/bh;->h:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8a

    move-object v6, v7

    goto :goto_8c

    :cond_8a
    iget-object v6, p0, Lcom/ssjj/fnsdk/core/bh;->h:Ljava/lang/String;

    :goto_8c
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "eventId"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "ip"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "did"

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/bh;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-virtual {v6}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "appVersion"

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/bh;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-virtual {v6}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getAppVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "sdkVersion"

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/bh;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v6}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "nickname"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "platformId"

    sget-object v6, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatId:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "gameId"

    sget-object v6, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnGameId:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "areaId"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "os"

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "osVersion"

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-nez v5, :cond_df

    move-object v5, v7

    goto :goto_e1

    :cond_df
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    :goto_e1
    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "device"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v5, :cond_ec

    move-object v5, v7

    goto :goto_ee

    :cond_ec
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_ee
    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "deviceType"

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "screen"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/bh;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getScreen()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "mno"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/bh;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getMno()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "nm"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/bh;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getNm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "eventTime"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/bh;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->f(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "channel"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/bh;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->b(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "channelOld"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/bh;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->j(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "channelSy"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/bh;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->c(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "pkgName"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/bh;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->d(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_152

    goto :goto_15c

    :cond_152
    iget-object v2, p0, Lcom/ssjj/fnsdk/core/bh;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->d(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    :goto_15c
    invoke-virtual {v3, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bh;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-virtual {v0, v3}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fillJson(Lorg/json/JSONObject;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/bh;->i:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string v3, "time"

    invoke-virtual {v2, v3, v4}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "6dm1165332e914ec281e7676d451f242"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/bh;->i:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string v4, "flag"

    invoke-virtual {v3, v4, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/bh;->i:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/bh;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->m(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LoginGameLog data: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ssjj/fnsdk/core/SsjjFNDebugUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bh;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->m(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "md5:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ssjj/fnsdk/core/SsjjFNDebugUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c8
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_1c8} :catch_1c9

    goto :goto_1cd

    :catch_1c9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1cd
    const/4 v0, 0x1

    :try_start_1ce
    iget-object v2, p0, Lcom/ssjj/fnsdk/core/bh;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->d(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/bh;->j:Ljava/lang/String;

    const-string v4, "GET"

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/bh;->i:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-static {v2, v3, v4, v5}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "giftCode ret: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_208

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/bh;->k:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz v2, :cond_207

    const-string v3, "\u4e0a\u4f20\u6210\u529f"

    new-instance v4, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v4}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const/4 v5, 0x0

    invoke-interface {v2, v5, v3, v4}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_207
    return-void

    :cond_208
    iget-object v3, p0, Lcom/ssjj/fnsdk/core/bh;->k:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz v3, :cond_221

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v4}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    invoke-interface {v3, v0, v2, v4}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    :try_end_221
    .catch Lcom/ssjj/fnsdk/core/SsjjFNException; {:try_start_1ce .. :try_end_221} :catch_222

    :cond_221
    return-void

    :catch_222
    move-exception v2

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/SsjjFNException;->printStackTrace()V

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/bh;->k:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz v2, :cond_232

    new-instance v3, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v3}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    invoke-interface {v2, v0, v1, v3}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_232
    return-void
.end method
