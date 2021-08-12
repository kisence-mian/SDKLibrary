.class final Lokhttp3/RealCall$AsyncCall;
.super Lokhttp3/internal/NamedRunnable;
.source "RealCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/RealCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AsyncCall"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final responseCallback:Lokhttp3/Callback;

.field final synthetic this$0:Lokhttp3/RealCall;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 154
    const-class v0, Lokhttp3/RealCall;

    return-void
.end method

.method constructor <init>(Lokhttp3/RealCall;Lokhttp3/Callback;)V
    .registers 6
    .param p1, "this$0"    # Lokhttp3/RealCall;
    .param p2, "responseCallback"    # Lokhttp3/Callback;

    .line 157
    iput-object p1, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    .line 158
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lokhttp3/RealCall;->redactedUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "OkHttp %s"

    invoke-direct {p0, v1, v0}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    iput-object p2, p0, Lokhttp3/RealCall$AsyncCall;->responseCallback:Lokhttp3/Callback;

    .line 160
    return-void
.end method


# virtual methods
.method protected execute()V
    .registers 7

    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, "signalledCallback":Z
    iget-object v1, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    iget-object v1, v1, Lokhttp3/RealCall;->timeout:Lokio/AsyncTimeout;

    invoke-virtual {v1}, Lokio/AsyncTimeout;->enter()V

    .line 200
    :try_start_8
    iget-object v1, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    invoke-virtual {v1}, Lokhttp3/RealCall;->getResponseWithInterceptorChain()Lokhttp3/Response;

    move-result-object v1

    .line 201
    .local v1, "response":Lokhttp3/Response;
    iget-object v2, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    iget-object v2, v2, Lokhttp3/RealCall;->retryAndFollowUpInterceptor:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v2}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 202
    const/4 v0, 0x1

    .line 203
    iget-object v2, p0, Lokhttp3/RealCall$AsyncCall;->responseCallback:Lokhttp3/Callback;

    iget-object v3, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    new-instance v4, Ljava/io/IOException;

    const-string v5, "Canceled"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Lokhttp3/Callback;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V

    goto :goto_30

    .line 205
    :cond_28
    const/4 v0, 0x1

    .line 206
    iget-object v2, p0, Lokhttp3/RealCall$AsyncCall;->responseCallback:Lokhttp3/Callback;

    iget-object v3, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    invoke-interface {v2, v3, v1}, Lokhttp3/Callback;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_30} :catch_3e
    .catchall {:try_start_8 .. :try_end_30} :catchall_3c

    .line 218
    .end local v1    # "response":Lokhttp3/Response;
    :goto_30
    iget-object v1, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    iget-object v1, v1, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/Dispatcher;->finished(Lokhttp3/RealCall$AsyncCall;)V

    .line 219
    goto :goto_7d

    .line 218
    :catchall_3c
    move-exception v1

    goto :goto_7e

    .line 208
    :catch_3e
    move-exception v1

    .line 209
    .local v1, "e":Ljava/io/IOException;
    :try_start_3f
    iget-object v2, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    invoke-virtual {v2, v1}, Lokhttp3/RealCall;->timeoutExit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v2

    move-object v1, v2

    .line 210
    if-eqz v0, :cond_6a

    .line 212
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v2

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Callback failure for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    invoke-virtual {v5}, Lokhttp3/RealCall;->toLoggableString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_30

    .line 214
    :cond_6a
    iget-object v2, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    # getter for: Lokhttp3/RealCall;->eventListener:Lokhttp3/EventListener;
    invoke-static {v2}, Lokhttp3/RealCall;->access$000(Lokhttp3/RealCall;)Lokhttp3/EventListener;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    invoke-virtual {v2, v3, v1}, Lokhttp3/EventListener;->callFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 215
    iget-object v2, p0, Lokhttp3/RealCall$AsyncCall;->responseCallback:Lokhttp3/Callback;

    iget-object v3, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    invoke-interface {v2, v3, v1}, Lokhttp3/Callback;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    :try_end_7c
    .catchall {:try_start_3f .. :try_end_7c} :catchall_3c

    goto :goto_30

    .line 220
    .end local v1    # "e":Ljava/io/IOException;
    :goto_7d
    return-void

    .line 218
    :goto_7e
    iget-object v2, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    iget-object v2, v2, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v2

    invoke-virtual {v2, p0}, Lokhttp3/Dispatcher;->finished(Lokhttp3/RealCall$AsyncCall;)V

    throw v1
.end method

.method executeOn(Ljava/util/concurrent/ExecutorService;)V
    .registers 7
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 179
    nop

    .line 180
    const/4 v0, 0x0

    .line 182
    .local v0, "success":Z
    :try_start_2
    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_5} :catch_16
    .catchall {:try_start_2 .. :try_end_5} :catchall_14

    .line 183
    const/4 v0, 0x1

    .line 190
    if-nez v0, :cond_36

    .line 191
    :goto_8
    iget-object v1, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    iget-object v1, v1, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/Dispatcher;->finished(Lokhttp3/RealCall$AsyncCall;)V

    goto :goto_36

    .line 190
    :catchall_14
    move-exception v1

    goto :goto_37

    .line 184
    :catch_16
    move-exception v1

    .line 185
    .local v1, "e":Ljava/util/concurrent/RejectedExecutionException;
    :try_start_17
    new-instance v2, Ljava/io/InterruptedIOException;

    const-string v3, "executor rejected"

    invoke-direct {v2, v3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 186
    .local v2, "ioException":Ljava/io/InterruptedIOException;
    invoke-virtual {v2, v1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 187
    iget-object v3, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    # getter for: Lokhttp3/RealCall;->eventListener:Lokhttp3/EventListener;
    invoke-static {v3}, Lokhttp3/RealCall;->access$000(Lokhttp3/RealCall;)Lokhttp3/EventListener;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    invoke-virtual {v3, v4, v2}, Lokhttp3/EventListener;->callFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 188
    iget-object v3, p0, Lokhttp3/RealCall$AsyncCall;->responseCallback:Lokhttp3/Callback;

    iget-object v4, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    invoke-interface {v3, v4, v2}, Lokhttp3/Callback;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    :try_end_33
    .catchall {:try_start_17 .. :try_end_33} :catchall_14

    .line 190
    .end local v1    # "e":Ljava/util/concurrent/RejectedExecutionException;
    .end local v2    # "ioException":Ljava/io/InterruptedIOException;
    if-nez v0, :cond_36

    .line 191
    goto :goto_8

    .line 194
    :cond_36
    :goto_36
    return-void

    .line 190
    :goto_37
    if-nez v0, :cond_44

    .line 191
    iget-object v2, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    iget-object v2, v2, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v2

    invoke-virtual {v2, p0}, Lokhttp3/Dispatcher;->finished(Lokhttp3/RealCall$AsyncCall;)V

    :cond_44
    throw v1
.end method

.method get()Lokhttp3/RealCall;
    .registers 2

    .line 171
    iget-object v0, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    return-object v0
.end method

.method host()Ljava/lang/String;
    .registers 2

    .line 163
    iget-object v0, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    iget-object v0, v0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method request()Lokhttp3/Request;
    .registers 2

    .line 167
    iget-object v0, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    iget-object v0, v0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    return-object v0
.end method
