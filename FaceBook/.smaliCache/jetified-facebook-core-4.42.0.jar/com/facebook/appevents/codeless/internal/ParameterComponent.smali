.class public final Lcom/facebook/appevents/codeless/internal/ParameterComponent;
.super Ljava/lang/Object;
.source "ParameterComponent.java"


# static fields
.field private static final PARAMETER_NAME_KEY:Ljava/lang/String; = "name"

.field private static final PARAMETER_PATH_KEY:Ljava/lang/String; = "path"

.field private static final PARAMETER_VALUE_KEY:Ljava/lang/String; = "value"


# instance fields
.field public final name:Ljava/lang/String;

.field public final path:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/appevents/codeless/internal/PathComponent;",
            ">;"
        }
    .end annotation
.end field

.field public final pathType:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 7
    .param p1, "component"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/appevents/codeless/internal/ParameterComponent;->name:Ljava/lang/String;

    .line 42
    const-string v0, "value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/appevents/codeless/internal/ParameterComponent;->value:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v0, "pathComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/appevents/codeless/internal/PathComponent;>;"
    const-string v1, "path"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 46
    .local v1, "jsonPathArray":Lorg/json/JSONArray;
    if-eqz v1, :cond_36

    .line 47
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_36

    .line 48
    new-instance v3, Lcom/facebook/appevents/codeless/internal/PathComponent;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/appevents/codeless/internal/PathComponent;-><init>(Lorg/json/JSONObject;)V

    .line 49
    .local v3, "pathComponent":Lcom/facebook/appevents/codeless/internal/PathComponent;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .end local v3    # "pathComponent":Lcom/facebook/appevents/codeless/internal/PathComponent;
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 52
    .end local v2    # "i":I
    :cond_36
    iput-object v0, p0, Lcom/facebook/appevents/codeless/internal/ParameterComponent;->path:Ljava/util/List;

    .line 53
    const-string v2, "path_type"

    const-string v3, "absolute"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/appevents/codeless/internal/ParameterComponent;->pathType:Ljava/lang/String;

    .line 56
    return-void
.end method
