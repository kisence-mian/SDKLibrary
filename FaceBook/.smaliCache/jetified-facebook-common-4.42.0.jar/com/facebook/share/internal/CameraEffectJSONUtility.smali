.class public Lcom/facebook/share/internal/CameraEffectJSONUtility;
.super Ljava/lang/Object;
.source "CameraEffectJSONUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/internal/CameraEffectJSONUtility$Setter;
    }
.end annotation


# static fields
.field private static final SETTERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/facebook/share/internal/CameraEffectJSONUtility$Setter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/share/internal/CameraEffectJSONUtility;->SETTERS:Ljava/util/Map;

    .line 26
    const-class v1, Ljava/lang/String;

    new-instance v2, Lcom/facebook/share/internal/CameraEffectJSONUtility$1;

    invoke-direct {v2}, Lcom/facebook/share/internal/CameraEffectJSONUtility$1;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-class v1, [Ljava/lang/String;

    new-instance v2, Lcom/facebook/share/internal/CameraEffectJSONUtility$2;

    invoke-direct {v2}, Lcom/facebook/share/internal/CameraEffectJSONUtility$2;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-class v1, Lorg/json/JSONArray;

    new-instance v2, Lcom/facebook/share/internal/CameraEffectJSONUtility$3;

    invoke-direct {v2}, Lcom/facebook/share/internal/CameraEffectJSONUtility$3;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToCameraEffectArguments(Lorg/json/JSONObject;)Lcom/facebook/share/model/CameraEffectArguments;
    .registers 9
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 124
    if-nez p0, :cond_4

    .line 125
    const/4 v0, 0x0

    return-object v0

    .line 128
    :cond_4
    new-instance v0, Lcom/facebook/share/model/CameraEffectArguments$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/CameraEffectArguments$Builder;-><init>()V

    .line 129
    .local v0, "builder":Lcom/facebook/share/model/CameraEffectArguments$Builder;
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 130
    .local v1, "jsonIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 131
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 132
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 133
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_d

    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v3, v4, :cond_24

    .line 135
    goto :goto_d

    .line 138
    :cond_24
    sget-object v4, Lcom/facebook/share/internal/CameraEffectJSONUtility;->SETTERS:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/share/internal/CameraEffectJSONUtility$Setter;

    .line 139
    .local v4, "setter":Lcom/facebook/share/internal/CameraEffectJSONUtility$Setter;
    if-eqz v4, :cond_36

    .line 142
    invoke-interface {v4, v0, v2, v3}, Lcom/facebook/share/internal/CameraEffectJSONUtility$Setter;->setOnArgumentsBuilder(Lcom/facebook/share/model/CameraEffectArguments$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "setter":Lcom/facebook/share/internal/CameraEffectJSONUtility$Setter;
    goto :goto_d

    .line 140
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/Object;
    .restart local v4    # "setter":Lcom/facebook/share/internal/CameraEffectJSONUtility$Setter;
    :cond_36
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 145
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "setter":Lcom/facebook/share/internal/CameraEffectJSONUtility$Setter;
    :cond_53
    invoke-virtual {v0}, Lcom/facebook/share/model/CameraEffectArguments$Builder;->build()Lcom/facebook/share/model/CameraEffectArguments;

    move-result-object v2

    return-object v2
.end method

.method public static convertToJSON(Lcom/facebook/share/model/CameraEffectArguments;)Lorg/json/JSONObject;
    .registers 8
    .param p0, "arguments"    # Lcom/facebook/share/model/CameraEffectArguments;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 99
    if-nez p0, :cond_4

    .line 100
    const/4 v0, 0x0

    return-object v0

    .line 103
    :cond_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 105
    .local v0, "json":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/facebook/share/model/CameraEffectArguments;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 106
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/facebook/share/model/CameraEffectArguments;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 107
    .local v3, "value":Ljava/lang/Object;
    if-nez v3, :cond_24

    .line 109
    goto :goto_11

    .line 112
    :cond_24
    sget-object v4, Lcom/facebook/share/internal/CameraEffectJSONUtility;->SETTERS:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/share/internal/CameraEffectJSONUtility$Setter;

    .line 113
    .local v4, "setter":Lcom/facebook/share/internal/CameraEffectJSONUtility$Setter;
    if-eqz v4, :cond_36

    .line 116
    invoke-interface {v4, v0, v2, v3}, Lcom/facebook/share/internal/CameraEffectJSONUtility$Setter;->setOnJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "setter":Lcom/facebook/share/internal/CameraEffectJSONUtility$Setter;
    goto :goto_11

    .line 114
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/Object;
    .restart local v4    # "setter":Lcom/facebook/share/internal/CameraEffectJSONUtility$Setter;
    :cond_36
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "setter":Lcom/facebook/share/internal/CameraEffectJSONUtility$Setter;
    :cond_53
    return-object v0
.end method
