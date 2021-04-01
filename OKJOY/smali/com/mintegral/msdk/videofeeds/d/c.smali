.class public abstract Lcom/mintegral/msdk/videofeeds/d/c;
.super Lcom/mintegral/msdk/base/common/net/a/a;
.source "VideoFeedsResponseHandler.java"


# instance fields
.field private a:I


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
    const/4 v3, 0x1

    .line 14
    check-cast p1, Lorg/json/JSONObject;

    .line 1028
    iget v0, p0, Lcom/mintegral/msdk/videofeeds/d/c;->a:I

    if-nez v0, :cond_69

    .line 1059
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 1062
    if-ne v3, v0, :cond_5f

    .line 1063
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/mintegral/msdk/videofeeds/d/c;->a(J)V

    .line 1064
    const-string v1, "data"

    .line 1065
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1064
    invoke-static {v1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->parseCampaignUnit(Lorg/json/JSONObject;)Lcom/mintegral/msdk/base/entity/CampaignUnit;

    move-result-object v1

    .line 1066
    if-eqz v1, :cond_55

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_55

    .line 1067
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_55

    .line 1068
    invoke-virtual {p0, v1}, Lcom/mintegral/msdk/videofeeds/d/c;->b(Lcom/mintegral/msdk/base/entity/CampaignUnit;)V

    .line 1069
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/videofeeds/d/c;->a(I)V

    .line 2050
    :cond_54
    :goto_54
    return-void

    .line 1071
    :cond_55
    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mintegral/msdk/videofeeds/d/c;->b(ILjava/lang/String;)V

    goto :goto_54

    .line 1074
    :cond_5f
    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mintegral/msdk/videofeeds/d/c;->b(ILjava/lang/String;)V

    goto :goto_54

    .line 1030
    :cond_69
    iget v0, p0, Lcom/mintegral/msdk/videofeeds/d/c;->a:I

    if-ne v0, v3, :cond_54

    .line 2037
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content frames = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2039
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 2040
    if-ne v3, v0, :cond_c2

    .line 2041
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/mintegral/msdk/videofeeds/d/c;->a(J)V

    .line 2042
    const-string v1, "data"

    .line 2043
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2042
    invoke-static {v1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->parseCampaignUnit(Lorg/json/JSONObject;)Lcom/mintegral/msdk/base/entity/CampaignUnit;

    move-result-object v1

    .line 2044
    if-eqz v1, :cond_b8

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getListFrames()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_b8

    .line 2045
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getListFrames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_b8

    .line 2046
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getListFrames()Ljava/util/List;

    move-result-object v0

    .line 2048
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/videofeeds/d/c;->a(I)V

    goto :goto_54

    .line 2050
    :cond_b8
    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mintegral/msdk/videofeeds/d/c;->b(ILjava/lang/String;)V

    goto :goto_54

    .line 2053
    :cond_c2
    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mintegral/msdk/videofeeds/d/c;->b(ILjava/lang/String;)V

    goto :goto_54
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 80
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "errorCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/mintegral/msdk/videofeeds/d/c;->b(ILjava/lang/String;)V

    .line 83
    return-void
.end method

.method public abstract b(ILjava/lang/String;)V
.end method

.method public abstract b(Lcom/mintegral/msdk/base/entity/CampaignUnit;)V
.end method
