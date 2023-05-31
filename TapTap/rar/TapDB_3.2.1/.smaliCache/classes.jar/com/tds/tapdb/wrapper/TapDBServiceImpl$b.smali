.class Lcom/tds/tapdb/wrapper/TapDBServiceImpl$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/tds/tapdb/sdk/TapDB$TapDBDataDynamicProperties;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/tapdb/wrapper/TapDBServiceImpl;->registerDynamicPropertiesUE()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tds/tapdb/wrapper/TapDBServiceImpl;


# direct methods
.method constructor <init>(Lcom/tds/tapdb/wrapper/TapDBServiceImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/tds/tapdb/wrapper/TapDBServiceImpl$b;->a:Lcom/tds/tapdb/wrapper/TapDBServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDynamicProperties()Lorg/json/JSONObject;
    .registers 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lcom/tds/tapdb/wrapper/TapDBServiceImpl;->GetDynamicProperties()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string v0, "TapDBServiceImpl [registerDynamicProperties] method getDynamicProperties failed"

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
