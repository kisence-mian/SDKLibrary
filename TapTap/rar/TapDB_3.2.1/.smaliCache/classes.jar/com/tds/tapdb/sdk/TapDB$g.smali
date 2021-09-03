.class final Lcom/tds/tapdb/sdk/TapDB$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/tapdb/sdk/TapDB;->onCharge(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:J

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .registers 8

    iput-object p1, p0, Lcom/tds/tapdb/sdk/TapDB$g;->a:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/tds/tapdb/sdk/TapDB$g;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/tds/tapdb/sdk/TapDB$g;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/tds/tapdb/sdk/TapDB$g;->d:J

    iput-object p6, p0, Lcom/tds/tapdb/sdk/TapDB$g;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/tds/tapdb/sdk/TapDB$g;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/tds/tapdb/sdk/TapDB$g;->a:Lorg/json/JSONObject;

    if-nez v0, :cond_9

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_3e

    :cond_9
    const-string v1, "order_id"

    :try_start_b
    iget-object v2, p0, Lcom/tds/tapdb/sdk/TapDB$g;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tds/tapdb/b/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_3e

    const-string v1, "product"

    :try_start_12
    iget-object v2, p0, Lcom/tds/tapdb/sdk/TapDB$g;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tds/tapdb/b/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_3e

    const-string v1, "amount"

    :try_start_19
    iget-wide v2, p0, Lcom/tds/tapdb/sdk/TapDB$g;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tds/tapdb/b/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_22} :catch_3e

    const-string v1, "currency_type"

    :try_start_24
    iget-object v2, p0, Lcom/tds/tapdb/sdk/TapDB$g;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tds/tapdb/b/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_29} :catch_3e

    const-string v1, "payment"

    :try_start_2b
    iget-object v2, p0, Lcom/tds/tapdb/sdk/TapDB$g;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tds/tapdb/b/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->d()Lcom/tds/tapdb/sdk/TapDB;

    move-result-object v1

    sget-object v2, Lcom/tds/tapdb/b/e;->c:Lcom/tds/tapdb/b/e;

    const-string v3, "event"

    const-string v4, "charge"

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/tds/tapdb/sdk/TapDB;->a(Lcom/tds/tapdb/b/e;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3d} :catch_3e

    goto :goto_42

    :catch_3e
    move-exception v0

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/Exception;)V

    :goto_42
    return-void
.end method
