.class Lcom/sigmob/sdk/mraid/a$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/common/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid/a$a;->javascriptAddDcLog(Lorg/json/JSONObject;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/sigmob/sdk/mraid/a$a;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/mraid/a$a;Lorg/json/JSONObject;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/a$a$1;->b:Lcom/sigmob/sdk/mraid/a$a;

    iput-object p2, p0, Lcom/sigmob/sdk/mraid/a$a$1;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/a$a$1;->a:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "ext"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    :try_start_1f
    iget-object v2, p0, Lcom/sigmob/sdk/mraid/a$a$1;->a:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_31} :catch_32

    goto :goto_b

    :catch_32
    move-exception v2

    goto :goto_b

    :cond_34
    const-string v3, "_ac_type"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    :try_start_3c
    iget-object v3, p0, Lcom/sigmob/sdk/mraid/a$a$1;->a:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_46

    goto :goto_b

    :catchall_46
    move-exception v2

    goto :goto_b

    :cond_48
    const-string v1, "source"

    const-string v2, "js"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v1, p1, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;

    if-eqz v1, :cond_58

    check-cast p1, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setOptions(Ljava/util/Map;)V

    :cond_58
    return-void
.end method
