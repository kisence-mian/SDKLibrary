.class public Lcom/facebook/appevents/codeless/internal/EventBinding;
.super Ljava/lang/Object;
.source "EventBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;,
        Lcom/facebook/appevents/codeless/internal/EventBinding$MappingMethod;
    }
.end annotation


# instance fields
.field private final activityName:Ljava/lang/String;

.field private final appVersion:Ljava/lang/String;

.field private final componentId:Ljava/lang/String;

.field private final eventName:Ljava/lang/String;

.field private final method:Lcom/facebook/appevents/codeless/internal/EventBinding$MappingMethod;

.field private final parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/appevents/codeless/internal/ParameterComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/appevents/codeless/internal/PathComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final pathType:Ljava/lang/String;

.field private final type:Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/appevents/codeless/internal/EventBinding$MappingMethod;Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "method"    # Lcom/facebook/appevents/codeless/internal/EventBinding$MappingMethod;
    .param p3, "type"    # Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;
    .param p4, "appVersion"    # Ljava/lang/String;
    .param p7, "componentId"    # Ljava/lang/String;
    .param p8, "pathType"    # Ljava/lang/String;
    .param p9, "activityName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/appevents/codeless/internal/EventBinding$MappingMethod;",
            "Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/facebook/appevents/codeless/internal/PathComponent;",
            ">;",
            "Ljava/util/List<",
            "Lcom/facebook/appevents/codeless/internal/ParameterComponent;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 52
    .local p5, "path":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/internal/PathComponent;>;"
    .local p6, "parameters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/internal/ParameterComponent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/facebook/appevents/codeless/internal/EventBinding;->eventName:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/facebook/appevents/codeless/internal/EventBinding;->method:Lcom/facebook/appevents/codeless/internal/EventBinding$MappingMethod;

    .line 55
    iput-object p3, p0, Lcom/facebook/appevents/codeless/internal/EventBinding;->type:Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    .line 56
    iput-object p4, p0, Lcom/facebook/appevents/codeless/internal/EventBinding;->appVersion:Ljava/lang/String;

    .line 57
    iput-object p5, p0, Lcom/facebook/appevents/codeless/internal/EventBinding;->path:Ljava/util/List;

    .line 58
    iput-object p6, p0, Lcom/facebook/appevents/codeless/internal/EventBinding;->parameters:Ljava/util/List;

    .line 59
    iput-object p7, p0, Lcom/facebook/appevents/codeless/internal/EventBinding;->componentId:Ljava/lang/String;

    .line 60
    iput-object p8, p0, Lcom/facebook/appevents/codeless/internal/EventBinding;->pathType:Ljava/lang/String;

    .line 61
    iput-object p9, p0, Lcom/facebook/appevents/codeless/internal/EventBinding;->activityName:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public static getInstanceFromJson(Lorg/json/JSONObject;)Lcom/facebook/appevents/codeless/internal/EventBinding;
    .registers 24
    .param p0, "mapping"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 85
    move-object/from16 v0, p0

    const-string v1, "event_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "eventName":Ljava/lang/String;
    const-string v2, "method"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/appevents/codeless/internal/EventBinding$MappingMethod;->valueOf(Ljava/lang/String;)Lcom/facebook/appevents/codeless/internal/EventBinding$MappingMethod;

    move-result-object v12

    .line 87
    .local v12, "method":Lcom/facebook/appevents/codeless/internal/EventBinding$MappingMethod;
    const-string v2, "event_type"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;->valueOf(Ljava/lang/String;)Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    move-result-object v13

    .line 88
    .local v13, "type":Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;
    const-string v2, "app_version"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 89
    .local v14, "appVersion":Ljava/lang/String;
    const-string v2, "path"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 90
    .local v15, "jsonPathArray":Lorg/json/JSONArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v2

    .line 91
    .local v11, "path":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/internal/PathComponent;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3b
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_50

    .line 92
    invoke-virtual {v15, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 93
    .local v3, "jsonPath":Lorg/json/JSONObject;
    new-instance v4, Lcom/facebook/appevents/codeless/internal/PathComponent;

    invoke-direct {v4, v3}, Lcom/facebook/appevents/codeless/internal/PathComponent;-><init>(Lorg/json/JSONObject;)V

    .line 94
    .local v4, "component":Lcom/facebook/appevents/codeless/internal/PathComponent;
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    .end local v3    # "jsonPath":Lorg/json/JSONObject;
    .end local v4    # "component":Lcom/facebook/appevents/codeless/internal/PathComponent;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 96
    .end local v2    # "i":I
    :cond_50
    const-string v2, "path_type"

    const-string v3, "absolute"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 98
    .local v16, "pathType":Ljava/lang/String;
    const-string v2, "parameters"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 99
    .local v10, "jsonParameterArray":Lorg/json/JSONArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v2

    .line 100
    .local v9, "parameters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/internal/ParameterComponent;>;"
    if-eqz v10, :cond_7c

    .line 101
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_67
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_7c

    .line 102
    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 103
    .local v3, "jsonParameter":Lorg/json/JSONObject;
    new-instance v4, Lcom/facebook/appevents/codeless/internal/ParameterComponent;

    invoke-direct {v4, v3}, Lcom/facebook/appevents/codeless/internal/ParameterComponent;-><init>(Lorg/json/JSONObject;)V

    .line 104
    .local v4, "component":Lcom/facebook/appevents/codeless/internal/ParameterComponent;
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .end local v3    # "jsonParameter":Lorg/json/JSONObject;
    .end local v4    # "component":Lcom/facebook/appevents/codeless/internal/ParameterComponent;
    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    .line 107
    .end local v2    # "i":I
    :cond_7c
    const-string v2, "component_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 108
    .local v17, "componentId":Ljava/lang/String;
    const-string v2, "activity_name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 110
    .local v18, "activityName":Ljava/lang/String;
    new-instance v19, Lcom/facebook/appevents/codeless/internal/EventBinding;

    move-object/from16 v2, v19

    move-object v3, v1

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    move-object v7, v11

    move-object v8, v9

    move-object/from16 v20, v9

    .end local v9    # "parameters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/internal/ParameterComponent;>;"
    .local v20, "parameters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/internal/ParameterComponent;>;"
    move-object/from16 v9, v17

    move-object/from16 v21, v10

    .end local v10    # "jsonParameterArray":Lorg/json/JSONArray;
    .local v21, "jsonParameterArray":Lorg/json/JSONArray;
    move-object/from16 v10, v16

    move-object/from16 v22, v11

    .end local v11    # "path":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/internal/PathComponent;>;"
    .local v22, "path":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/internal/PathComponent;>;"
    move-object/from16 v11, v18

    invoke-direct/range {v2 .. v11}, Lcom/facebook/appevents/codeless/internal/EventBinding;-><init>(Ljava/lang/String;Lcom/facebook/appevents/codeless/internal/EventBinding$MappingMethod;Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v19
.end method

.method public static parseArray(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 5
    .param p0, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/appevents/codeless/internal/EventBinding;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v0, "eventBindings":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/internal/EventBinding;>;"
    if-eqz p0, :cond_10

    :try_start_7
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    goto :goto_11

    .line 76
    :catch_c
    move-exception v1

    goto :goto_26

    .line 74
    :catch_e
    move-exception v1

    goto :goto_24

    .line 68
    :cond_10
    const/4 v1, 0x0

    .line 69
    .local v1, "length":I
    :goto_11
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v1, :cond_25

    .line 70
    nop

    .line 71
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/appevents/codeless/internal/EventBinding;->getInstanceFromJson(Lorg/json/JSONObject;)Lcom/facebook/appevents/codeless/internal/EventBinding;

    move-result-object v3

    .line 72
    .local v3, "eventBinding":Lcom/facebook/appevents/codeless/internal/EventBinding;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_20} :catch_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_20} :catch_c

    .line 69
    nop

    .end local v3    # "eventBinding":Lcom/facebook/appevents/codeless/internal/EventBinding;
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 78
    .end local v1    # "length":I
    .end local v2    # "i":I
    :goto_24
    goto :goto_26

    .line 69
    :cond_25
    goto :goto_24

    .line 80
    :goto_26
    return-object v0
.end method


# virtual methods
.method public getActivityName()Ljava/lang/String;
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/facebook/appevents/codeless/internal/EventBinding;->activityName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/facebook/appevents/codeless/internal/EventBinding;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getComponentId()Ljava/lang/String;
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/facebook/appevents/codeless/internal/EventBinding;->componentId:Ljava/lang/String;

    return-object v0
.end method

.method public getEventName()Ljava/lang/String;
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/facebook/appevents/codeless/internal/EventBinding;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Lcom/facebook/appevents/codeless/internal/EventBinding$MappingMethod;
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/facebook/appevents/codeless/internal/EventBinding;->method:Lcom/facebook/appevents/codeless/internal/EventBinding$MappingMethod;

    return-object v0
.end method

.method public getPathType()Ljava/lang/String;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/facebook/appevents/codeless/internal/EventBinding;->pathType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/facebook/appevents/codeless/internal/EventBinding;->type:Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    return-object v0
.end method

.method public getViewParameters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/appevents/codeless/internal/ParameterComponent;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/facebook/appevents/codeless/internal/EventBinding;->parameters:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getViewPath()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/appevents/codeless/internal/PathComponent;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/facebook/appevents/codeless/internal/EventBinding;->path:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
