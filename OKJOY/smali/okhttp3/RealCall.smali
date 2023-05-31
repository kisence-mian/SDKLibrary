.class final Lokhttp3/RealCall;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Lokhttp3/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/RealCall$AsyncCall;
    }
.end annotation


# instance fields
.field final client:Lokhttp3/OkHttpClient;

.field private eventListener:Lokhttp3/EventListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private executed:Z

.field final forWebSocket:Z

.field final originalRequest:Lokhttp3/Request;

.field final retryAndFollowUpInterceptor:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

.field final timeout:Lokio/AsyncTimeout;


# direct methods
.method private constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V
    .registers 8
    .param p1, "client"    # Lokhttp3/OkHttpClient;
    .param p2, "originalRequest"    # Lokhttp3/Request;
    .param p3, "forWebSocket"    # Z

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    .line 60
    iput-object p2, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    .line 61
    iput-boolean p3, p0, Lokhttp3/RealCall;->forWebSocket:Z

    .line 62
    new-instance v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-direct {v0, p1, p3}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;-><init>(Lokhttp3/OkHttpClient;Z)V

    iput-object v0, p0, Lokhttp3/RealCall;->retryAndFollowUpInterceptor:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    .line 63
    new-instance v0, Lokhttp3/RealCall$1;

    invoke-direct {v0, p0}, Lokhttp3/RealCall$1;-><init>(Lokhttp3/RealCall;)V

    iput-object v0, p0, Lokhttp3/RealCall;->timeout:Lokio/AsyncTimeout;

    .line 68
    iget-object v0, p0, Lokhttp3/RealCall;->timeout:Lokio/AsyncTimeout;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->callTimeoutMillis()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokio/AsyncTimeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lokhttp3/RealCall;)Lokhttp3/EventListener;
    .registers 2
    .param p0, "x0"    # Lokhttp3/RealCall;

    .prologue
    .line 40
    iget-object v0, p0, Lokhttp3/RealCall;->eventListener:Lokhttp3/EventListener;

    return-object v0
.end method

.method private captureCallStackTrace()V
    .registers 4

    .prologue
    .line 115
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v1

    const-string v2, "response.body().close()"

    invoke-virtual {v1, v2}, Lokhttp3/internal/platform/Platform;->getStackTraceForCloseable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 116
    .local v0, "callStackTrace":Ljava/lang/Object;
    iget-object v1, p0, Lokhttp3/RealCall;->retryAndFollowUpInterceptor:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v1, v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->setCallStackTrace(Ljava/lang/Object;)V

    .line 117
    return-void
.end method

.method static newRealCall(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/RealCall;
    .registers 5
    .param p0, "client"    # Lokhttp3/OkHttpClient;
    .param p1, "originalRequest"    # Lokhttp3/Request;
    .param p2, "forWebSocket"    # Z

    .prologue
    .line 73
    new-instance v0, Lokhttp3/RealCall;

    invoke-direct {v0, p0, p1, p2}, Lokhttp3/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V

    .line 74
    .local v0, "call":Lokhttp3/RealCall;
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->eventListenerFactory()Lokhttp3/EventListener$Factory;

    move-result-object v1

    invoke-interface {v1, v0}, Lokhttp3/EventListener$Factory;->create(Lokhttp3/Call;)Lokhttp3/EventListener;

    move-result-object v1

    iput-object v1, v0, Lokhttp3/RealCall;->eventListener:Lokhttp3/EventListener;

    .line 75
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lokhttp3/RealCall;->retryAndFollowUpInterceptor:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->cancel()V

    .line 131
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0}, Lokhttp3/RealCall;->clone()Lokhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lokhttp3/Call;
    .registers 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lokhttp3/RealCall;->clone()Lokhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lokhttp3/RealCall;
    .registers 4

    .prologue
    .line 147
    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    iget-object v1, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    iget-boolean v2, p0, Lokhttp3/RealCall;->forWebSocket:Z

    invoke-static {v0, v1, v2}, Lokhttp3/RealCall;->newRealCall(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public enqueue(Lokhttp3/Callback;)V
    .registers 4
    .param p1, "responseCallback"    # Lokhttp3/Callback;

    .prologue
    .line 120
    monitor-enter p0

    .line 121
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/RealCall;->executed:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0

    .line 122
    :cond_10
    const/4 v0, 0x1

    :try_start_11
    iput-boolean v0, p0, Lokhttp3/RealCall;->executed:Z

    .line 123
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_d

    .line 124
    invoke-direct {p0}, Lokhttp3/RealCall;->captureCallStackTrace()V

    .line 125
    iget-object v0, p0, Lokhttp3/RealCall;->eventListener:Lokhttp3/EventListener;

    invoke-virtual {v0, p0}, Lokhttp3/EventListener;->callStart(Lokhttp3/Call;)V

    .line 126
    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    new-instance v1, Lokhttp3/RealCall$AsyncCall;

    invoke-direct {v1, p0, p1}, Lokhttp3/RealCall$AsyncCall;-><init>(Lokhttp3/RealCall;Lokhttp3/Callback;)V

    invoke-virtual {v0, v1}, Lokhttp3/Dispatcher;->enqueue(Lokhttp3/RealCall$AsyncCall;)V

    .line 127
    return-void
.end method

.method public execute()Lokhttp3/Response;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    monitor-enter p0

    .line 84
    :try_start_1
    iget-boolean v2, p0, Lokhttp3/RealCall;->executed:Z

    if-eqz v2, :cond_10

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Already Executed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :catchall_d
    move-exception v2

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v2

    .line 85
    :cond_10
    const/4 v2, 0x1

    :try_start_11
    iput-boolean v2, p0, Lokhttp3/RealCall;->executed:Z

    .line 86
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_d

    .line 87
    invoke-direct {p0}, Lokhttp3/RealCall;->captureCallStackTrace()V

    .line 88
    iget-object v2, p0, Lokhttp3/RealCall;->timeout:Lokio/AsyncTimeout;

    invoke-virtual {v2}, Lokio/AsyncTimeout;->enter()V

    .line 89
    iget-object v2, p0, Lokhttp3/RealCall;->eventListener:Lokhttp3/EventListener;

    invoke-virtual {v2, p0}, Lokhttp3/EventListener;->callStart(Lokhttp3/Call;)V

    .line 91
    :try_start_21
    iget-object v2, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v2

    invoke-virtual {v2, p0}, Lokhttp3/Dispatcher;->executed(Lokhttp3/RealCall;)V

    .line 92
    invoke-virtual {p0}, Lokhttp3/RealCall;->getResponseWithInterceptorChain()Lokhttp3/Response;

    move-result-object v1

    .line 93
    .local v1, "result":Lokhttp3/Response;
    if-nez v1, :cond_4e

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_38} :catch_38
    .catchall {:try_start_21 .. :try_end_38} :catchall_43

    .line 95
    .end local v1    # "result":Lokhttp3/Response;
    :catch_38
    move-exception v0

    .line 96
    .local v0, "e":Ljava/io/IOException;
    :try_start_39
    invoke-virtual {p0, v0}, Lokhttp3/RealCall;->timeoutExit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    .line 97
    iget-object v2, p0, Lokhttp3/RealCall;->eventListener:Lokhttp3/EventListener;

    invoke-virtual {v2, p0, v0}, Lokhttp3/EventListener;->callFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 98
    throw v0
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_43

    .line 100
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_43
    move-exception v2

    iget-object v3, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v3

    invoke-virtual {v3, p0}, Lokhttp3/Dispatcher;->finished(Lokhttp3/RealCall;)V

    throw v2

    .restart local v1    # "result":Lokhttp3/Response;
    :cond_4e
    iget-object v2, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v2

    invoke-virtual {v2, p0}, Lokhttp3/Dispatcher;->finished(Lokhttp3/RealCall;)V

    .line 94
    return-object v1
.end method

.method getResponseWithInterceptorChain()Lokhttp3/Response;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 239
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v1, "interceptors":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Interceptor;>;"
    iget-object v3, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 241
    iget-object v3, p0, Lokhttp3/RealCall;->retryAndFollowUpInterceptor:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v3, Lokhttp3/internal/http/BridgeInterceptor;

    iget-object v4, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->cookieJar()Lokhttp3/CookieJar;

    move-result-object v4

    invoke-direct {v3, v4}, Lokhttp3/internal/http/BridgeInterceptor;-><init>(Lokhttp3/CookieJar;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v3, Lokhttp3/internal/cache/CacheInterceptor;

    iget-object v4, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->internalCache()Lokhttp3/internal/cache/InternalCache;

    move-result-object v4

    invoke-direct {v3, v4}, Lokhttp3/internal/cache/CacheInterceptor;-><init>(Lokhttp3/internal/cache/InternalCache;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v3, Lokhttp3/internal/connection/ConnectInterceptor;

    iget-object v4, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-direct {v3, v4}, Lokhttp3/internal/connection/ConnectInterceptor;-><init>(Lokhttp3/OkHttpClient;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    iget-boolean v3, p0, Lokhttp3/RealCall;->forWebSocket:Z

    if-nez v3, :cond_47

    .line 246
    iget-object v3, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 248
    :cond_47
    new-instance v3, Lokhttp3/internal/http/CallServerInterceptor;

    iget-boolean v4, p0, Lokhttp3/RealCall;->forWebSocket:Z

    invoke-direct {v3, v4}, Lokhttp3/internal/http/CallServerInterceptor;-><init>(Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    new-instance v0, Lokhttp3/internal/http/RealInterceptorChain;

    const/4 v5, 0x0

    iget-object v6, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    iget-object v8, p0, Lokhttp3/RealCall;->eventListener:Lokhttp3/EventListener;

    iget-object v3, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    .line 251
    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->connectTimeoutMillis()I

    move-result v9

    iget-object v3, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    .line 252
    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->readTimeoutMillis()I

    move-result v10

    iget-object v3, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->writeTimeoutMillis()I

    move-result v11

    move-object v3, v2

    move-object v4, v2

    move-object v7, p0

    invoke-direct/range {v0 .. v11}, Lokhttp3/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/internal/http/HttpCodec;Lokhttp3/internal/connection/RealConnection;ILokhttp3/Request;Lokhttp3/Call;Lokhttp3/EventListener;III)V

    .line 254
    .local v0, "chain":Lokhttp3/Interceptor$Chain;
    iget-object v2, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    invoke-interface {v0, v2}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v2

    return-object v2
.end method

.method public isCanceled()Z
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lokhttp3/RealCall;->retryAndFollowUpInterceptor:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isExecuted()Z
    .registers 2

    .prologue
    .line 138
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/RealCall;->executed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method redactedUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->redact()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request()Lokhttp3/Request;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    return-object v0
.end method

.method streamAllocation()Lokhttp3/internal/connection/StreamAllocation;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lokhttp3/RealCall;->retryAndFollowUpInterceptor:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation()Lokhttp3/internal/connection/StreamAllocation;

    move-result-object v0

    return-object v0
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lokhttp3/RealCall;->timeout:Lokio/AsyncTimeout;

    return-object v0
.end method

.method timeoutExit(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4
    .param p1, "cause"    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 105
    iget-object v1, p0, Lokhttp3/RealCall;->timeout:Lokio/AsyncTimeout;

    invoke-virtual {v1}, Lokio/AsyncTimeout;->exit()Z

    move-result v1

    if-nez v1, :cond_9

    .line 111
    .end local p1    # "cause":Ljava/io/IOException;
    :goto_8
    return-object p1

    .line 107
    .restart local p1    # "cause":Ljava/io/IOException;
    :cond_9
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, "e":Ljava/io/InterruptedIOException;
    if-eqz p1, :cond_15

    .line 109
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_15
    move-object p1, v0

    .line 111
    goto :goto_8
.end method

.method toLoggableString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lokhttp3/RealCall;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "canceled "

    :goto_d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 229
    iget-boolean v0, p0, Lokhttp3/RealCall;->forWebSocket:Z

    if-eqz v0, :cond_31

    const-string v0, "web socket"

    :goto_17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 230
    invoke-virtual {p0}, Lokhttp3/RealCall;->redactedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    return-object v0

    :cond_2e
    const-string v0, ""

    goto :goto_d

    .line 229
    :cond_31
    const-string v0, "call"

    goto :goto_17
.end method
