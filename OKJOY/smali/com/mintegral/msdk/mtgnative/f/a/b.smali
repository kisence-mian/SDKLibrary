.class public abstract Lcom/mintegral/msdk/mtgnative/f/a/b;
.super Lcom/mintegral/msdk/base/common/net/a/a;
.source "NativeResponseHandler.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/net/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(ILjava/lang/String;)V
.end method

.method public abstract a(Lcom/mintegral/msdk/base/entity/CampaignUnit;)V
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 13
    check-cast p1, Lorg/json/JSONObject;

    .line 1036
    iget v0, p0, Lcom/mintegral/msdk/mtgnative/f/a/b;->a:I

    if-nez v0, :cond_55

    .line 1067
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 1068
    if-ne v1, v0, :cond_4b

    .line 1069
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/mintegral/msdk/mtgnative/f/a/b;->a(J)V

    .line 1070
    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->parseCampaignUnit(Lorg/json/JSONObject;)Lcom/mintegral/msdk/base/entity/CampaignUnit;

    move-result-object v1

    .line 1071
    if-eqz v1, :cond_41

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_41

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_41

    .line 1072
    invoke-virtual {p0, v1}, Lcom/mintegral/msdk/mtgnative/f/a/b;->a(Lcom/mintegral/msdk/base/entity/CampaignUnit;)V

    .line 1073
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/mtgnative/f/a/b;->a(I)V

    .line 2056
    :cond_40
    :goto_40
    return-void

    .line 1075
    :cond_41
    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mintegral/msdk/mtgnative/f/a/b;->a(ILjava/lang/String;)V

    goto :goto_40

    .line 1078
    :cond_4b
    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mintegral/msdk/mtgnative/f/a/b;->a(ILjava/lang/String;)V

    goto :goto_40

    .line 1038
    :cond_55
    iget v0, p0, Lcom/mintegral/msdk/mtgnative/f/a/b;->a:I

    if-ne v0, v1, :cond_40

    .line 2046
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 2047
    if-ne v1, v0, :cond_a1

    .line 2048
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/mintegral/msdk/mtgnative/f/a/b;->a(J)V

    .line 2049
    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->parseCampaignUnit(Lorg/json/JSONObject;)Lcom/mintegral/msdk/base/entity/CampaignUnit;

    move-result-object v1

    .line 2050
    if-eqz v1, :cond_97

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getListFrames()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_97

    .line 2051
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getListFrames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_97

    .line 2052
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getListFrames()Ljava/util/List;

    move-result-object v0

    .line 2053
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/mtgnative/f/a/b;->b(Ljava/util/List;)V

    .line 2054
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getListFrames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/mtgnative/f/a/b;->a(I)V

    goto :goto_40

    .line 2056
    :cond_97
    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mintegral/msdk/mtgnative/f/a/b;->a(ILjava/lang/String;)V

    goto :goto_40

    .line 2059
    :cond_a1
    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mintegral/msdk/mtgnative/f/a/b;->a(ILjava/lang/String;)V

    goto :goto_40
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/mintegral/msdk/mtgnative/f/a/b;->a(ILjava/lang/String;)V

    .line 87
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 18
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/f/a/b;->b:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public abstract b(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/out/Frame;",
            ">;)V"
        }
    .end annotation
.end method

.method public final f(I)V
    .registers 2

    .prologue
    .line 26
    iput p1, p0, Lcom/mintegral/msdk/mtgnative/f/a/b;->a:I

    .line 27
    return-void
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/f/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final i()I
    .registers 2

    .prologue
    .line 30
    iget v0, p0, Lcom/mintegral/msdk/mtgnative/f/a/b;->a:I

    return v0
.end method
