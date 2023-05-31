.class final Lcom/tds/tapdb/sdk/TapDB$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/tapdb/sdk/TapDB;->trackEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
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

    iput-object p1, p0, Lcom/tds/tapdb/sdk/TapDB$e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tds/tapdb/sdk/TapDB$e;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/tds/tapdb/sdk/TapDB$e;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tds/tapdb/b/l;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->d()Lcom/tds/tapdb/sdk/TapDB;

    move-result-object v0

    sget-object v1, Lcom/tds/tapdb/b/e;->c:Lcom/tds/tapdb/b/e;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_15

    const-string v2, "event"

    :try_start_d
    iget-object v3, p0, Lcom/tds/tapdb/sdk/TapDB$e;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/tds/tapdb/sdk/TapDB$e;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tds/tapdb/sdk/TapDB;->a(Lcom/tds/tapdb/b/e;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    move-exception v0

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/Exception;)V

    :goto_19
    return-void
.end method
