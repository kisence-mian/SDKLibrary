.class public abstract Lcom/mintegral/msdk/reward/e/c;
.super Lcom/mintegral/msdk/base/common/net/a/a;
.source "RewardResponseHandler.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/net/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 14
    check-cast p1, Lorg/json/JSONObject;

    .line 1037
    iget v0, p0, Lcom/mintegral/msdk/reward/e/c;->a:I

    if-nez v0, :cond_57

    .line 1070
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 1071
    if-ne v1, v0, :cond_4d

    .line 1072
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/mintegral/msdk/reward/e/c;->a(J)V

    .line 1073
    const-string v1, "data"

    .line 1074
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/reward/e/c;->b:Ljava/lang/String;

    .line 1073
    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->parseCampaignUnit(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/CampaignUnit;

    move-result-object v1

    .line 1075
    if-eqz v1, :cond_43

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_43

    .line 1076
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_43

    .line 1077
    invoke-virtual {p0, v1}, Lcom/mintegral/msdk/reward/e/c;->b(Lcom/mintegral/msdk/base/entity/CampaignUnit;)V

    .line 1078
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/reward/e/c;->a(I)V

    .line 2059
    :cond_42
    :goto_42
    return-void

    .line 1080
    :cond_43
    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mintegral/msdk/reward/e/c;->b(ILjava/lang/String;)V

    goto :goto_42

    .line 1083
    :cond_4d
    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mintegral/msdk/reward/e/c;->b(ILjava/lang/String;)V

    goto :goto_42

    .line 1039
    :cond_57
    iget v0, p0, Lcom/mintegral/msdk/reward/e/c;->a:I

    if-ne v0, v1, :cond_42

    .line 2048
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 2049
    if-ne v1, v0, :cond_9e

    .line 2050
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/mintegral/msdk/reward/e/c;->a(J)V

    .line 2051
    const-string v1, "data"

    .line 2052
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/reward/e/c;->b:Ljava/lang/String;

    .line 2051
    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->parseCampaignUnit(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/CampaignUnit;

    move-result-object v1

    .line 2053
    if-eqz v1, :cond_94

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getListFrames()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_94

    .line 2054
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getListFrames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_94

    .line 2055
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getListFrames()Ljava/util/List;

    move-result-object v0

    .line 2057
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/reward/e/c;->a(I)V

    goto :goto_42

    .line 2059
    :cond_94
    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mintegral/msdk/reward/e/c;->b(ILjava/lang/String;)V

    goto :goto_42

    .line 2062
    :cond_9e
    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mintegral/msdk/reward/e/c;->b(ILjava/lang/String;)V

    goto :goto_42
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 89
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "errorCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/mintegral/msdk/reward/e/c;->b(ILjava/lang/String;)V

    .line 92
    return-void
.end method

.method public abstract b(ILjava/lang/String;)V
.end method

.method public abstract b(Lcom/mintegral/msdk/base/entity/CampaignUnit;)V
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcom/mintegral/msdk/reward/e/c;->b:Ljava/lang/String;

    .line 24
    return-void
.end method
