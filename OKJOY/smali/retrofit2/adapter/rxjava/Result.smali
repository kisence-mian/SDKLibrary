.class public final Lretrofit2/adapter/rxjava/Result;
.super Ljava/lang/Object;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final error:Ljava/lang/Throwable;

.field private final response:Lretrofit2/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Response",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lretrofit2/Response;Ljava/lang/Throwable;)V
    .registers 3
    .param p2, "error"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response",
            "<TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lretrofit2/adapter/rxjava/Result;, "Lretrofit2/adapter/rxjava/Result<TT;>;"
    .local p1, "response":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lretrofit2/adapter/rxjava/Result;->response:Lretrofit2/Response;

    .line 38
    iput-object p2, p0, Lretrofit2/adapter/rxjava/Result;->error:Ljava/lang/Throwable;

    .line 39
    return-void
.end method

.method public static error(Ljava/lang/Throwable;)Lretrofit2/adapter/rxjava/Result;
    .registers 3
    .param p0, "error"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lretrofit2/adapter/rxjava/Result",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 24
    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "error == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_a
    new-instance v0, Lretrofit2/adapter/rxjava/Result;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lretrofit2/adapter/rxjava/Result;-><init>(Lretrofit2/Response;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static response(Lretrofit2/Response;)Lretrofit2/adapter/rxjava/Result;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Response",
            "<TT;>;)",
            "Lretrofit2/adapter/rxjava/Result",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "response":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "response == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_a
    new-instance v0, Lretrofit2/adapter/rxjava/Result;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lretrofit2/adapter/rxjava/Result;-><init>(Lretrofit2/Response;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public error()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 58
    .local p0, "this":Lretrofit2/adapter/rxjava/Result;, "Lretrofit2/adapter/rxjava/Result<TT;>;"
    iget-object v0, p0, Lretrofit2/adapter/rxjava/Result;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public isError()Z
    .registers 2

    .prologue
    .line 63
    .local p0, "this":Lretrofit2/adapter/rxjava/Result;, "Lretrofit2/adapter/rxjava/Result<TT;>;"
    iget-object v0, p0, Lretrofit2/adapter/rxjava/Result;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public response()Lretrofit2/Response;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Response",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lretrofit2/adapter/rxjava/Result;, "Lretrofit2/adapter/rxjava/Result<TT;>;"
    iget-object v0, p0, Lretrofit2/adapter/rxjava/Result;->response:Lretrofit2/Response;

    return-object v0
.end method
