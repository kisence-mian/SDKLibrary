.class final Lretrofit2/OkHttpCall;
.super Ljava/lang/Object;
.source "OkHttpCall.java"

# interfaces
.implements Lretrofit2/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;,
        Lretrofit2/OkHttpCall$NoContentResponseBody;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Call",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final args:[Ljava/lang/Object;

.field private final callFactory:Lokhttp3/Call$Factory;

.field private volatile canceled:Z

.field private creationFailure:Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private executed:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private rawCall:Lokhttp3/Call;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final requestFactory:Lretrofit2/RequestFactory;

.field private final responseConverter:Lretrofit2/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Converter",
            "<",
            "Lokhttp3/ResponseBody;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lretrofit2/RequestFactory;[Ljava/lang/Object;Lokhttp3/Call$Factory;Lretrofit2/Converter;)V
    .registers 5
    .param p1, "requestFactory"    # Lretrofit2/RequestFactory;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "callFactory"    # Lokhttp3/Call$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/RequestFactory;",
            "[",
            "Ljava/lang/Object;",
            "Lokhttp3/Call$Factory;",
            "Lretrofit2/Converter",
            "<",
            "Lokhttp3/ResponseBody;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lretrofit2/OkHttpCall;, "Lretrofit2/OkHttpCall<TT;>;"
    .local p4, "responseConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<Lokhttp3/ResponseBody;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lretrofit2/OkHttpCall;->requestFactory:Lretrofit2/RequestFactory;

    .line 50
    iput-object p2, p0, Lretrofit2/OkHttpCall;->args:[Ljava/lang/Object;

    .line 51
    iput-object p3, p0, Lretrofit2/OkHttpCall;->callFactory:Lokhttp3/Call$Factory;

    .line 52
    iput-object p4, p0, Lretrofit2/OkHttpCall;->responseConverter:Lretrofit2/Converter;

    .line 53
    return-void
.end method

.method private createRawCall()Lokhttp3/Call;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    .local p0, "this":Lretrofit2/OkHttpCall;, "Lretrofit2/OkHttpCall<TT;>;"
    iget-object v1, p0, Lretrofit2/OkHttpCall;->callFactory:Lokhttp3/Call$Factory;

    iget-object v2, p0, Lretrofit2/OkHttpCall;->requestFactory:Lretrofit2/RequestFactory;

    iget-object v3, p0, Lretrofit2/OkHttpCall;->args:[Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lretrofit2/RequestFactory;->create([Ljava/lang/Object;)Lokhttp3/Request;

    move-result-object v2

    invoke-interface {v1, v2}, Lokhttp3/Call$Factory;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 191
    .local v0, "call":Lokhttp3/Call;
    if-nez v0, :cond_18

    .line 192
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Call.Factory returned null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    :cond_18
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    .line 234
    .local p0, "this":Lretrofit2/OkHttpCall;, "Lretrofit2/OkHttpCall<TT;>;"
    const/4 v1, 0x1

    iput-boolean v1, p0, Lretrofit2/OkHttpCall;->canceled:Z

    .line 237
    monitor-enter p0

    .line 238
    :try_start_4
    iget-object v0, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/Call;

    .line 239
    .local v0, "call":Lokhttp3/Call;
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_d

    .line 240
    if-eqz v0, :cond_c

    .line 241
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 243
    :cond_c
    return-void

    .line 239
    .end local v0    # "call":Lokhttp3/Call;
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lretrofit2/OkHttpCall;, "Lretrofit2/OkHttpCall<TT;>;"
    invoke-virtual {p0}, Lretrofit2/OkHttpCall;->clone()Lretrofit2/OkHttpCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lretrofit2/Call;
    .registers 2

    .prologue
    .line 32
    .local p0, "this":Lretrofit2/OkHttpCall;, "Lretrofit2/OkHttpCall<TT;>;"
    invoke-virtual {p0}, Lretrofit2/OkHttpCall;->clone()Lretrofit2/OkHttpCall;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lretrofit2/OkHttpCall;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/OkHttpCall",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lretrofit2/OkHttpCall;, "Lretrofit2/OkHttpCall<TT;>;"
    new-instance v0, Lretrofit2/OkHttpCall;

    iget-object v1, p0, Lretrofit2/OkHttpCall;->requestFactory:Lretrofit2/RequestFactory;

    iget-object v2, p0, Lretrofit2/OkHttpCall;->args:[Ljava/lang/Object;

    iget-object v3, p0, Lretrofit2/OkHttpCall;->callFactory:Lokhttp3/Call$Factory;

    iget-object v4, p0, Lretrofit2/OkHttpCall;->responseConverter:Lretrofit2/Converter;

    invoke-direct {v0, v1, v2, v3, v4}, Lretrofit2/OkHttpCall;-><init>(Lretrofit2/RequestFactory;[Ljava/lang/Object;Lokhttp3/Call$Factory;Lretrofit2/Converter;)V

    return-object v0
.end method

.method public enqueue(Lretrofit2/Callback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lretrofit2/OkHttpCall;, "Lretrofit2/OkHttpCall<TT;>;"
    .local p1, "callback":Lretrofit2/Callback;, "Lretrofit2/Callback<TT;>;"
    const-string v4, "callback == null"

    invoke-static {p1, v4}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    monitor-enter p0

    .line 93
    :try_start_6
    iget-boolean v4, p0, Lretrofit2/OkHttpCall;->executed:Z

    if-eqz v4, :cond_15

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Already executed."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 106
    :catchall_12
    move-exception v4

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw v4

    .line 94
    :cond_15
    const/4 v4, 0x1

    :try_start_16
    iput-boolean v4, p0, Lretrofit2/OkHttpCall;->executed:Z

    .line 96
    iget-object v0, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/Call;

    .line 97
    .local v0, "call":Lokhttp3/Call;
    iget-object v2, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_12

    .line 98
    .local v2, "failure":Ljava/lang/Throwable;
    if-nez v0, :cond_27

    if-nez v2, :cond_27

    .line 100
    :try_start_20
    invoke-direct {p0}, Lretrofit2/OkHttpCall;->createRawCall()Lokhttp3/Call;

    move-result-object v1

    iput-object v1, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/Call;
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_26} :catch_2e
    .catchall {:try_start_20 .. :try_end_26} :catchall_12

    .end local v0    # "call":Lokhttp3/Call;
    .local v1, "call":Lokhttp3/Call;
    move-object v0, v1

    .line 106
    .end local v1    # "call":Lokhttp3/Call;
    .restart local v0    # "call":Lokhttp3/Call;
    :cond_27
    :goto_27
    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_12

    .line 108
    if-eqz v2, :cond_36

    .line 109
    invoke-interface {p1, p0, v2}, Lretrofit2/Callback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    .line 147
    :goto_2d
    return-void

    .line 101
    :catch_2e
    move-exception v3

    .line 102
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_2f
    invoke-static {v3}, Lretrofit2/Utils;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 103
    iput-object v3, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_12

    move-object v2, v3

    goto :goto_27

    .line 113
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_36
    iget-boolean v4, p0, Lretrofit2/OkHttpCall;->canceled:Z

    if-eqz v4, :cond_3d

    .line 114
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 117
    :cond_3d
    new-instance v4, Lretrofit2/OkHttpCall$1;

    invoke-direct {v4, p0, p1}, Lretrofit2/OkHttpCall$1;-><init>(Lretrofit2/OkHttpCall;Lretrofit2/Callback;)V

    invoke-interface {v0, v4}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    goto :goto_2d
.end method

.method public execute()Lretrofit2/Response;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Response",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "this":Lretrofit2/OkHttpCall;, "Lretrofit2/OkHttpCall<TT;>;"
    monitor-enter p0

    .line 157
    :try_start_1
    iget-boolean v2, p0, Lretrofit2/OkHttpCall;->executed:Z

    if-eqz v2, :cond_10

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Already executed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 180
    :catchall_d
    move-exception v2

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v2

    .line 158
    :cond_10
    const/4 v2, 0x1

    :try_start_11
    iput-boolean v2, p0, Lretrofit2/OkHttpCall;->executed:Z

    .line 160
    iget-object v2, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    if-eqz v2, :cond_32

    .line 161
    iget-object v2, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    instance-of v2, v2, Ljava/io/IOException;

    if-eqz v2, :cond_22

    .line 162
    iget-object v2, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    check-cast v2, Ljava/io/IOException;

    throw v2

    .line 163
    :cond_22
    iget-object v2, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    instance-of v2, v2, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_2d

    .line 164
    iget-object v2, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 166
    :cond_2d
    iget-object v2, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    check-cast v2, Ljava/lang/Error;

    throw v2

    .line 170
    :cond_32
    iget-object v0, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/Call;
    :try_end_34
    .catchall {:try_start_11 .. :try_end_34} :catchall_d

    .line 171
    .local v0, "call":Lokhttp3/Call;
    if-nez v0, :cond_3c

    .line 173
    :try_start_36
    invoke-direct {p0}, Lretrofit2/OkHttpCall;->createRawCall()Lokhttp3/Call;

    move-result-object v0

    .end local v0    # "call":Lokhttp3/Call;
    iput-object v0, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/Call;
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3c} :catch_4d
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_3c} :catch_55
    .catch Ljava/lang/Error; {:try_start_36 .. :try_end_3c} :catch_58
    .catchall {:try_start_36 .. :try_end_3c} :catchall_d

    .line 180
    .restart local v0    # "call":Lokhttp3/Call;
    :cond_3c
    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_d

    .line 182
    iget-boolean v2, p0, Lretrofit2/OkHttpCall;->canceled:Z

    if-eqz v2, :cond_44

    .line 183
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 186
    :cond_44
    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v2

    invoke-virtual {p0, v2}, Lretrofit2/OkHttpCall;->parseResponse(Lokhttp3/Response;)Lretrofit2/Response;

    move-result-object v2

    return-object v2

    .line 174
    .end local v0    # "call":Lokhttp3/Call;
    :catch_4d
    move-exception v2

    move-object v1, v2

    .line 175
    .local v1, "e":Ljava/lang/Throwable;
    :goto_4f
    :try_start_4f
    invoke-static {v1}, Lretrofit2/Utils;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 176
    iput-object v1, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    .line 177
    throw v1
    :try_end_55
    .catchall {:try_start_4f .. :try_end_55} :catchall_d

    .line 174
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_55
    move-exception v2

    move-object v1, v2

    goto :goto_4f

    :catch_58
    move-exception v2

    move-object v1, v2

    goto :goto_4f
.end method

.method public isCanceled()Z
    .registers 3

    .prologue
    .local p0, "this":Lretrofit2/OkHttpCall;, "Lretrofit2/OkHttpCall<TT;>;"
    const/4 v0, 0x1

    .line 246
    iget-boolean v1, p0, Lretrofit2/OkHttpCall;->canceled:Z

    if-eqz v1, :cond_6

    .line 250
    :goto_5
    return v0

    .line 249
    :cond_6
    monitor-enter p0

    .line 250
    :try_start_7
    iget-object v1, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/Call;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/Call;

    invoke-interface {v1}, Lokhttp3/Call;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_18

    :goto_13
    monitor-exit p0

    goto :goto_5

    .line 251
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v0

    .line 250
    :cond_18
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public declared-synchronized isExecuted()Z
    .registers 2

    .prologue
    .line 150
    .local p0, "this":Lretrofit2/OkHttpCall;, "Lretrofit2/OkHttpCall<TT;>;"
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lretrofit2/OkHttpCall;->executed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method parseResponse(Lokhttp3/Response;)Lretrofit2/Response;
    .registers 14
    .param p1, "rawResponse"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            ")",
            "Lretrofit2/Response",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    .local p0, "this":Lretrofit2/OkHttpCall;, "Lretrofit2/OkHttpCall<TT;>;"
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    .line 201
    .local v5, "rawBody":Lokhttp3/ResponseBody;
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v6

    new-instance v7, Lretrofit2/OkHttpCall$NoContentResponseBody;

    .line 202
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v8

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v10

    invoke-direct {v7, v8, v10, v11}, Lretrofit2/OkHttpCall$NoContentResponseBody;-><init>(Lokhttp3/MediaType;J)V

    invoke-virtual {v6, v7}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v6

    .line 203
    invoke-virtual {v6}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    .line 205
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v3

    .line 206
    .local v3, "code":I
    const/16 v6, 0xc8

    if-lt v3, v6, :cond_29

    const/16 v6, 0x12c

    if-lt v3, v6, :cond_3a

    .line 209
    :cond_29
    :try_start_29
    invoke-static {v5}, Lretrofit2/Utils;->buffer(Lokhttp3/ResponseBody;)Lokhttp3/ResponseBody;

    move-result-object v1

    .line 210
    .local v1, "bufferedBody":Lokhttp3/ResponseBody;
    invoke-static {v1, p1}, Lretrofit2/Response;->error(Lokhttp3/ResponseBody;Lokhttp3/Response;)Lretrofit2/Response;
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_35

    move-result-object v6

    .line 212
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->close()V

    .line 224
    .end local v1    # "bufferedBody":Lokhttp3/ResponseBody;
    :goto_34
    return-object v6

    .line 212
    :catchall_35
    move-exception v6

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->close()V

    throw v6

    .line 216
    :cond_3a
    const/16 v6, 0xcc

    if-eq v3, v6, :cond_42

    const/16 v6, 0xcd

    if-ne v3, v6, :cond_4b

    .line 217
    :cond_42
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->close()V

    .line 218
    const/4 v6, 0x0

    invoke-static {v6, p1}, Lretrofit2/Response;->success(Ljava/lang/Object;Lokhttp3/Response;)Lretrofit2/Response;

    move-result-object v6

    goto :goto_34

    .line 221
    :cond_4b
    new-instance v2, Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;

    invoke-direct {v2, v5}, Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;-><init>(Lokhttp3/ResponseBody;)V

    .line 223
    .local v2, "catchingBody":Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;
    :try_start_50
    iget-object v6, p0, Lretrofit2/OkHttpCall;->responseConverter:Lretrofit2/Converter;

    invoke-interface {v6, v2}, Lretrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 224
    .local v0, "body":Ljava/lang/Object;, "TT;"
    invoke-static {v0, p1}, Lretrofit2/Response;->success(Ljava/lang/Object;Lokhttp3/Response;)Lretrofit2/Response;
    :try_end_59
    .catch Ljava/lang/RuntimeException; {:try_start_50 .. :try_end_59} :catch_5b

    move-result-object v6

    goto :goto_34

    .line 225
    .end local v0    # "body":Ljava/lang/Object;, "TT;"
    :catch_5b
    move-exception v4

    .line 228
    .local v4, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;->throwIfCaught()V

    .line 229
    throw v4
.end method

.method public declared-synchronized request()Lokhttp3/Request;
    .registers 6

    .prologue
    .line 61
    .local p0, "this":Lretrofit2/OkHttpCall;, "Lretrofit2/OkHttpCall<TT;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/Call;

    .line 62
    .local v0, "call":Lokhttp3/Call;
    if-eqz v0, :cond_b

    .line 63
    invoke-interface {v0}, Lokhttp3/Call;->request()Lokhttp3/Request;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1f

    move-result-object v2

    .line 75
    :goto_9
    monitor-exit p0

    return-object v2

    .line 65
    :cond_b
    :try_start_b
    iget-object v2, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    if-eqz v2, :cond_32

    .line 66
    iget-object v2, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    instance-of v2, v2, Ljava/io/IOException;

    if-eqz v2, :cond_22

    .line 67
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unable to create request."

    iget-object v4, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_1f

    .line 61
    .end local v0    # "call":Lokhttp3/Call;
    :catchall_1f
    move-exception v2

    monitor-exit p0

    throw v2

    .line 68
    .restart local v0    # "call":Lokhttp3/Call;
    :cond_22
    :try_start_22
    iget-object v2, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    instance-of v2, v2, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_2d

    .line 69
    iget-object v2, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 71
    :cond_2d
    iget-object v2, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    check-cast v2, Ljava/lang/Error;

    throw v2
    :try_end_32
    .catchall {:try_start_22 .. :try_end_32} :catchall_1f

    .line 75
    :cond_32
    :try_start_32
    invoke-direct {p0}, Lretrofit2/OkHttpCall;->createRawCall()Lokhttp3/Call;

    move-result-object v2

    iput-object v2, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/Call;

    invoke-interface {v2}, Lokhttp3/Call;->request()Lokhttp3/Request;
    :try_end_3b
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_3b} :catch_3d
    .catch Ljava/lang/Error; {:try_start_32 .. :try_end_3b} :catch_50
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3b} :catch_45
    .catchall {:try_start_32 .. :try_end_3b} :catchall_1f

    move-result-object v2

    goto :goto_9

    .line 76
    :catch_3d
    move-exception v2

    move-object v1, v2

    .line 77
    .local v1, "e":Ljava/lang/Throwable;
    :goto_3f
    :try_start_3f
    invoke-static {v1}, Lretrofit2/Utils;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 78
    iput-object v1, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    .line 79
    throw v1

    .line 80
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_45
    move-exception v1

    .line 81
    .local v1, "e":Ljava/io/IOException;
    iput-object v1, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    .line 82
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unable to create request."

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_50
    .catchall {:try_start_3f .. :try_end_50} :catchall_1f

    .line 76
    .end local v1    # "e":Ljava/io/IOException;
    :catch_50
    move-exception v2

    move-object v1, v2

    goto :goto_3f
.end method
