.class public Lcom/JoyFramework/remote/b/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JoyFramework/remote/b/d/b$a;
    }
.end annotation


# static fields
.field private static d:Lcom/JoyFramework/remote/b/d/b;


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/JoyFramework/remote/c/c;

.field private c:Lcom/JoyFramework/remote/c/d;

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 671
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->b:Lcom/JoyFramework/remote/c/c;

    .line 76
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "JoyGameId"

    invoke-static {v0, v1}, Lcom/JoyFramework/d/ar;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 80
    sget-object v0, Lcom/JoyFramework/a/a;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    .line 83
    :cond_1e
    invoke-direct {p0}, Lcom/JoyFramework/remote/b/d/b;->d()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/JoyFramework/remote/c/d;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/c/d;

    iput-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    .line 84
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "joySdkVersion"

    invoke-static {v0, v1}, Lcom/JoyFramework/d/ar;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 86
    iput-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    .line 91
    :goto_3e
    return-void

    .line 88
    :cond_3f
    const-string v0, "5.7"

    iput-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    goto :goto_3e
.end method

.method public static a()Lcom/JoyFramework/remote/b/d/b;
    .registers 2

    .prologue
    .line 62
    sget-object v0, Lcom/JoyFramework/remote/b/d/b;->d:Lcom/JoyFramework/remote/b/d/b;

    if-nez v0, :cond_f

    .line 63
    const-class v1, Lcom/JoyFramework/remote/b/d/b;

    monitor-enter v1

    .line 64
    :try_start_7
    new-instance v0, Lcom/JoyFramework/remote/b/d/b;

    invoke-direct {v0}, Lcom/JoyFramework/remote/b/d/b;-><init>()V

    sput-object v0, Lcom/JoyFramework/remote/b/d/b;->d:Lcom/JoyFramework/remote/b/d/b;

    .line 65
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_12

    .line 67
    :cond_f
    sget-object v0, Lcom/JoyFramework/remote/b/d/b;->d:Lcom/JoyFramework/remote/b/d/b;

    return-object v0

    .line 65
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<",
            "Lcom/JoyFramework/remote/b/a/a",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 117
    const-wide/16 v0, 0x3e8

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lrx/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v0

    .line 118
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 119
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->unsubscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 120
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 121
    invoke-static {}, Lcom/JoyFramework/remote/b/a;->a()Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 122
    invoke-virtual {v0, p2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    .line 117
    return-object v0
.end method

.method private d()Lretrofit2/Retrofit;
    .registers 7

    .prologue
    const-wide/16 v4, 0xa

    .line 99
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 100
    new-instance v1, Lcom/JoyFramework/remote/b/d/a;

    invoke-direct {v1}, Lcom/JoyFramework/remote/b/d/a;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 101
    const-wide/16 v2, 0xf

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 102
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    .line 103
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 104
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 106
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v2, "https://api.keyihn.com"

    .line 107
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 108
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 109
    invoke-static {}, Lcom/JoyFramework/remote/b/b/a;->a()Lcom/JoyFramework/remote/b/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 111
    invoke-static {}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->create()Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    .line 106
    return-object v0
.end method

.method private e()Lretrofit2/Retrofit;
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 660
    invoke-static {v5}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 661
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 662
    const-wide/16 v2, 0xf

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 663
    invoke-virtual {v1, v5}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    .line 664
    new-instance v2, Lretrofit2/Retrofit$Builder;

    invoke-direct {v2}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v3, "http://real.keyihn.com/"

    .line 665
    invoke-virtual {v2, v3}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v2

    .line 666
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v2, v1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 667
    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->callbackExecutor(Ljava/util/concurrent/Executor;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 668
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    .line 664
    return-object v0
.end method

.method private f()Lcom/JoyFramework/remote/c/c;
    .registers 3

    .prologue
    .line 674
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->b:Lcom/JoyFramework/remote/c/c;

    if-nez v0, :cond_12

    .line 675
    invoke-direct {p0}, Lcom/JoyFramework/remote/b/d/b;->e()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/JoyFramework/remote/c/c;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/c/c;

    iput-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->b:Lcom/JoyFramework/remote/c/c;

    .line 677
    :cond_12
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->b:Lcom/JoyFramework/remote/c/c;

    return-object v0
.end method


# virtual methods
.method public A(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 551
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3, p2}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3, p2}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/remote/b/d/b$a;)V
    .registers 7

    .prologue
    .line 560
    const/4 v0, 0x0

    .line 561
    if-eqz p1, :cond_3b

    .line 562
    new-instance v0, Lcom/JoyFramework/wight/Loading/af$a;

    invoke-direct {v0, p1}, Lcom/JoyFramework/wight/Loading/af$a;-><init>(Landroid/content/Context;)V

    const-string v1, "JoyGame_Dialog_theme"

    const-string v2, "style"

    .line 563
    invoke-static {p1, v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/JoyFramework/wight/Loading/af$a;->a(I)Lcom/JoyFramework/wight/Loading/af$a;

    move-result-object v0

    .line 564
    invoke-virtual {v0}, Lcom/JoyFramework/wight/Loading/af$a;->a()Lcom/JoyFramework/wight/Loading/af;

    move-result-object v0

    .line 565
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/JoyFramework/wight/Loading/af;->setCanceledOnTouchOutside(Z)V

    move-object v1, v0

    .line 568
    :goto_1d
    invoke-virtual {p0}, Lcom/JoyFramework/remote/b/d/b;->c()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v2, Lcom/JoyFramework/remote/c/d;

    invoke-virtual {v0, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/c/d;

    .line 569
    invoke-interface {v0, p2}, Lcom/JoyFramework/remote/c/d;->b(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 571
    if-eqz v1, :cond_32

    .line 572
    invoke-virtual {v1}, Lcom/JoyFramework/wight/Loading/af;->show()V

    .line 575
    :cond_32
    new-instance v2, Lcom/JoyFramework/remote/b/d/d;

    invoke-direct {v2, p0, p3, v1}, Lcom/JoyFramework/remote/b/d/d;-><init>(Lcom/JoyFramework/remote/b/d/b;Lcom/JoyFramework/remote/b/d/b$a;Lcom/JoyFramework/wight/Loading/af;)V

    invoke-interface {v0, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 615
    return-void

    :cond_3b
    move-object v1, v0

    goto :goto_1d
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/JoyFramework/remote/b/d/b;->c()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/JoyFramework/remote/c/d;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/c/d;

    .line 419
    invoke-interface {v0, p2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 420
    new-instance v1, Lcom/JoyFramework/remote/b/d/c;

    invoke-direct {v1, p0, p1, p4}, Lcom/JoyFramework/remote/b/d/c;-><init>(Lcom/JoyFramework/remote/b/d/b;Landroid/content/Context;I)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 442
    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .registers 8

    .prologue
    .line 688
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 689
    const-string v1, "userCode"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    const-string v1, "game_id"

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    const-string v1, "real"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    const-string v1, "adult"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    invoke-direct {p0}, Lcom/JoyFramework/remote/b/d/b;->f()Lcom/JoyFramework/remote/c/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/JoyFramework/remote/c/c;->a(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    .line 695
    new-instance v1, Lcom/JoyFramework/remote/b/d/e;

    invoke-direct {v1, p0}, Lcom/JoyFramework/remote/b/d/e;-><init>(Lcom/JoyFramework/remote/b/d/b;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_51} :catch_52

    .line 737
    :goto_51
    return-void

    .line 734
    :catch_52
    move-exception v0

    .line 735
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_51
.end method

.method public b()Lretrofit2/Retrofit;
    .registers 7

    .prologue
    const-wide/16 v4, 0x3c

    .line 359
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 360
    new-instance v1, Lcom/JoyFramework/remote/b/d/a;

    invoke-direct {v1}, Lcom/JoyFramework/remote/b/d/a;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 361
    const-wide/16 v2, 0xf

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 362
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    .line 363
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 364
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 365
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v2, "https://api.keyihn.com"

    .line 366
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 367
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 368
    invoke-static {}, Lcom/JoyFramework/remote/b/b/a;->a()Lcom/JoyFramework/remote/b/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 370
    invoke-static {}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->create()Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 371
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    .line 365
    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3, p2}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public c()Lretrofit2/Retrofit;
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 397
    invoke-static {v5}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 398
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 399
    const-wide/16 v2, 0xf

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 400
    invoke-virtual {v1, v5}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    .line 401
    new-instance v2, Lretrofit2/Retrofit$Builder;

    invoke-direct {v2}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v3, "https://api.keyihn.com"

    .line 402
    invoke-virtual {v2, v3}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v2

    .line 403
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v2, v1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 404
    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->callbackExecutor(Ljava/util/concurrent/Executor;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 405
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    .line 401
    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3, p2}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3, p2}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3, p2}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3, p2}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3, p2}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3, p2}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3, p2}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/16 v2, 0x19

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3, p2}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 349
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3, p2}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/JoyFramework/remote/b/d/b;->b()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/JoyFramework/remote/c/d;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/c/d;

    .line 383
    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3, p2}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public l(Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 626
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3, p2}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public m(Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 641
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public moreGame(Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 633
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3, p2}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public n(Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 648
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/16 v2, 0x2b

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3, p2}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public o(Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 654
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3, p2}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public q(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 451
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/16 v2, 0x1d

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3, p2}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public r(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 463
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3, p2}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 475
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3, p2}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public t(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 487
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3, p2}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 491
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3, p2}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 495
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3, p2}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 507
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3, p2}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public x(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 518
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3, p2}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public y(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 529
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3, p2}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public z(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrx/Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 540
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/b;->c:Lcom/JoyFramework/remote/c/d;

    invoke-static {}, Lcom/JoyFramework/remote/b;->a()Lcom/JoyFramework/remote/b;

    move-result-object v1

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Lcom/JoyFramework/remote/b;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/remote/b/d/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/remote/b/d/b;->e:Ljava/lang/String;

    invoke-static {v2, p1, v3, p2}, Lcom/JoyFramework/remote/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/remote/c/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/JoyFramework/remote/b/d/b;->a(Lrx/Observable;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method
