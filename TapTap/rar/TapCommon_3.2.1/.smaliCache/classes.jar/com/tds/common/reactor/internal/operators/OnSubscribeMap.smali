.class public final Lcom/tds/common/reactor/internal/operators/OnSubscribeMap;
.super Ljava/lang/Object;
.source "OnSubscribeMap.java"

# interfaces
.implements Lcom/tds/common/reactor/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/reactor/internal/operators/OnSubscribeMap$MapSubscriber;
    }
.end annotation

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
.field final source:Lcom/tds/common/reactor/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation
.end field

.field final transformer:Lcom/tds/common/reactor/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/functions/Func1<",
            "-TT;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tds/common/reactor/Observable;Lcom/tds/common/reactor/functions/Func1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;",
            "Lcom/tds/common/reactor/functions/Func1<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeMap;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeMap<TT;TR;>;"
    .local p1, "source":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<TT;>;"
    .local p2, "transformer":Lcom/tds/common/reactor/functions/Func1;, "Lcom/tds/common/reactor/functions/Func1<-TT;+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeMap;->source:Lcom/tds/common/reactor/Observable;

    .line 44
    iput-object p2, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeMap;->transformer:Lcom/tds/common/reactor/functions/Func1;

    .line 45
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

    .line 49
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeMap;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeMap<TT;TR;>;"
    .local p1, "o":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TR;>;"
    new-instance v0, Lcom/tds/common/reactor/internal/operators/OnSubscribeMap$MapSubscriber;

    iget-object v1, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeMap;->transformer:Lcom/tds/common/reactor/functions/Func1;

    invoke-direct {v0, p1, v1}, Lcom/tds/common/reactor/internal/operators/OnSubscribeMap$MapSubscriber;-><init>(Lcom/tds/common/reactor/Subscriber;Lcom/tds/common/reactor/functions/Func1;)V

    .line 50
    .local v0, "parent":Lcom/tds/common/reactor/internal/operators/OnSubscribeMap$MapSubscriber;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeMap$MapSubscriber<TT;TR;>;"
    invoke-virtual {p1, v0}, Lcom/tds/common/reactor/Subscriber;->add(Lcom/tds/common/reactor/Subscription;)V

    .line 51
    iget-object v1, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeMap;->source:Lcom/tds/common/reactor/Observable;

    invoke-virtual {v1, v0}, Lcom/tds/common/reactor/Observable;->unsafeSubscribe(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscription;

    .line 52
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .line 36
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeMap;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeMap<TT;TR;>;"
    check-cast p1, Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/internal/operators/OnSubscribeMap;->call(Lcom/tds/common/reactor/Subscriber;)V

    return-void
.end method
