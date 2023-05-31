.class public abstract Lcom/mintegral/msdk/mtgbanner/common/f/a;
.super Lcom/mintegral/msdk/base/common/net/a/a;
.source "BannerResponseHandler.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-class v0, Lcom/mintegral/msdk/mtgbanner/common/f/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/mtgbanner/common/f/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/net/a/a;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/f/a;->b:Ljava/lang/String;

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
    .line 13
    check-cast p1, Lorg/json/JSONObject;

    .line 1033
    sget-object v0, Lcom/mintegral/msdk/mtgbanner/common/f/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parseLoad content = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 1037
    const/4 v1, 0x1

    if-ne v1, v0, :cond_68

    .line 1038
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/mintegral/msdk/mtgbanner/common/f/a;->a(J)V

    .line 1039
    const-string v1, "data"

    .line 1040
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/f/a;->b:Ljava/lang/String;

    .line 1039
    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->parseCampaignUnit(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/CampaignUnit;

    move-result-object v1

    .line 1041
    if-eqz v1, :cond_5e

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_5e

    .line 1042
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5e

    .line 1043
    invoke-virtual {p0, v1}, Lcom/mintegral/msdk/mtgbanner/common/f/a;->a(Lcom/mintegral/msdk/base/entity/CampaignUnit;)V

    .line 1044
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/f/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 1045
    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgbanner/common/f/a;->f()V

    .line 1047
    :cond_52
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/mtgbanner/common/f/a;->a(I)V

    .line 1049
    :goto_5d
    return-void

    :cond_5e
    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mintegral/msdk/mtgbanner/common/f/a;->a(ILjava/lang/String;)V

    goto :goto_5d

    .line 1052
    :cond_68
    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mintegral/msdk/mtgbanner/common/f/a;->a(ILjava/lang/String;)V

    goto :goto_5d
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 58
    sget-object v0, Lcom/mintegral/msdk/mtgbanner/common/f/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFailed errorCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/mintegral/msdk/mtgbanner/common/f/a;->a(ILjava/lang/String;)V

    .line 61
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/f/a;->b:Ljava/lang/String;

    .line 24
    return-void
.end method
