.class public final Lcom/facebook/share/internal/OpenGraphJSONUtility;
.super Ljava/lang/Object;
.source "OpenGraphJSONUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static toJSONArray(Ljava/util/List;Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;)Lorg/json/JSONArray;
    .registers 6
    .param p0, "list"    # Ljava/util/List;
    .param p1, "photoJSONProcessor"    # Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 78
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 79
    .local v0, "result":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 80
    .local v2, "item":Ljava/lang/Object;
    invoke-static {v2, p1}, Lcom/facebook/share/internal/OpenGraphJSONUtility;->toJSONValue(Ljava/lang/Object;Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 81
    .end local v2    # "item":Ljava/lang/Object;
    goto :goto_9

    .line 82
    :cond_1b
    return-object v0
.end method

.method public static toJSONObject(Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;)Lorg/json/JSONObject;
    .registers 7
    .param p0, "action"    # Lcom/facebook/share/model/ShareOpenGraphAction;
    .param p1, "photoJSONProcessor"    # Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 56
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 57
    .local v0, "result":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphAction;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 58
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 59
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/facebook/share/model/ShareOpenGraphAction;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/facebook/share/internal/OpenGraphJSONUtility;->toJSONValue(Ljava/lang/Object;Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_d

    .line 61
    :cond_25
    return-object v0
.end method

.method private static toJSONObject(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;)Lorg/json/JSONObject;
    .registers 7
    .param p0, "object"    # Lcom/facebook/share/model/ShareOpenGraphObject;
    .param p1, "photoJSONProcessor"    # Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 67
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 68
    .local v0, "result":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphObject;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 69
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 70
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/facebook/share/model/ShareOpenGraphObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/facebook/share/internal/OpenGraphJSONUtility;->toJSONValue(Ljava/lang/Object;Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_d

    .line 72
    :cond_25
    return-object v0
.end method

.method public static toJSONValue(Ljava/lang/Object;Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;)Ljava/lang/Object;
    .registers 5
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "photoJSONProcessor"    # Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 88
    if-nez p0, :cond_5

    .line 89
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    return-object v0

    .line 91
    :cond_5
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_63

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_63

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_63

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_63

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_63

    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_1e

    goto :goto_63

    .line 99
    :cond_1e
    instance-of v0, p0, Lcom/facebook/share/model/SharePhoto;

    if-eqz v0, :cond_2e

    .line 100
    if-eqz p1, :cond_2c

    .line 101
    move-object v0, p0

    check-cast v0, Lcom/facebook/share/model/SharePhoto;

    invoke-interface {p1, v0}, Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;->toJSONObject(Lcom/facebook/share/model/SharePhoto;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 103
    :cond_2c
    const/4 v0, 0x0

    return-object v0

    .line 105
    :cond_2e
    instance-of v0, p0, Lcom/facebook/share/model/ShareOpenGraphObject;

    if-eqz v0, :cond_3a

    .line 106
    move-object v0, p0

    check-cast v0, Lcom/facebook/share/model/ShareOpenGraphObject;

    invoke-static {v0, p1}, Lcom/facebook/share/internal/OpenGraphJSONUtility;->toJSONObject(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 108
    :cond_3a
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_46

    .line 109
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/facebook/share/internal/OpenGraphJSONUtility;->toJSONArray(Ljava/util/List;Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0

    .line 111
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid object found for JSON serialization: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_63
    :goto_63
    return-object p0
.end method
