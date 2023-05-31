.class Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$ResultCallAdapter$2;
.super Ljava/lang/Object;
.source "RxJavaCallAdapterFactory.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$ResultCallAdapter;->adapt(Lretrofit2/Call;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lretrofit2/Response",
        "<TR;>;",
        "Lretrofit2/adapter/rxjava/Result",
        "<TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$ResultCallAdapter;


# direct methods
.method constructor <init>(Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$ResultCallAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$ResultCallAdapter;

    .prologue
    .line 242
    iput-object p1, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$ResultCallAdapter$2;->this$0:Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$ResultCallAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 242
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$ResultCallAdapter$2;->call(Lretrofit2/Response;)Lretrofit2/adapter/rxjava/Result;

    move-result-object v0

    return-object v0
.end method

.method public call(Lretrofit2/Response;)Lretrofit2/adapter/rxjava/Result;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response",
            "<TR;>;)",
            "Lretrofit2/adapter/rxjava/Result",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 244
    .local p1, "response":Lretrofit2/Response;, "Lretrofit2/Response<TR;>;"
    invoke-static {p1}, Lretrofit2/adapter/rxjava/Result;->response(Lretrofit2/Response;)Lretrofit2/adapter/rxjava/Result;

    move-result-object v0

    return-object v0
.end method
