.class public Lcom/tds/achievement/AchievementList;
.super Ljava/lang/Object;
.source "AchievementList.java"


# instance fields
.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tds/achievement/TapAchievementBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 7
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "list"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 20
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tds/achievement/AchievementList;->list:Ljava/util/List;

    .line 21
    if-nez v0, :cond_13

    .line 22
    return-void

    .line 24
    :cond_13
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 25
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 26
    .local v2, "item":Lorg/json/JSONObject;
    if-eqz v2, :cond_2a

    .line 27
    new-instance v3, Lcom/tds/achievement/TapAchievementBean;

    invoke-direct {v3, v2}, Lcom/tds/achievement/TapAchievementBean;-><init>(Lorg/json/JSONObject;)V

    .line 28
    .local v3, "value":Lcom/tds/achievement/TapAchievementBean;
    iget-object v4, p0, Lcom/tds/achievement/AchievementList;->list:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .end local v2    # "item":Lorg/json/JSONObject;
    .end local v3    # "value":Lcom/tds/achievement/TapAchievementBean;
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 31
    .end local v1    # "i":I
    :cond_2d
    return-void
.end method
