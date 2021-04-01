.class final Lrx/internal/operators/SingleOnSubscribeMap$MapSubscriber;
.super Lrx/SingleSubscriber;
.source "SingleOnSubscribeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/SingleOnSubscribeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/SingleSubscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final actual:Lrx/SingleSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/SingleSubscriber",
            "<-TR;>;"
        }
    .end annotation
.end field

.field done:Z

.field final mapper:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/SingleSubscriber;Lrx/functions/Func1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/SingleSubscriber",
            "<-TR;>;",
            "Lrx/functions/Func1",
            "<-TT;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lrx/internal/operators/SingleOnSubscribeMap$MapSubscriber;, "Lrx/internal/operators/SingleOnSubscribeMap$MapSubscriber<TT;TR;>;"
    .local p1, "actual":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<-TR;>;"
    .local p2, "mapper":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TR;>;"
    invoke-direct {p0}, Lrx/SingleSubscriber;-><init>()V

    .line 57
    iput-object p1, p0, Lrx/internal/operators/SingleOnSubscribeMap$MapSubscriber;->actual:Lrx/SingleSubscriber;

    .line 58
    iput-object p2, p0, Lrx/internal/operators/SingleOnSubscribeMap$MapSubscriber;->mapper:Lrx/functions/Func1;

    .line 59
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 79
    .local p0, "this":Lrx/internal/operators/SingleOnSubscribeMap$MapSubscriber;, "Lrx/internal/operators/SingleOnSubscribeMap$MapSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/SingleOnSubscribeMap$MapSubscriber;->done:Z

    if-eqz v0, :cond_8

    .line 80
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 86
    :goto_7
    return-void

    .line 83
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/SingleOnSubscribeMap$MapSubscriber;->done:Z

    .line 85
    iget-object v0, p0, Lrx/internal/operators/SingleOnSubscribeMap$MapSubscriber;->actual:Lrx/SingleSubscriber;

    invoke-virtual {v0, p1}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lrx/internal/operators/SingleOnSubscribeMap$MapSubscriber;, "Lrx/internal/operators/SingleOnSubscribeMap$MapSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/SingleOnSubscribeMap$MapSubscriber;->mapper:Lrx/functions/Func1;

    invoke-interface {v2, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_c

    move-result-object v1

    .line 74
    .local v1, "result":Ljava/lang/Object;, "TR;"
    iget-object v2, p0, Lrx/internal/operators/SingleOnSubscribeMap$MapSubscriber;->actual:Lrx/SingleSubscriber;

    invoke-virtual {v2, v1}, Lrx/SingleSubscriber;->onSuccess(Ljava/lang/Object;)V

    .line 75
    .end local v1    # "result":Ljava/lang/Object;, "TR;"
    :goto_b
    return-void

    .line 67
    :catch_c
    move-exception v0

    .line 68
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 69
    invoke-virtual {p0}, Lrx/internal/operators/SingleOnSubscribeMap$MapSubscriber;->unsubscribe()V

    .line 70
    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lrx/internal/operators/SingleOnSubscribeMap$MapSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_b
.end method
