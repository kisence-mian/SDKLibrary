.class Lcom/sigmob/sdk/videoAd/g$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/common/e/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/g;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/sigmob/sdk/base/a;

.field final synthetic e:Lcom/sigmob/sdk/videoAd/g;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/videoAd/g;Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/a;)V
    .registers 6

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/g$3;->e:Lcom/sigmob/sdk/videoAd/g;

    iput-object p2, p0, Lcom/sigmob/sdk/videoAd/g$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p3, p0, Lcom/sigmob/sdk/videoAd/g$3;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/sigmob/sdk/videoAd/g$3;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/sigmob/sdk/videoAd/g$3;->d:Lcom/sigmob/sdk/base/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/sigmob/volley/t;)V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const-string v1, "download_start"

    const-string v2, "0"

    invoke-static {v1, v2, v0}, Lcom/sigmob/sdk/base/common/s;->b(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {p1}, Lcom/sigmob/volley/t;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/g$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {p1}, Lcom/sigmob/volley/t;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .registers 14

    const-string v0, "data"

    const-string v1, "0"

    const-string v2, "download_start"

    const/4 v3, 0x0

    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GDTConvertRequest response "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    const-string v4, "ret"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_58

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "dstlink"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "clickid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v0

    instance-of v4, v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v4, :cond_4a

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v4, "_CLICKID_"

    invoke-virtual {v0, v4, p1}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4a
    iget-object v6, p0, Lcom/sigmob/sdk/videoAd/g$3;->e:Lcom/sigmob/sdk/videoAd/g;

    iget-object v7, p0, Lcom/sigmob/sdk/videoAd/g$3;->b:Landroid/content/Context;

    iget-object v8, p0, Lcom/sigmob/sdk/videoAd/g$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v10, p0, Lcom/sigmob/sdk/videoAd/g$3;->c:Ljava/lang/String;

    iget-object v11, p0, Lcom/sigmob/sdk/videoAd/g$3;->d:Lcom/sigmob/sdk/base/a;

    invoke-static/range {v6 .. v11}, Lcom/sigmob/sdk/videoAd/g;->a(Lcom/sigmob/sdk/videoAd/g;Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/a;)V

    goto :goto_7d

    :cond_58
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v2, v1, v0}, Lcom/sigmob/sdk/base/common/s;->b(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v2, v3, p1, v0}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    :try_end_66
    .catchall {:try_start_7 .. :try_end_66} :catchall_67

    goto :goto_7d

    :catchall_67
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v2, v1, v0}, Lcom/sigmob/sdk/base/common/s;->b(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v2, v3, p1, v0}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :goto_7d
    return-void
.end method
