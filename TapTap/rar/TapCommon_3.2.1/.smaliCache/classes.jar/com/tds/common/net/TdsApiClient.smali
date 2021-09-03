.class public Lcom/tds/common/net/TdsApiClient;
.super Ljava/lang/Object;
.source "TdsApiClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/net/TdsApiClient$Builder;
    }
.end annotation


# instance fields
.field private baseUrl:Ljava/lang/String;

.field private tdsClient:Lcom/tds/common/net/TdsHttp$Client;

.field private userAgent:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/tds/common/net/TdsApiClient$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/tds/common/net/TdsApiClient$Builder;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    # getter for: Lcom/tds/common/net/TdsApiClient$Builder;->baseUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/tds/common/net/TdsApiClient$Builder;->access$000(Lcom/tds/common/net/TdsApiClient$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/net/TdsApiClient;->baseUrl:Ljava/lang/String;

    .line 30
    # getter for: Lcom/tds/common/net/TdsApiClient$Builder;->userAgent:Ljava/lang/String;
    invoke-static {p1}, Lcom/tds/common/net/TdsApiClient$Builder;->access$100(Lcom/tds/common/net/TdsApiClient$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/net/TdsApiClient;->userAgent:Ljava/lang/String;

    .line 31
    # getter for: Lcom/tds/common/net/TdsApiClient$Builder;->tdsClient:Lcom/tds/common/net/TdsHttp$Client;
    invoke-static {p1}, Lcom/tds/common/net/TdsApiClient$Builder;->access$200(Lcom/tds/common/net/TdsApiClient$Builder;)Lcom/tds/common/net/TdsHttp$Client;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/net/TdsApiClient;->tdsClient:Lcom/tds/common/net/TdsHttp$Client;

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lcom/tds/common/net/TdsApiClient$Builder;Lcom/tds/common/net/TdsApiClient$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/tds/common/net/TdsApiClient$Builder;
    .param p2, "x1"    # Lcom/tds/common/net/TdsApiClient$1;

    .line 22
    invoke-direct {p0, p1}, Lcom/tds/common/net/TdsApiClient;-><init>(Lcom/tds/common/net/TdsApiClient$Builder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/tds/common/net/TdsApiClient;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/net/TdsApiClient;

    .line 22
    iget-object v0, p0, Lcom/tds/common/net/TdsApiClient;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tds/common/net/TdsApiClient;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/net/TdsApiClient;

    .line 22
    iget-object v0, p0, Lcom/tds/common/net/TdsApiClient;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tds/common/net/TdsApiClient;)Lcom/tds/common/net/TdsHttp$Client;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/net/TdsApiClient;

    .line 22
    iget-object v0, p0, Lcom/tds/common/net/TdsApiClient;->tdsClient:Lcom/tds/common/net/TdsHttp$Client;

    return-object v0
.end method

.method private request(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 13
    .param p1, "url"    # Ljava/lang/String;
    .param p4, "method"    # Ljava/lang/String;
    .param p5, "body"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tds/common/net/exception/ServerException;
        }
    .end annotation

    .line 308
    .local p2, "queries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tds/common/net/TdsApiClient;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/tds/common/net/util/HttpUtil;->buildUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 309
    new-instance v0, Lcom/tds/common/net/TdsHttp$Request$Builder;

    invoke-direct {v0}, Lcom/tds/common/net/TdsHttp$Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tds/common/net/TdsHttp$Request$Builder;->url(Ljava/lang/String;)Lcom/tds/common/net/TdsHttp$Request$Builder;

    move-result-object v0

    .line 310
    .local v0, "requestBuilder":Lcom/tds/common/net/TdsHttp$Request$Builder;
    if-eqz p3, :cond_25

    .line 311
    invoke-virtual {v0, p3}, Lcom/tds/common/net/TdsHttp$Request$Builder;->addHeaders(Ljava/util/Map;)Lcom/tds/common/net/TdsHttp$Request$Builder;

    .line 313
    :cond_25
    if-nez p5, :cond_2d

    .line 314
    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Lcom/tds/common/net/TdsHttp$Request$Builder;->method(Ljava/lang/String;Lcom/tds/common/net/TdsHttp$RequestBody;)Lcom/tds/common/net/TdsHttp$Request$Builder;

    goto/16 :goto_bd

    .line 316
    :cond_2d
    if-eqz p3, :cond_b2

    .line 317
    const-string v1, "Content-Type"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b2

    .line 318
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 319
    new-instance v1, Lcom/tds/common/net/TdsHttp$FormBody$Builder;

    invoke-direct {v1}, Lcom/tds/common/net/TdsHttp$FormBody$Builder;-><init>()V

    .line 321
    .local v1, "formBodyBuilder":Lcom/tds/common/net/TdsHttp$FormBody$Builder;
    :try_start_54
    invoke-static {p5}, Lcom/tds/common/net/json/JsonUtil;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    .line 322
    .local v2, "requestBodyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_60
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_92

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 323
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_91

    .line 324
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_91

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/tds/common/net/TdsHttp$FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/common/net/TdsHttp$FormBody$Builder;
    :try_end_91
    .catch Lorg/json/JSONException; {:try_start_54 .. :try_end_91} :catch_93

    .line 325
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_91
    goto :goto_60

    .line 328
    .end local v2    # "requestBodyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_92
    goto :goto_97

    .line 326
    :catch_93
    move-exception v2

    .line 327
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 329
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_97
    invoke-virtual {v1}, Lcom/tds/common/net/TdsHttp$FormBody$Builder;->build()Lcom/tds/common/net/TdsHttp$FormBody;

    move-result-object v2

    invoke-virtual {v0, p4, v2}, Lcom/tds/common/net/TdsHttp$Request$Builder;->method(Ljava/lang/String;Lcom/tds/common/net/TdsHttp$RequestBody;)Lcom/tds/common/net/TdsHttp$Request$Builder;

    .line 330
    .end local v1    # "formBodyBuilder":Lcom/tds/common/net/TdsHttp$FormBody$Builder;
    goto :goto_bd

    .line 331
    :cond_9f
    nop

    .line 332
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tds/common/net/TdsHttp$RequestBody;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/common/net/TdsHttp$RequestBody;

    move-result-object v1

    .line 331
    invoke-virtual {v0, p4, v1}, Lcom/tds/common/net/TdsHttp$Request$Builder;->method(Ljava/lang/String;Lcom/tds/common/net/TdsHttp$RequestBody;)Lcom/tds/common/net/TdsHttp$Request$Builder;

    goto :goto_bd

    .line 335
    :cond_b2
    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tds/common/net/TdsHttp$RequestBody;->createJsonBody(Ljava/lang/String;)Lcom/tds/common/net/TdsHttp$RequestBody;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Lcom/tds/common/net/TdsHttp$Request$Builder;->method(Ljava/lang/String;Lcom/tds/common/net/TdsHttp$RequestBody;)Lcom/tds/common/net/TdsHttp$Request$Builder;

    .line 339
    :goto_bd
    :try_start_bd
    iget-object v1, p0, Lcom/tds/common/net/TdsApiClient;->tdsClient:Lcom/tds/common/net/TdsHttp$Client;

    invoke-virtual {v0}, Lcom/tds/common/net/TdsHttp$Request$Builder;->build()Lcom/tds/common/net/TdsHttp$Request;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tds/common/net/TdsHttp$Client;->newCall(Lcom/tds/common/net/TdsHttp$Request;)Lcom/tds/common/net/TdsHttp$Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tds/common/net/TdsHttp$Call;->execute()Lcom/tds/common/net/TdsHttp$Response;

    move-result-object v1

    .line 340
    .local v1, "response":Lcom/tds/common/net/TdsHttp$Response;
    iget-object v2, p0, Lcom/tds/common/net/TdsApiClient;->tdsClient:Lcom/tds/common/net/TdsHttp$Client;

    iget-object v2, v2, Lcom/tds/common/net/TdsHttp$Client;->eventListener:Lcom/tds/common/net/EventListener;

    if-eqz v2, :cond_da

    iget-object v2, p0, Lcom/tds/common/net/TdsApiClient;->tdsClient:Lcom/tds/common/net/TdsHttp$Client;

    iget-object v2, v2, Lcom/tds/common/net/TdsHttp$Client;->eventListener:Lcom/tds/common/net/EventListener;

    iget-object v3, p0, Lcom/tds/common/net/TdsApiClient;->baseUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tds/common/net/EventListener;->callEnd(Ljava/lang/String;)V

    .line 341
    :cond_da
    invoke-virtual {v1}, Lcom/tds/common/net/TdsHttp$Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_e9

    .line 342
    invoke-virtual {v1}, Lcom/tds/common/net/TdsHttp$Response;->body()Lcom/tds/common/net/TdsHttp$ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tds/common/net/TdsHttp$ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 345
    :cond_e9
    invoke-virtual {v1}, Lcom/tds/common/net/TdsHttp$Response;->code()I

    move-result v2

    iget-object v3, v1, Lcom/tds/common/net/TdsHttp$Response;->message:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tds/common/net/TdsHttp$Response;->body()Lcom/tds/common/net/TdsHttp$ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tds/common/net/TdsHttp$ResponseBody;->string()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/tds/common/net/TDSNetInterceptor;->interceptWithContent(ILjava/lang/String;Ljava/lang/String;)V

    .line 346
    new-instance v2, Lcom/tds/common/net/exception/ServerException;

    invoke-virtual {v1}, Lcom/tds/common/net/TdsHttp$Response;->code()I

    move-result v3

    invoke-virtual {v1}, Lcom/tds/common/net/TdsHttp$Response;->message()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/tds/common/net/TdsHttp$Response;->body()Lcom/tds/common/net/TdsHttp$ResponseBody;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tds/common/net/TdsHttp$ResponseBody;->string()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/tds/common/net/exception/ServerException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .end local v0    # "requestBuilder":Lcom/tds/common/net/TdsHttp$Request$Builder;
    .end local p0    # "this":Lcom/tds/common/net/TdsApiClient;
    .end local p1    # "url":Ljava/lang/String;
    .end local p2    # "queries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p3    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p4    # "method":Ljava/lang/String;
    .end local p5    # "body":Lorg/json/JSONObject;
    throw v2
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_110} :catch_110
    .catch Ljava/lang/Error; {:try_start_bd .. :try_end_110} :catch_110

    .line 348
    .end local v1    # "response":Lcom/tds/common/net/TdsHttp$Response;
    .restart local v0    # "requestBuilder":Lcom/tds/common/net/TdsHttp$Request$Builder;
    .restart local p0    # "this":Lcom/tds/common/net/TdsApiClient;
    .restart local p1    # "url":Ljava/lang/String;
    .restart local p2    # "queries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p3    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p4    # "method":Ljava/lang/String;
    .restart local p5    # "body":Lorg/json/JSONObject;
    :catch_110
    move-exception v1

    .line 349
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/tds/common/net/TdsApiClient;->tdsClient:Lcom/tds/common/net/TdsHttp$Client;

    iget-object v2, v2, Lcom/tds/common/net/TdsHttp$Client;->eventListener:Lcom/tds/common/net/EventListener;

    if-eqz v2, :cond_125

    iget-object v2, p0, Lcom/tds/common/net/TdsApiClient;->tdsClient:Lcom/tds/common/net/TdsHttp$Client;

    iget-object v2, v2, Lcom/tds/common/net/TdsHttp$Client;->eventListener:Lcom/tds/common/net/EventListener;

    iget-object v3, p0, Lcom/tds/common/net/TdsApiClient;->baseUrl:Ljava/lang/String;

    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3, v4}, Lcom/tds/common/net/EventListener;->callFailed(Ljava/lang/String;Ljava/io/IOException;)V

    .line 350
    :cond_125
    throw v1
.end method


# virtual methods
.method public get(Lcom/tds/common/net/json/TypeRef;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/common/net/json/TypeRef<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/tds/common/net/exception/ServerException;
        }
    .end annotation

    .line 90
    .local p1, "typeRef":Lcom/tds/common/net/json/TypeRef;, "Lcom/tds/common/net/json/TypeRef<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tds/common/net/TdsApiClient;->get(Lcom/tds/common/net/json/TypeRef;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Lcom/tds/common/net/json/TypeRef;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .registers 5
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/common/net/json/TypeRef<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/tds/common/net/exception/ServerException;
        }
    .end annotation

    .line 95
    .local p1, "typeRef":Lcom/tds/common/net/json/TypeRef;, "Lcom/tds/common/net/json/TypeRef<TT;>;"
    .local p3, "queries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/tds/common/net/TdsApiClient;->get(Lcom/tds/common/net/json/TypeRef;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Lcom/tds/common/net/json/TypeRef;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/Object;
    .registers 7
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/common/net/json/TypeRef<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/tds/common/net/exception/ServerException;
        }
    .end annotation

    .line 100
    .local p1, "typeRef":Lcom/tds/common/net/json/TypeRef;, "Lcom/tds/common/net/json/TypeRef<TT;>;"
    .local p3, "queries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p2, p3, p4}, Lcom/tds/common/net/TdsApiClient;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "json":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/tds/common/net/json/JsonUtil;->parse(Ljava/lang/String;Lcom/tds/common/net/json/TypeRef;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public get(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/tds/common/net/exception/ServerException;
        }
    .end annotation

    .line 74
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tds/common/net/TdsApiClient;->get(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .registers 5
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/tds/common/net/exception/ServerException;
        }
    .end annotation

    .line 79
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "queries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/tds/common/net/TdsApiClient;->get(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/Object;
    .registers 7
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/tds/common/net/exception/ServerException;
        }
    .end annotation

    .line 84
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "queries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p2, p3, p4}, Lcom/tds/common/net/TdsApiClient;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "json":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/tds/common/net/json/JsonUtil;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tds/common/net/exception/ServerException;
        }
    .end annotation

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tds/common/net/TdsApiClient;->get(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tds/common/net/exception/ServerException;
        }
    .end annotation

    .line 109
    .local p2, "queries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tds/common/net/TdsApiClient;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .registers 10
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tds/common/net/exception/ServerException;
        }
    .end annotation

    .line 114
    .local p2, "queries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "GET"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/tds/common/net/TdsApiClient;->request(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsync(Lcom/tds/common/net/json/TypeRef;Ljava/lang/String;)Lcom/tds/common/reactor/Observable;
    .registers 4
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/common/net/json/TypeRef<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 142
    .local p1, "typeRef":Lcom/tds/common/net/json/TypeRef;, "Lcom/tds/common/net/json/TypeRef<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tds/common/net/TdsApiClient;->getAsync(Lcom/tds/common/net/json/TypeRef;Ljava/lang/String;Ljava/util/Map;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getAsync(Lcom/tds/common/net/json/TypeRef;Ljava/lang/String;Ljava/util/Map;)Lcom/tds/common/reactor/Observable;
    .registers 5
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/common/net/json/TypeRef<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 146
    .local p1, "typeRef":Lcom/tds/common/net/json/TypeRef;, "Lcom/tds/common/net/json/TypeRef<TT;>;"
    .local p3, "queries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/tds/common/net/TdsApiClient;->getAsync(Lcom/tds/common/net/json/TypeRef;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getAsync(Lcom/tds/common/net/json/TypeRef;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/tds/common/reactor/Observable;
    .registers 12
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/common/net/json/TypeRef<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 151
    .local p1, "typeRef":Lcom/tds/common/net/json/TypeRef;, "Lcom/tds/common/net/json/TypeRef<TT;>;"
    .local p3, "queries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Lcom/tds/common/net/TdsApiClient$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tds/common/net/TdsApiClient$2;-><init>(Lcom/tds/common/net/TdsApiClient;Lcom/tds/common/net/json/TypeRef;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    invoke-static {v6}, Lcom/tds/common/reactor/Observable;->create(Lcom/tds/common/reactor/Observable$OnSubscribe;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getAsync(Ljava/lang/Class;Ljava/lang/String;)Lcom/tds/common/reactor/Observable;
    .registers 4
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 118
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tds/common/net/TdsApiClient;->getAsync(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Map;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getAsync(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Map;)Lcom/tds/common/reactor/Observable;
    .registers 5
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 122
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "queries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/tds/common/net/TdsApiClient;->getAsync(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getAsync(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/tds/common/reactor/Observable;
    .registers 12
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 127
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "queries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Lcom/tds/common/net/TdsApiClient$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tds/common/net/TdsApiClient$1;-><init>(Lcom/tds/common/net/TdsApiClient;Ljava/lang/Class;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    invoke-static {v6}, Lcom/tds/common/reactor/Observable;->create(Lcom/tds/common/reactor/Observable$OnSubscribe;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getAsync(Ljava/lang/String;)Lcom/tds/common/reactor/Observable;
    .registers 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/tds/common/reactor/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tds/common/net/TdsApiClient;->getAsync(Ljava/lang/String;Ljava/util/Map;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getAsync(Ljava/lang/String;Ljava/util/Map;)Lcom/tds/common/reactor/Observable;
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tds/common/reactor/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 170
    .local p2, "queries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tds/common/net/TdsApiClient;->getAsync(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getAsync(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/tds/common/reactor/Observable;
    .registers 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tds/common/reactor/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 175
    .local p2, "queries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/tds/common/net/TdsApiClient$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/tds/common/net/TdsApiClient$3;-><init>(Lcom/tds/common/net/TdsApiClient;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/tds/common/reactor/Observable;->create(Lcom/tds/common/reactor/Observable$OnSubscribe;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public post(Lcom/tds/common/net/json/TypeRef;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/json/JSONObject;)Ljava/lang/Object;
    .registers 8
    .param p2, "url"    # Ljava/lang/String;
    .param p5, "body"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/common/net/json/TypeRef<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/tds/common/net/exception/ServerException;
        }
    .end annotation

    .line 218
    .local p1, "typeRef":Lcom/tds/common/net/json/TypeRef;, "Lcom/tds/common/net/json/TypeRef<TT;>;"
    .local p3, "queries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/tds/common/net/TdsApiClient;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "json":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/tds/common/net/json/JsonUtil;->parse(Ljava/lang/String;Lcom/tds/common/net/json/TypeRef;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public post(Lcom/tds/common/net/json/TypeRef;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;
    .registers 10
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "body"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/common/net/json/TypeRef<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/tds/common/net/exception/ServerException;
        }
    .end annotation

    .line 212
    .local p1, "typeRef":Lcom/tds/common/net/json/TypeRef;, "Lcom/tds/common/net/json/TypeRef<TT;>;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tds/common/net/TdsApiClient;->post(Lcom/tds/common/net/json/TypeRef;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/json/JSONObject;)Ljava/lang/Object;
    .registers 8
    .param p2, "url"    # Ljava/lang/String;
    .param p5, "body"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/tds/common/net/exception/ServerException;
        }
    .end annotation

    .line 206
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "queries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/tds/common/net/TdsApiClient;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "json":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/tds/common/net/json/JsonUtil;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public post(Ljava/lang/Class;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;
    .registers 10
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "body"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/tds/common/net/exception/ServerException;
        }
    .end annotation

    .line 200
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tds/common/net/TdsApiClient;->post(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 11
    .param p1, "url"    # Ljava/lang/String;
    .param p4, "body"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tds/common/net/exception/ServerException;
        }
    .end annotation

    .line 195
    .local p2, "queries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "POST"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tds/common/net/TdsApiClient;->request(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "body"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tds/common/net/exception/ServerException;
        }
    .end annotation

    .line 190
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "POST"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/tds/common/net/TdsApiClient;->request(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public postAsync(Lcom/tds/common/net/json/TypeRef;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/json/JSONObject;)Lcom/tds/common/reactor/Observable;
    .registers 14
    .param p2, "url"    # Ljava/lang/String;
    .param p5, "body"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/common/net/json/TypeRef<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 268
    .local p1, "typeRef":Lcom/tds/common/net/json/TypeRef;, "Lcom/tds/common/net/json/TypeRef<TT;>;"
    .local p3, "queries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Lcom/tds/common/net/TdsApiClient$6;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/tds/common/net/TdsApiClient$6;-><init>(Lcom/tds/common/net/TdsApiClient;Lcom/tds/common/net/json/TypeRef;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/json/JSONObject;)V

    invoke-static {v7}, Lcom/tds/common/reactor/Observable;->create(Lcom/tds/common/reactor/Observable$OnSubscribe;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public postAsync(Lcom/tds/common/net/json/TypeRef;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/tds/common/reactor/Observable;
    .registers 10
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "body"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/common/net/json/TypeRef<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 263
    .local p1, "typeRef":Lcom/tds/common/net/json/TypeRef;, "Lcom/tds/common/net/json/TypeRef<TT;>;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tds/common/net/TdsApiClient;->postAsync(Lcom/tds/common/net/json/TypeRef;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/json/JSONObject;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public postAsync(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/json/JSONObject;)Lcom/tds/common/reactor/Observable;
    .registers 14
    .param p2, "url"    # Ljava/lang/String;
    .param p5, "body"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 248
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "queries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Lcom/tds/common/net/TdsApiClient$5;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/tds/common/net/TdsApiClient$5;-><init>(Lcom/tds/common/net/TdsApiClient;Ljava/lang/Class;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/json/JSONObject;)V

    invoke-static {v7}, Lcom/tds/common/reactor/Observable;->create(Lcom/tds/common/reactor/Observable$OnSubscribe;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public postAsync(Ljava/lang/Class;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/tds/common/reactor/Observable;
    .registers 10
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "body"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 243
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tds/common/net/TdsApiClient;->postAsync(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/json/JSONObject;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public postAsync(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/json/JSONObject;)Lcom/tds/common/reactor/Observable;
    .registers 12
    .param p1, "url"    # Ljava/lang/String;
    .param p4, "body"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/tds/common/reactor/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 228
    .local p2, "queries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Lcom/tds/common/net/TdsApiClient$4;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tds/common/net/TdsApiClient$4;-><init>(Lcom/tds/common/net/TdsApiClient;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/json/JSONObject;)V

    invoke-static {v6}, Lcom/tds/common/reactor/Observable;->create(Lcom/tds/common/reactor/Observable$OnSubscribe;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public postAsync(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/tds/common/reactor/Observable;
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "body"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/tds/common/reactor/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 223
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/tds/common/net/TdsApiClient;->postAsync(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/json/JSONObject;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public postProtoBuff(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;[B)Z
    .registers 8
    .param p1, "url"    # Ljava/lang/String;
    .param p4, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    .local p2, "queries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tds/common/net/TdsApiClient;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/tds/common/net/util/HttpUtil;->buildUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 293
    new-instance v0, Lcom/tds/common/net/TdsHttp$Request$Builder;

    invoke-direct {v0}, Lcom/tds/common/net/TdsHttp$Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tds/common/net/TdsHttp$Request$Builder;->url(Ljava/lang/String;)Lcom/tds/common/net/TdsHttp$Request$Builder;

    move-result-object v0

    .line 294
    .local v0, "requestBuilder":Lcom/tds/common/net/TdsHttp$Request$Builder;
    if-eqz p3, :cond_25

    .line 295
    invoke-virtual {v0, p3}, Lcom/tds/common/net/TdsHttp$Request$Builder;->addHeaders(Ljava/util/Map;)Lcom/tds/common/net/TdsHttp$Request$Builder;

    .line 297
    :cond_25
    const-string v1, "POST"

    if-nez p4, :cond_2e

    .line 298
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/net/TdsHttp$Request$Builder;->method(Ljava/lang/String;Lcom/tds/common/net/TdsHttp$RequestBody;)Lcom/tds/common/net/TdsHttp$Request$Builder;

    goto :goto_35

    .line 300
    :cond_2e
    invoke-static {p4}, Lcom/tds/common/net/TdsHttp$RequestBody;->createProtoBuffBody([B)Lcom/tds/common/net/TdsHttp$RequestBody;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/net/TdsHttp$Request$Builder;->method(Ljava/lang/String;Lcom/tds/common/net/TdsHttp$RequestBody;)Lcom/tds/common/net/TdsHttp$Request$Builder;

    .line 302
    :goto_35
    iget-object v1, p0, Lcom/tds/common/net/TdsApiClient;->tdsClient:Lcom/tds/common/net/TdsHttp$Client;

    invoke-virtual {v0}, Lcom/tds/common/net/TdsHttp$Request$Builder;->build()Lcom/tds/common/net/TdsHttp$Request;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tds/common/net/TdsHttp$Client;->newCall(Lcom/tds/common/net/TdsHttp$Request;)Lcom/tds/common/net/TdsHttp$Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tds/common/net/TdsHttp$Call;->execute()Lcom/tds/common/net/TdsHttp$Response;

    move-result-object v1

    .line 303
    .local v1, "response":Lcom/tds/common/net/TdsHttp$Response;
    invoke-virtual {v1}, Lcom/tds/common/net/TdsHttp$Response;->isSuccessful()Z

    move-result v2

    return v2
.end method
