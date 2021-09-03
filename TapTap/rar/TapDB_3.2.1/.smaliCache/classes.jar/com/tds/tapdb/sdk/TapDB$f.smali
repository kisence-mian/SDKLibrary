.class final Lcom/tds/tapdb/sdk/TapDB$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/tapdb/sdk/TapDB;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    iput-object p1, p0, Lcom/tds/tapdb/sdk/TapDB$f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tds/tapdb/sdk/TapDB$f;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const-string v0, "Android"

    const-string v1, "device"

    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->e()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->f()Lcom/tds/tapdb/sdk/TapDB;

    move-result-object v3

    invoke-static {v3}, Lcom/tds/tapdb/sdk/TapDB;->e(Lcom/tds/tapdb/sdk/TapDB;)Ljava/lang/String;

    move-result-object v3
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_cd

    const-string v4, "client_id"

    goto :goto_24

    :cond_1a
    :try_start_1a
    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->f()Lcom/tds/tapdb/sdk/TapDB;

    move-result-object v3

    invoke-static {v3}, Lcom/tds/tapdb/sdk/TapDB;->e(Lcom/tds/tapdb/sdk/TapDB;)Ljava/lang/String;

    move-result-object v3
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_22} :catch_cd

    const-string v4, "index"

    :goto_24
    :try_start_24
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "name"

    const-string v4, "custom"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2e} :catch_cd

    const-string v3, "identify"

    :try_start_30
    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->f()Lcom/tds/tapdb/sdk/TapDB;

    move-result-object v4

    invoke-static {v4}, Lcom/tds/tapdb/sdk/TapDB;->f(Lcom/tds/tapdb/sdk/TapDB;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/tds/tapdb/b/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_44} :catch_cd

    const-string v4, "code"

    :try_start_46
    iget-object v5, p0, Lcom/tds/tapdb/sdk/TapDB$f;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4b} :catch_cd

    const-string v4, "props"

    :try_start_4d
    iget-object v5, p0, Lcom/tds/tapdb/sdk/TapDB$f;->b:Lorg/json/JSONObject;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "ga_ver"

    const-string v5, "3.2.0"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_5c} :catch_cd

    const-string v4, "channel"

    :try_start_5e
    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->f()Lcom/tds/tapdb/sdk/TapDB;

    move-result-object v5

    invoke-static {v5}, Lcom/tds/tapdb/sdk/TapDB;->a(Lcom/tds/tapdb/sdk/TapDB;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_69} :catch_cd

    const-string v4, "ver"

    :try_start_6b
    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->f()Lcom/tds/tapdb/sdk/TapDB;

    move-result-object v5

    invoke-static {v5}, Lcom/tds/tapdb/sdk/TapDB;->f(Lcom/tds/tapdb/sdk/TapDB;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/tds/tapdb/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_7a} :catch_cd

    const-string v4, "sys_ver"

    :try_start_7c
    invoke-static {}, Lcom/tds/tapdb/b/d;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_83} :catch_cd

    const-string v4, "network"

    :try_start_85
    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->f()Lcom/tds/tapdb/sdk/TapDB;

    move-result-object v5

    invoke-static {v5}, Lcom/tds/tapdb/sdk/TapDB;->f(Lcom/tds/tapdb/sdk/TapDB;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/tds/tapdb/b/i;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->f()Lcom/tds/tapdb/sdk/TapDB;

    move-result-object v4

    invoke-static {v4}, Lcom/tds/tapdb/sdk/TapDB;->b(Lcom/tds/tapdb/sdk/TapDB;)Lcom/tds/tapdb/sdk/LoginType;

    move-result-object v4
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_9c} :catch_cd

    if-eqz v4, :cond_af

    const-string v4, "login_type"

    :try_start_a0
    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->f()Lcom/tds/tapdb/sdk/TapDB;

    move-result-object v5

    invoke-static {v5}, Lcom/tds/tapdb/sdk/TapDB;->b(Lcom/tds/tapdb/sdk/TapDB;)Lcom/tds/tapdb/sdk/LoginType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tds/tapdb/sdk/LoginType;->getDecoratedName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_af
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v4

    const-string v5, "flag_running_in_sandbox"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_c1

    const-string v4, "tap_sandbox"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_c1
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "properties"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/tds/tapdb/sdk/b;->a(Lorg/json/JSONObject;)V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_cc} :catch_cd

    goto :goto_d1

    :catch_cd
    move-exception v0

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/Exception;)V

    :goto_d1
    return-void
.end method
