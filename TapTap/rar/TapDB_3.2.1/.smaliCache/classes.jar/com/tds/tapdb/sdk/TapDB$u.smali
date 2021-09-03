.class final Lcom/tds/tapdb/sdk/TapDB$u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/tapdb/sdk/TapDB;->setServer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/tds/tapdb/sdk/TapDB$u;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const-string v0, "event"

    const-string v1, "first_server"

    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, p0, Lcom/tds/tapdb/sdk/TapDB$u;->a:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->d()Lcom/tds/tapdb/sdk/TapDB;

    move-result-object v3

    sget-object v4, Lcom/tds/tapdb/b/e;->g:Lcom/tds/tapdb/b/e;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5, v2}, Lcom/tds/tapdb/sdk/TapDB;->a(Lcom/tds/tapdb/b/e;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1b} :catch_2c

    const-string v1, "current_server"

    :try_start_1d
    iget-object v3, p0, Lcom/tds/tapdb/sdk/TapDB$u;->a:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->d()Lcom/tds/tapdb/sdk/TapDB;

    move-result-object v1

    sget-object v3, Lcom/tds/tapdb/b/e;->h:Lcom/tds/tapdb/b/e;

    invoke-virtual {v1, v3, v0, v5, v2}, Lcom/tds/tapdb/sdk/TapDB;->a(Lcom/tds/tapdb/b/e;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2b} :catch_2c

    goto :goto_30

    :catch_2c
    move-exception v0

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/Exception;)V

    :goto_30
    return-void
.end method
