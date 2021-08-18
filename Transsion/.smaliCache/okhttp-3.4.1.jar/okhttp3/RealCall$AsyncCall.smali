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


# instance fields
.field private final responseCallback:Lokhttp3/Callback;

.field final synthetic this$0:Lokhttp3/RealCall;


# direct methods
.method private constructor <init>(Lokhttp3/RealCall;Lokhttp3/Callback;)V
    .registers 6
    .param p1, "this$0"    # Lokhttp3/RealCall;
    .param p2, "responseCallback"    # Lokhttp3/Callback;

    .line 100
    iput-object p1, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    .line 101
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lokhttp3/RealCall;->redactedUrl()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "OkHttp %s"

    invoke-direct {p0, v1, v0}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    iput-object p2, p0, Lokhttp3/RealCall$AsyncCall;->responseCallback:Lokhttp3/Callback;

    .line 103
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/RealCall;Lokhttp3/Callback;Lokhttp3/RealCall$1;)V
    .registers 4
    .param p1, "x0"    # Lokhttp3/RealCall;
    .param p2, "x1"    # Lokhttp3/Callback;
    .param p3, "x2"    # Lokhttp3/RealCall$1;

    .line 97
    invoke-direct {p0, p1, p2}, Lokhttp3/RealCall$AsyncCall;-><init>(Lokhttp3/RealCall;Lokhttp3/Callback;)V

    return-void
.end method


# virtual methods
.method protected execute()V
    .registers 7

    .line 118
    const/4 v0, 0x0

    .line 120
    .local v0, "signalledCallback":Z
    :try_start_1
    iget-object v1, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    # invokes: Lokhttp3/RealCall;->getResponseWithInterceptorChain()Lokhttp3/Response;
    invoke-static {v1}, Lokhttp3/RealCall;->access$100(Lokhttp3/RealCall;)Lokhttp3/Response;

    move-result-object v1

    .line 121
    .local v1, "response":Lokhttp3/Response;
    iget-object v2, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    # getter for: Lokhttp3/RealCall;->retryAndFollowUpInterceptor:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;
    invoke-static {v2}, Lokhttp3/RealCall;->access$200(Lokhttp3/RealCall;)Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 122
    const/4 v0, 0x1

    .line 123
    iget-object v2, p0, Lokhttp3/RealCall$AsyncCall;->responseCallback:Lokhttp3/Callback;

    iget-object v3, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    new-instance v4, Ljava/io/IOException;

    const-string v5, "Canceled"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Lokhttp3/Callback;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V

    goto :goto_5a

    .line 125
    :cond_23
    const/4 v0, 0x1

    .line 126
    iget-object v2, p0, Lokhttp3/RealCall$AsyncCall;->responseCallback:Lokhttp3/Callback;

    iget-object v3, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    invoke-interface {v2, v3, v1}, Lokhttp3/Callback;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2b} :catch_2e
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2c

    goto :goto_5a

    .line 136
    .end local v1    # "response":Lokhttp3/Response;
    :catchall_2c
    move-exception v1

    goto :goto_69

    .line 128
    :catch_2e
    move-exception v1

    .line 129
    .local v1, "e":Ljava/io/IOException;
    if-eqz v0, :cond_53

    .line 131
    :try_start_31
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v2

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Callback failure for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    # invokes: Lokhttp3/RealCall;->toLoggableString()Ljava/lang/String;
    invoke-static {v5}, Lokhttp3/RealCall;->access$300(Lokhttp3/RealCall;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5a

    .line 133
    :cond_53
    iget-object v2, p0, Lokhttp3/RealCall$AsyncCall;->responseCallback:Lokhttp3/Callback;

    iget-object v3, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    invoke-interface {v2, v3, v1}, Lokhttp3/Callback;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    :try_end_5a
    .catchall {:try_start_31 .. :try_end_5a} :catchall_2c

    .line 136
    .end local v1    # "e":Ljava/io/IOException;
    :goto_5a
    iget-object v1, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    # getter for: Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;
    invoke-static {v1}, Lokhttp3/RealCall;->access$400(Lokhttp3/RealCall;)Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/Dispatcher;->finished(Lokhttp3/RealCall$AsyncCall;)V

    .line 137
    nop

    .line 138
    return-void

    .line 136
    :goto_69
    iget-object v2, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    # getter for: Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;
    invoke-static {v2}, Lokhttp3/RealCall;->access$400(Lokhttp3/RealCall;)Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v2

    invoke-virtual {v2, p0}, Lokhttp3/Dispatcher;->finished(Lokhttp3/RealCall$AsyncCall;)V

    throw v1
.end method

.method get()Lokhttp3/RealCall;
    .registers 2

    .line 114
    iget-object v0, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    return-object v0
.end method

.method host()Ljava/lang/String;
    .registers 2

    .line 106
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

    .line 110
    iget-object v0, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    iget-object v0, v0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    return-object v0
.end method
