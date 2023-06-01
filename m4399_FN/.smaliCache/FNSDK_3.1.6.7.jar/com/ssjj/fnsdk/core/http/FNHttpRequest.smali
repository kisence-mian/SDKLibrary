.class public Lcom/ssjj/fnsdk/core/http/FNHttpRequest;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:I

.field g:I

.field private h:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->b:Ljava/lang/String;

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->f:I

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->g:I

    return-void
.end method

.method private static a(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    return-object v0

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_16
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_23} :catch_24

    goto :goto_9

    :catch_24
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method


# virtual methods
.method public addFile(Ljava/io/File;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;
    .registers 3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->addFile(Ljava/lang/String;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public addFile(Ljava/lang/String;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->e:Ljava/lang/String;

    return-object p0
.end method

.method public addParam(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;
    .registers 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->addParam(Lorg/json/JSONObject;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    move-result-object p1
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_9} :catch_a

    return-object p1

    :catch_a
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object p0
.end method

.method public addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    if-nez v0, :cond_b

    new-instance v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;-><init>()V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    :cond_b
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-virtual {v0, p1, p2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public addParam(Ljava/util/Map;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ssjj/fnsdk/core/http/FNHttpRequest;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    if-nez v0, :cond_b

    new-instance v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;-><init>()V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    :cond_b
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1a

    return-object p0

    :cond_1a
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public addParam(Lorg/json/JSONObject;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    if-nez v0, :cond_b

    new-instance v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;-><init>()V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    :cond_b
    invoke-static {p1}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1e

    return-object p0

    :cond_1e
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method

.method public connTimeout(I)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;
    .registers 3

    const/16 v0, 0xbb8

    if-ge p1, v0, :cond_6

    const/16 p1, 0xbb8

    :cond_6
    iput p1, p0, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->f:I

    return-object p0
.end method

.method public getFullUrl()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->getFullUrl(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullUrl(Z)Ljava/lang/String;
    .registers 4

    const-string v0, "GET"

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string p1, "Non-GET request, return to the original Url"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->a:Ljava/lang/String;

    return-object p1

    :cond_12
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->h:Ljava/lang/String;

    if-eqz v0, :cond_18

    if-eqz p1, :cond_22

    :cond_18
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-static {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->toUrl(Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->h:Ljava/lang/String;

    :cond_22
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->h:Ljava/lang/String;

    return-object p1
.end method

.method public getParams()Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public method(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;
    .registers 2

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->b:Ljava/lang/String;

    return-object p0
.end method

.method public readTimeout(I)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;
    .registers 3

    const/16 v0, 0x7d0

    if-ge p1, v0, :cond_6

    const/16 p1, 0x7d0

    :cond_6
    iput p1, p0, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->g:I

    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->a:Ljava/lang/String;

    return-object p0
.end method
