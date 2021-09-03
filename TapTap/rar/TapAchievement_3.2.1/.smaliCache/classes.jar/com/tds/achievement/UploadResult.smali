.class public Lcom/tds/achievement/UploadResult;
.super Ljava/lang/Object;
.source "UploadResult.java"


# instance fields
.field public fullAchievement:Lcom/tds/achievement/TapAchievementBean;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "platinum"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 11
    .local v0, "object":Lorg/json/JSONObject;
    if-eqz v0, :cond_12

    .line 12
    new-instance v1, Lcom/tds/achievement/TapAchievementBean;

    invoke-direct {v1, v0}, Lcom/tds/achievement/TapAchievementBean;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/tds/achievement/UploadResult;->fullAchievement:Lcom/tds/achievement/TapAchievementBean;

    .line 14
    :cond_12
    return-void
.end method
