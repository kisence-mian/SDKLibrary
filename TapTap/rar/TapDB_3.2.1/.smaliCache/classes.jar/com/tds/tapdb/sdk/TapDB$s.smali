.class final Lcom/tds/tapdb/sdk/TapDB$s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/tapdb/sdk/TapDB;->setName(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/tds/tapdb/sdk/TapDB$s;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_19

    const-string v1, "user_name"

    :try_start_7
    iget-object v2, p0, Lcom/tds/tapdb/sdk/TapDB$s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->d()Lcom/tds/tapdb/sdk/TapDB;

    move-result-object v1

    sget-object v2, Lcom/tds/tapdb/b/e;->h:Lcom/tds/tapdb/b/e;

    const-string v3, "event"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/tds/tapdb/sdk/TapDB;->a(Lcom/tds/tapdb/b/e;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception v0

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/Exception;)V

    :goto_1d
    return-void
.end method
