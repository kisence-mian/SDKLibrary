.class Lretrofit2/OkHttpCall$1;
.super Ljava/lang/Object;
.source "OkHttpCall.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/OkHttpCall;->enqueue(Lretrofit2/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lretrofit2/OkHttpCall;

.field final synthetic val$callback:Lretrofit2/Callback;


# direct methods
.method constructor <init>(Lretrofit2/OkHttpCall;Lretrofit2/Callback;)V
    .registers 3
    .param p1, "this$0"    # Lretrofit2/OkHttpCall;

    .prologue
    .line 117
    .local p0, "this":Lretrofit2/OkHttpCall$1;, "Lretrofit2/OkHttpCall$1;"
    iput-object p1, p0, Lretrofit2/OkHttpCall$1;->this$0:Lretrofit2/OkHttpCall;

    iput-object p2, p0, Lretrofit2/OkHttpCall$1;->val$callback:Lretrofit2/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private callFailure(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 141
    .local p0, "this":Lretrofit2/OkHttpCall$1;, "Lretrofit2/OkHttpCall$1;"
    :try_start_0
    iget-object v1, p0, Lretrofit2/OkHttpCall$1;->val$callback:Lretrofit2/Callback;

    iget-object v2, p0, Lretrofit2/OkHttpCall$1;->this$0:Lretrofit2/OkHttpCall;

    invoke-interface {v1, v2, p1}, Lretrofit2/Callback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    .line 145
    :goto_7
    return-void

    .line 142
    :catch_8
    move-exception v0

    .line 143
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 136
    .local p0, "this":Lretrofit2/OkHttpCall$1;, "Lretrofit2/OkHttpCall$1;"
    invoke-direct {p0, p2}, Lretrofit2/OkHttpCall$1;->callFailure(Ljava/lang/Throwable;)V

    .line 137
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 8
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "rawResponse"    # Lokhttp3/Response;

    .prologue
    .line 121
    .local p0, "this":Lretrofit2/OkHttpCall$1;, "Lretrofit2/OkHttpCall$1;"
    :try_start_0
    iget-object v3, p0, Lretrofit2/OkHttpCall$1;->this$0:Lretrofit2/OkHttpCall;

    invoke-virtual {v3, p2}, Lretrofit2/OkHttpCall;->parseResponse(Lokhttp3/Response;)Lretrofit2/Response;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_e

    move-result-object v1

    .line 129
    .local v1, "response":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    :try_start_6
    iget-object v3, p0, Lretrofit2/OkHttpCall$1;->val$callback:Lretrofit2/Callback;

    iget-object v4, p0, Lretrofit2/OkHttpCall$1;->this$0:Lretrofit2/OkHttpCall;

    invoke-interface {v3, v4, v1}, Lretrofit2/Callback;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_d} :catch_16

    .line 133
    .end local v1    # "response":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    :goto_d
    return-void

    .line 122
    :catch_e
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lretrofit2/Utils;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 124
    invoke-direct {p0, v0}, Lretrofit2/OkHttpCall$1;->callFailure(Ljava/lang/Throwable;)V

    goto :goto_d

    .line 130
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "response":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    :catch_16
    move-exception v2

    .line 131
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d
.end method
