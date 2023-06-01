.class public abstract Lcom/ssjj/fnsdk/unity/core/FNUnityApi;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker;-><init>()V

    iput-object v0, p0, Lcom/ssjj/fnsdk/unity/core/FNUnityApi;->a:Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker;

    return-void
.end method


# virtual methods
.method protected createUnityBack(Ljava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)Lcom/ssjj/fnsdk/unity/core/FNUnityBack;
    .registers 4

    new-instance v0, Lcom/ssjj/fnsdk/unity/core/FNUnityBack;

    invoke-direct {v0, p1, p2}, Lcom/ssjj/fnsdk/unity/core/FNUnityBack;-><init>(Ljava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/unity/core/FNUnityApi;->a:Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/unity/core/FNUnityBack;->a(Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker;)V

    return-object v0
.end method

.method public abstract invoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isSupport(Ljava/lang/String;)Z
.end method

.method protected listToJSONArray(Ljava/util/List;)Lorg/json/JSONArray;
    .registers 5

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_10

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    return-object p1

    :cond_10
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_19
    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_20

    return-object v0

    :cond_20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_19

    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_31

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/ssjj/fnsdk/unity/core/FNUnityApi;->listToJSONArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    goto :goto_35

    :cond_31
    invoke-virtual {p0, v1}, Lcom/ssjj/fnsdk/unity/core/FNUnityApi;->onPutObjectToJSONArray(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_35
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_19
.end method

.method protected listToJSONArrayString(Ljava/util/List;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/unity/core/FNUnityApi;->listToJSONArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_c
    return-object p1
.end method

.method protected onPutObjectToJSONArray(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    instance-of v0, p1, Lcom/ssjj/fnsdk/lib/core/FNEntity;

    if-eqz v0, :cond_a

    check-cast p1, Lcom/ssjj/fnsdk/lib/core/FNEntity;

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/lib/core/FNEntity;->toJsonObject()Lorg/json/JSONObject;

    move-result-object p1

    :cond_a
    return-object p1
.end method

.method public final setCallbackDefault(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/unity/core/FNUnityApi;->a:Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker;

    invoke-virtual {v0, p1, p2}, Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker;->a(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 p1, 0x1

    return p1
.end method
