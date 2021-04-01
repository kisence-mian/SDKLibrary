.class public final Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;
.super Lretrofit2/CallAdapter$Factory;
.source "RxJavaCallAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$ResultCallAdapter;,
        Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$SimpleCallAdapter;,
        Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$ResponseCallAdapter;,
        Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$RequestArbiter;,
        Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$CallOnSubscribe;
    }
.end annotation


# instance fields
.field private final scheduler:Lrx/Scheduler;


# direct methods
.method private constructor <init>(Lrx/Scheduler;)V
    .registers 2
    .param p1, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 67
    invoke-direct {p0}, Lretrofit2/CallAdapter$Factory;-><init>()V

    .line 68
    iput-object p1, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->scheduler:Lrx/Scheduler;

    .line 69
    return-void
.end method

.method public static create()Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;
    .registers 2

    .prologue
    .line 53
    new-instance v0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;-><init>(Lrx/Scheduler;)V

    return-object v0
.end method

.method public static createWithScheduler(Lrx/Scheduler;)Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;
    .registers 3
    .param p0, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 61
    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "scheduler == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_a
    new-instance v0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;

    invoke-direct {v0, p0}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;-><init>(Lrx/Scheduler;)V

    return-object v0
.end method

.method private getCallAdapter(Ljava/lang/reflect/Type;Lrx/Scheduler;)Lretrofit2/CallAdapter;
    .registers 8
    .param p1, "returnType"    # Ljava/lang/reflect/Type;
    .param p2, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lrx/Scheduler;",
            ")",
            "Lretrofit2/CallAdapter",
            "<",
            "Lrx/Observable",
            "<*>;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 104
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .end local p1    # "returnType":Ljava/lang/reflect/Type;
    invoke-static {v4, p1}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 105
    .local v0, "observableType":Ljava/lang/reflect/Type;
    invoke-static {v0}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 106
    .local v1, "rawObservableType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Lretrofit2/Response;

    if-ne v1, v3, :cond_27

    .line 107
    instance-of v3, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v3, :cond_1b

    .line 108
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Response must be parameterized as Response<Foo> or Response<? extends Foo>"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 111
    :cond_1b
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .end local v0    # "observableType":Ljava/lang/reflect/Type;
    invoke-static {v4, v0}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 112
    .local v2, "responseType":Ljava/lang/reflect/Type;
    new-instance v3, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$ResponseCallAdapter;

    invoke-direct {v3, v2, p2}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$ResponseCallAdapter;-><init>(Ljava/lang/reflect/Type;Lrx/Scheduler;)V

    .line 124
    .end local v2    # "responseType":Ljava/lang/reflect/Type;
    :goto_26
    return-object v3

    .line 115
    .restart local v0    # "observableType":Ljava/lang/reflect/Type;
    :cond_27
    const-class v3, Lretrofit2/adapter/rxjava/Result;

    if-ne v1, v3, :cond_43

    .line 116
    instance-of v3, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v3, :cond_37

    .line 117
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Result must be parameterized as Result<Foo> or Result<? extends Foo>"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 120
    :cond_37
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .end local v0    # "observableType":Ljava/lang/reflect/Type;
    invoke-static {v4, v0}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 121
    .restart local v2    # "responseType":Ljava/lang/reflect/Type;
    new-instance v3, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$ResultCallAdapter;

    invoke-direct {v3, v2, p2}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$ResultCallAdapter;-><init>(Ljava/lang/reflect/Type;Lrx/Scheduler;)V

    goto :goto_26

    .line 124
    .end local v2    # "responseType":Ljava/lang/reflect/Type;
    .restart local v0    # "observableType":Ljava/lang/reflect/Type;
    :cond_43
    new-instance v3, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$SimpleCallAdapter;

    invoke-direct {v3, v0, p2}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$SimpleCallAdapter;-><init>(Ljava/lang/reflect/Type;Lrx/Scheduler;)V

    goto :goto_26
.end method


# virtual methods
.method public get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/CallAdapter;
    .registers 13
    .param p1, "returnType"    # Ljava/lang/reflect/Type;
    .param p2, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p3, "retrofit"    # Lretrofit2/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/CallAdapter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {p1}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    .line 74
    .local v5, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "canonicalName":Ljava/lang/String;
    const-string v6, "rx.Single"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 76
    .local v3, "isSingle":Z
    const-string v6, "rx.Completable"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 77
    .local v2, "isCompletable":Z
    const-class v6, Lrx/Observable;

    if-eq v5, v6, :cond_1e

    if-nez v3, :cond_1e

    if-nez v2, :cond_1e

    .line 78
    const/4 v0, 0x0

    .line 100
    :cond_1d
    :goto_1d
    return-object v0

    .line 80
    :cond_1e
    if-nez v2, :cond_5e

    instance-of v6, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez v6, :cond_5e

    .line 81
    if-eqz v3, :cond_5b

    const-string v4, "Single"

    .line 82
    .local v4, "name":Ljava/lang/String;
    :goto_28
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " return type must be parameterized"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " as "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<Foo> or "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<? extends Foo>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 81
    .end local v4    # "name":Ljava/lang/String;
    :cond_5b
    const-string v4, "Observable"

    goto :goto_28

    .line 86
    :cond_5e
    if-eqz v2, :cond_67

    .line 91
    iget-object v6, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->scheduler:Lrx/Scheduler;

    invoke-static {v6}, Lretrofit2/adapter/rxjava/CompletableHelper;->createCallAdapter(Lrx/Scheduler;)Lretrofit2/CallAdapter;

    move-result-object v0

    goto :goto_1d

    .line 94
    :cond_67
    iget-object v6, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->scheduler:Lrx/Scheduler;

    invoke-direct {p0, p1, v6}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->getCallAdapter(Ljava/lang/reflect/Type;Lrx/Scheduler;)Lretrofit2/CallAdapter;

    move-result-object v0

    .line 95
    .local v0, "callAdapter":Lretrofit2/CallAdapter;, "Lretrofit2/CallAdapter<Lrx/Observable<*>;>;"
    if-eqz v3, :cond_1d

    .line 98
    invoke-static {v0}, Lretrofit2/adapter/rxjava/SingleHelper;->makeSingle(Lretrofit2/CallAdapter;)Lretrofit2/CallAdapter;

    move-result-object v0

    goto :goto_1d
.end method
