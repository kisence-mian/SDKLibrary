.class public abstract Lcom/mintegral/msdk/d/b/b;
.super Lcom/mintegral/msdk/base/common/net/a/a;
.source "ShortCutsResponseHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/net/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/mintegral/msdk/base/entity/CampaignUnit;)V
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 10
    check-cast p1, Lorg/json/JSONObject;

    .line 1023
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 1024
    const/4 v1, 0x1

    if-ne v1, v0, :cond_46

    .line 1025
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mintegral/msdk/d/b/b;->a(J)V

    .line 1026
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->parseCampaignUnit(Lorg/json/JSONObject;)Lcom/mintegral/msdk/base/entity/CampaignUnit;

    move-result-object v0

    .line 1027
    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3d

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3d

    .line 1028
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/d/b/b;->a(Lcom/mintegral/msdk/base/entity/CampaignUnit;)V

    .line 1029
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/d/b/b;->a(I)V

    .line 1031
    :goto_3c
    return-void

    :cond_3d
    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/d/b/b;->b(Lcom/mintegral/msdk/base/entity/CampaignUnit;)V

    goto :goto_3c

    .line 1034
    :cond_46
    const-string v0, "msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/d/b/b;->b(Lcom/mintegral/msdk/base/entity/CampaignUnit;)V

    goto :goto_3c
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/d/b/b;->b(Lcom/mintegral/msdk/base/entity/CampaignUnit;)V

    .line 43
    return-void
.end method

.method public abstract b(Lcom/mintegral/msdk/base/entity/CampaignUnit;)V
.end method
