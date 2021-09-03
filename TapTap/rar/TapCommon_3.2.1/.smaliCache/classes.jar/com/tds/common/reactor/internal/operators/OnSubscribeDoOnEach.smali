.class public Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach;
.super Ljava/lang/Object;
.source "OnSubscribeDoOnEach.java"

# interfaces
.implements Lcom/tds/common/reactor/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final doOnEachObserver:Lcom/tds/common/reactor/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private final source:Lcom/tds/common/reactor/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tds/common/reactor/Observable;Lcom/tds/common/reactor/Observer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;",
            "Lcom/tds/common/reactor/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 16
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach<TT;>;"
    .local p1, "source":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<TT;>;"
    .local p2, "doOnEachObserver":Lcom/tds/common/reactor/Observer;, "Lcom/tds/common/reactor/Observer<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach;->source:Lcom/tds/common/reactor/Observable;

    .line 18
    iput-object p2, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach;->doOnEachObserver:Lcom/tds/common/reactor/Observer;

    .line 19
    return-void
.end method


# virtual methods
.method public call(Lcom/tds/common/reactor/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 23
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach<TT;>;"
    .local p1, "subscriber":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach;->source:Lcom/tds/common/reactor/Observable;

    new-instance v1, Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;

    iget-object v2, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach;->doOnEachObserver:Lcom/tds/common/reactor/Observer;

    invoke-direct {v1, p1, v2}, Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;-><init>(Lcom/tds/common/reactor/Subscriber;Lcom/tds/common/reactor/Observer;)V

    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/Observable;->unsafeSubscribe(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscription;

    .line 24
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .line 12
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach<TT;>;"
    check-cast p1, Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach;->call(Lcom/tds/common/reactor/Subscriber;)V

    return-void
.end method
