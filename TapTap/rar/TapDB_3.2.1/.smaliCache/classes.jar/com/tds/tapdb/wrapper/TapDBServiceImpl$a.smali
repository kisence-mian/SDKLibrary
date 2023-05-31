.class Lcom/tds/tapdb/wrapper/TapDBServiceImpl$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/tds/tapdb/sdk/TapDB$TapDBDataDynamicProperties;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/tapdb/wrapper/TapDBServiceImpl;->registerDynamicProperties(Lcom/tds/tapdb/wrapper/TapDBDynamicProperties;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tds/tapdb/wrapper/TapDBDynamicProperties;

.field final synthetic b:Lcom/tds/tapdb/wrapper/TapDBServiceImpl;


# direct methods
.method constructor <init>(Lcom/tds/tapdb/wrapper/TapDBServiceImpl;Lcom/tds/tapdb/wrapper/TapDBDynamicProperties;)V
    .registers 3

    iput-object p1, p0, Lcom/tds/tapdb/wrapper/TapDBServiceImpl$a;->b:Lcom/tds/tapdb/wrapper/TapDBServiceImpl;

    iput-object p2, p0, Lcom/tds/tapdb/wrapper/TapDBServiceImpl$a;->a:Lcom/tds/tapdb/wrapper/TapDBDynamicProperties;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDynamicProperties()Lorg/json/JSONObject;
    .registers 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/tds/tapdb/wrapper/TapDBServiceImpl$a;->a:Lcom/tds/tapdb/wrapper/TapDBDynamicProperties;

    invoke-interface {v1}, Lcom/tds/tapdb/wrapper/TapDBDynamicProperties;->getDynamicProperties()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string v0, "TapDBServiceImpl [registerDynamicProperties] method getDynamicProperties failed"

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
