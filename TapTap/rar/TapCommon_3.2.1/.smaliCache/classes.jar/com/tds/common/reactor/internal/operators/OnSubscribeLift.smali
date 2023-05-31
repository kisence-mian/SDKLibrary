.class public final Lcom/tds/common/reactor/internal/operators/OnSubscribeLift;
.super Ljava/lang/Object;
.source "OnSubscribeLift.java"

# interfaces
.implements Lcom/tds/common/reactor/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/Observable$OnSubscribe<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final operator:Lcom/tds/common/reactor/Observable$Operator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Observable$Operator<",
            "+TR;-TT;>;"
        }
    .end annotation
.end field

.field final parent:Lcom/tds/common/reactor/Observable$OnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Observable$OnSubscribe<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tds/common/reactor/Observable$OnSubscribe;Lcom/tds/common/reactor/Observable$Operator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Observable$OnSubscribe<",
            "TT;>;",
            "Lcom/tds/common/reactor/Observable$Operator<",
            "+TR;-TT;>;)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeLift;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeLift<TT;TR;>;"
    .local p1, "parent":Lcom/tds/common/reactor/Observable$OnSubscribe;, "Lcom/tds/common/reactor/Observable$OnSubscribe<TT;>;"
    .local p2, "operator":Lcom/tds/common/reactor/Observable$Operator;, "Lcom/tds/common/reactor/Observable$Operator<+TR;-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeLift;->parent:Lcom/tds/common/reactor/Observable$OnSubscribe;

    .line 40
    iput-object p2, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeLift;->operator:Lcom/tds/common/reactor/Observable$Operator;

    .line 41
    return-void
.end method


# virtual methods
.method public call(Lcom/tds/common/reactor/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TR;>;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeLift;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeLift<TT;TR;>;"
    .local p1, "o":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TR;>;"
    :try_start_0
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeLift;->operator:Lcom/tds/common/reactor/Observable$Operator;

    invoke-static {v0}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onObservableLift(Lcom/tds/common/reactor/Observable$Operator;)Lcom/tds/common/reactor/Observable$Operator;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tds/common/reactor/Observable$Operator;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/reactor/Subscriber;
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_1d

    .line 49
    .local v0, "st":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    :try_start_c
    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->onStart()V

    .line 50
    iget-object v1, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeLift;->parent:Lcom/tds/common/reactor/Observable$OnSubscribe;

    invoke-interface {v1, v0}, Lcom/tds/common/reactor/Observable$OnSubscribe;->call(Ljava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    .line 57
    goto :goto_1c

    .line 51
    :catchall_15
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_16
    invoke-static {v1}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 56
    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_1d

    .line 63
    .end local v0    # "st":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1c
    goto :goto_24

    .line 58
    :catchall_1d
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 62
    invoke-virtual {p1, v0}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 64
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_24
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .line 32
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeLift;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeLift<TT;TR;>;"
    check-cast p1, Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/internal/operators/OnSubscribeLift;->call(Lcom/tds/common/reactor/Subscriber;)V

    return-void
.end method
