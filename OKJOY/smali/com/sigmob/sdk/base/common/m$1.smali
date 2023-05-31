.class Lcom/sigmob/sdk/base/common/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/m;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/sigmob/sdk/base/common/m;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/m;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Landroid/content/Context;)V
    .registers 5

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/m$1;->d:Lcom/sigmob/sdk/base/common/m;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/m$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/m$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/sdk/base/common/m$1;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/volley/ae;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/m$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->t:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/volley/ae;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/base/common/t;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/volley/ae;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 5

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GDTConvertRequest response "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    const-string v0, "ret"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5b

    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "dstlink"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "clickid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/m$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v0

    instance-of v2, v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v2, :cond_46

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v2, "_CLICKID_"

    invoke-virtual {v0, v2, v1}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/m$1;->d:Lcom/sigmob/sdk/base/common/m;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/m$1;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/m;->a(Lcom/sigmob/sdk/base/common/m;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/m$1;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/m$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/m$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/base/common/t;->a(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :goto_5a
    return-void

    :cond_5b
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/m$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->t:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/base/common/t;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6a} :catch_6b

    goto :goto_5a

    :catch_6b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/m$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v2, Lcom/sigmob/sdk/base/common/b/b;->t:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sigmob/sdk/base/common/t;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a
.end method
