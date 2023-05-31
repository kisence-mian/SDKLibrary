.class public final Lretrofit2/Retrofit$Builder;
.super Ljava/lang/Object;
.source "Retrofit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/Retrofit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private baseUrl:Lokhttp3/HttpUrl;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final callAdapterFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lretrofit2/CallAdapter$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private callFactory:Lokhttp3/Call$Factory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private callbackExecutor:Ljava/util/concurrent/Executor;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final converterFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lretrofit2/Converter$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final platform:Lretrofit2/Platform;

.field private validateEagerly:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 406
    invoke-static {}, Lretrofit2/Platform;->get()Lretrofit2/Platform;

    move-result-object v0

    invoke-direct {p0, v0}, Lretrofit2/Retrofit$Builder;-><init>(Lretrofit2/Platform;)V

    .line 407
    return-void
.end method

.method constructor <init>(Lretrofit2/Platform;)V
    .registers 3
    .param p1, "platform"    # Lretrofit2/Platform;

    .prologue
    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lretrofit2/Retrofit$Builder;->converterFactories:Ljava/util/List;

    .line 397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lretrofit2/Retrofit$Builder;->callAdapterFactories:Ljava/util/List;

    .line 402
    iput-object p1, p0, Lretrofit2/Retrofit$Builder;->platform:Lretrofit2/Platform;

    .line 403
    return-void
.end method

.method constructor <init>(Lretrofit2/Retrofit;)V
    .registers 6
    .param p1, "retrofit"    # Lretrofit2/Retrofit;

    .prologue
    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lretrofit2/Retrofit$Builder;->converterFactories:Ljava/util/List;

    .line 397
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lretrofit2/Retrofit$Builder;->callAdapterFactories:Ljava/util/List;

    .line 410
    invoke-static {}, Lretrofit2/Platform;->get()Lretrofit2/Platform;

    move-result-object v2

    iput-object v2, p0, Lretrofit2/Retrofit$Builder;->platform:Lretrofit2/Platform;

    .line 411
    iget-object v2, p1, Lretrofit2/Retrofit;->callFactory:Lokhttp3/Call$Factory;

    iput-object v2, p0, Lretrofit2/Retrofit$Builder;->callFactory:Lokhttp3/Call$Factory;

    .line 412
    iget-object v2, p1, Lretrofit2/Retrofit;->baseUrl:Lokhttp3/HttpUrl;

    iput-object v2, p0, Lretrofit2/Retrofit$Builder;->baseUrl:Lokhttp3/HttpUrl;

    .line 415
    const/4 v0, 0x1

    .line 416
    .local v0, "i":I
    iget-object v2, p1, Lretrofit2/Retrofit;->converterFactories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lretrofit2/Retrofit$Builder;->platform:Lretrofit2/Platform;

    invoke-virtual {v3}, Lretrofit2/Platform;->defaultConverterFactoriesSize()I

    move-result v3

    sub-int v1, v2, v3

    .line 417
    .local v1, "size":I
    :goto_2e
    if-ge v0, v1, :cond_3e

    .line 418
    iget-object v2, p0, Lretrofit2/Retrofit$Builder;->converterFactories:Ljava/util/List;

    iget-object v3, p1, Lretrofit2/Retrofit;->converterFactories:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 422
    :cond_3e
    const/4 v0, 0x0

    .line 423
    iget-object v2, p1, Lretrofit2/Retrofit;->callAdapterFactories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lretrofit2/Retrofit$Builder;->platform:Lretrofit2/Platform;

    invoke-virtual {v3}, Lretrofit2/Platform;->defaultCallAdapterFactoriesSize()I

    move-result v3

    sub-int v1, v2, v3

    .line 424
    :goto_4d
    if-ge v0, v1, :cond_5d

    .line 425
    iget-object v2, p0, Lretrofit2/Retrofit$Builder;->callAdapterFactories:Ljava/util/List;

    iget-object v3, p1, Lretrofit2/Retrofit;->callAdapterFactories:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 428
    :cond_5d
    iget-object v2, p1, Lretrofit2/Retrofit;->callbackExecutor:Ljava/util/concurrent/Executor;

    iput-object v2, p0, Lretrofit2/Retrofit$Builder;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 429
    iget-boolean v2, p1, Lretrofit2/Retrofit;->validateEagerly:Z

    iput-boolean v2, p0, Lretrofit2/Retrofit$Builder;->validateEagerly:Z

    .line 430
    return-void
.end method


# virtual methods
.method public addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;
    .registers 4
    .param p1, "factory"    # Lretrofit2/CallAdapter$Factory;

    .prologue
    .line 532
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->callAdapterFactories:Ljava/util/List;

    const-string v1, "factory == null"

    invoke-static {p1, v1}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    return-object p0
.end method

.method public addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;
    .registers 4
    .param p1, "factory"    # Lretrofit2/Converter$Factory;

    .prologue
    .line 523
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->converterFactories:Ljava/util/List;

    const-string v1, "factory == null"

    invoke-static {p1, v1}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    return-object p0
.end method

.method public baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;
    .registers 3
    .param p1, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 457
    const-string v0, "baseUrl == null"

    invoke-static {p1, v0}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 458
    invoke-static {p1}, Lokhttp3/HttpUrl;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit$Builder;->baseUrl(Lokhttp3/HttpUrl;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public baseUrl(Lokhttp3/HttpUrl;)Lretrofit2/Retrofit$Builder;
    .registers 6
    .param p1, "baseUrl"    # Lokhttp3/HttpUrl;

    .prologue
    .line 512
    const-string v1, "baseUrl == null"

    invoke-static {p1, v1}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 513
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->pathSegments()Ljava/util/List;

    move-result-object v0

    .line 514
    .local v0, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, ""

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 515
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "baseUrl must end in /: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 517
    :cond_34
    iput-object p1, p0, Lretrofit2/Retrofit$Builder;->baseUrl:Lokhttp3/HttpUrl;

    .line 518
    return-object p0
.end method

.method public build()Lretrofit2/Retrofit;
    .registers 10

    .prologue
    .line 574
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->baseUrl:Lokhttp3/HttpUrl;

    if-nez v0, :cond_c

    .line 575
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Base URL required."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_c
    iget-object v1, p0, Lretrofit2/Retrofit$Builder;->callFactory:Lokhttp3/Call$Factory;

    .line 579
    .local v1, "callFactory":Lokhttp3/Call$Factory;
    if-nez v1, :cond_15

    .line 580
    new-instance v1, Lokhttp3/OkHttpClient;

    .end local v1    # "callFactory":Lokhttp3/Call$Factory;
    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    .line 583
    .restart local v1    # "callFactory":Lokhttp3/Call$Factory;
    :cond_15
    iget-object v5, p0, Lretrofit2/Retrofit$Builder;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 584
    .local v5, "callbackExecutor":Ljava/util/concurrent/Executor;
    if-nez v5, :cond_1f

    .line 585
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->platform:Lretrofit2/Platform;

    invoke-virtual {v0}, Lretrofit2/Platform;->defaultCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 589
    :cond_1f
    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->callAdapterFactories:Ljava/util/List;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 590
    .local v7, "callAdapterFactories":Ljava/util/List;, "Ljava/util/List<Lretrofit2/CallAdapter$Factory;>;"
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->platform:Lretrofit2/Platform;

    invoke-virtual {v0, v5}, Lretrofit2/Platform;->defaultCallAdapterFactories(Ljava/util/concurrent/Executor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 593
    new-instance v8, Ljava/util/ArrayList;

    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->converterFactories:Ljava/util/List;

    .line 594
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lretrofit2/Retrofit$Builder;->platform:Lretrofit2/Platform;

    invoke-virtual {v2}, Lretrofit2/Platform;->defaultConverterFactoriesSize()I

    move-result v2

    add-int/2addr v0, v2

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 598
    .local v8, "converterFactories":Ljava/util/List;, "Ljava/util/List<Lretrofit2/Converter$Factory;>;"
    new-instance v0, Lretrofit2/BuiltInConverters;

    invoke-direct {v0}, Lretrofit2/BuiltInConverters;-><init>()V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->converterFactories:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 600
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->platform:Lretrofit2/Platform;

    invoke-virtual {v0}, Lretrofit2/Platform;->defaultConverterFactories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 602
    new-instance v0, Lretrofit2/Retrofit;

    iget-object v2, p0, Lretrofit2/Retrofit$Builder;->baseUrl:Lokhttp3/HttpUrl;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 603
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iget-boolean v6, p0, Lretrofit2/Retrofit$Builder;->validateEagerly:Z

    invoke-direct/range {v0 .. v6}, Lretrofit2/Retrofit;-><init>(Lokhttp3/Call$Factory;Lokhttp3/HttpUrl;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Z)V

    .line 602
    return-object v0
.end method

.method public callAdapterFactories()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lretrofit2/CallAdapter$Factory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 550
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->callAdapterFactories:Ljava/util/List;

    return-object v0
.end method

.method public callFactory(Lokhttp3/Call$Factory;)Lretrofit2/Retrofit$Builder;
    .registers 3
    .param p1, "factory"    # Lokhttp3/Call$Factory;

    .prologue
    .line 447
    const-string v0, "factory == null"

    invoke-static {p1, v0}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call$Factory;

    iput-object v0, p0, Lretrofit2/Retrofit$Builder;->callFactory:Lokhttp3/Call$Factory;

    .line 448
    return-object p0
.end method

.method public callbackExecutor(Ljava/util/concurrent/Executor;)Lretrofit2/Retrofit$Builder;
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 544
    const-string v0, "executor == null"

    invoke-static {p1, v0}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lretrofit2/Retrofit$Builder;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 545
    return-object p0
.end method

.method public client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;
    .registers 3
    .param p1, "client"    # Lokhttp3/OkHttpClient;

    .prologue
    .line 438
    const-string v0, "client == null"

    invoke-static {p1, v0}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call$Factory;

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit$Builder;->callFactory(Lokhttp3/Call$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public converterFactories()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lretrofit2/Converter$Factory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 555
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->converterFactories:Ljava/util/List;

    return-object v0
.end method

.method public validateEagerly(Z)Lretrofit2/Retrofit$Builder;
    .registers 2
    .param p1, "validateEagerly"    # Z

    .prologue
    .line 563
    iput-boolean p1, p0, Lretrofit2/Retrofit$Builder;->validateEagerly:Z

    .line 564
    return-object p0
.end method
