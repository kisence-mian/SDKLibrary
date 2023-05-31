.class final Lretrofit2/adapter/rxjava/SingleHelper;
.super Ljava/lang/Object;
.source "SingleHelper.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static makeSingle(Lretrofit2/CallAdapter;)Lretrofit2/CallAdapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/CallAdapter",
            "<",
            "Lrx/Observable",
            "<*>;>;)",
            "Lretrofit2/CallAdapter",
            "<",
            "Lrx/Single",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "callAdapter":Lretrofit2/CallAdapter;, "Lretrofit2/CallAdapter<Lrx/Observable<*>;>;"
    new-instance v0, Lretrofit2/adapter/rxjava/SingleHelper$1;

    invoke-direct {v0, p0}, Lretrofit2/adapter/rxjava/SingleHelper$1;-><init>(Lretrofit2/CallAdapter;)V

    return-object v0
.end method
