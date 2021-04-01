.class public Lcom/mintegral/msdk/rover/RoverCampaignUnit;
.super Ljava/lang/Object;
.source "RoverCampaignUnit.java"

# interfaces
.implements Lcom/mintegral/msdk/system/NoProGuard;
.implements Ljava/io/Serializable;


# static fields
.field public static final JSON_KEY_AD_TYPE:Ljava/lang/String; = "ad_type"

.field public static final JSON_KEY_DATA:Ljava/lang/String; = "data"

.field public static final JSON_KEY_END_SCREEN_URL:Ljava/lang/String; = "end_screen_url"

.field public static final JSON_KEY_FRAME_ADS:Ljava/lang/String; = "frames"

.field public static final JSON_KEY_HTML_URL:Ljava/lang/String; = "html_url"

.field public static final JSON_KEY_ONLY_IMPRESSION_URL:Ljava/lang/String; = "only_impression_url"

.field public static final JSON_KEY_PARENT_SESSION_ID:Ljava/lang/String; = "parent_session_id"

.field public static final JSON_KEY_SESSION_ID:Ljava/lang/String; = "session_id"

.field public static final JSON_KEY_TEMPLATE:Ljava/lang/String; = "template"

.field public static final JSON_KEY_UNIT_SIZE:Ljava/lang/String; = "unit_size"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private adType:I

.field public ads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private htmlUrl:Ljava/lang/String;

.field private onlyImpressionUrl:Ljava/lang/String;

.field private parentSessionId:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;

.field private unitSize:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSerialversionuid()J
    .registers 2

    .prologue
    .line 106
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public static parseCampaignUnit(Lorg/json/JSONObject;)Lcom/mintegral/msdk/rover/RoverCampaignUnit;
    .registers 11

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 114
    .line 118
    if-eqz p0, :cond_4a

    .line 119
    :try_start_4
    new-instance v6, Lcom/mintegral/msdk/rover/RoverCampaignUnit;

    invoke-direct {v6}, Lcom/mintegral/msdk/rover/RoverCampaignUnit;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_4b

    .line 127
    :try_start_9
    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 128
    if-eqz v8, :cond_49

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_49

    .line 129
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v7, v1

    .line 130
    :goto_1d
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_46

    .line 131
    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 132
    const-string v1, "only_impression_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "html_url"

    .line 133
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "end_screen_url"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 132
    invoke-static/range {v0 .. v5}, Lcom/mintegral/msdk/base/entity/CampaignEx;->parseCampaign(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mintegral/msdk/base/entity/CampaignUnit;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    .line 134
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1d

    .line 136
    :cond_46
    invoke-virtual {v6, v9}, Lcom/mintegral/msdk/rover/RoverCampaignUnit;->setAds(Ljava/util/ArrayList;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_49} :catch_54

    :cond_49
    move-object v0, v6

    .line 142
    :cond_4a
    :goto_4a
    return-object v0

    .line 140
    :catch_4b
    move-exception v1

    :goto_4c
    const-string v1, ""

    const-string v2, "parse campaign unit exception"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    :catch_54
    move-exception v0

    move-object v0, v6

    goto :goto_4c
.end method


# virtual methods
.method public getAds()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mintegral/msdk/rover/RoverCampaignUnit;->ads:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getParentSessionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mintegral/msdk/rover/RoverCampaignUnit;->parentSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mintegral/msdk/rover/RoverCampaignUnit;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getUnitSize()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mintegral/msdk/rover/RoverCampaignUnit;->unitSize:Ljava/lang/String;

    return-object v0
.end method

.method public setAds(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    iput-object p1, p0, Lcom/mintegral/msdk/rover/RoverCampaignUnit;->ads:Ljava/util/ArrayList;

    .line 99
    return-void
.end method

.method public setParentSessionId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcom/mintegral/msdk/rover/RoverCampaignUnit;->parentSessionId:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lcom/mintegral/msdk/rover/RoverCampaignUnit;->sessionId:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setUnitSize(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 82
    iput-object p1, p0, Lcom/mintegral/msdk/rover/RoverCampaignUnit;->unitSize:Ljava/lang/String;

    .line 83
    return-void
.end method
