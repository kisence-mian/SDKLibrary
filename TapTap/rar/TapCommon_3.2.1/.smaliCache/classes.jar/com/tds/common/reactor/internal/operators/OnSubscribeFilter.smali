.class public final Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter;
.super Ljava/lang/Object;
.source "OnSubscribeFilter.java"

# interfaces
.implements Lcom/tds/common/reactor/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter$FilterSubscriber;
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
.field final predicate:Lcom/tds/common/reactor/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/functions/Func1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final source:Lcom/tds/common/reactor/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
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
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter<TT;>;"
    .local p1, "source":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<TT;>;"
    .local p2, "predicate":Lcom/tds/common/reactor/functions/Func1;, "Lcom/tds/common/reactor/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter;->source:Lcom/tds/common/reactor/Observable;

    .line 40
    iput-object p2, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter;->predicate:Lcom/tds/common/reactor/functions/Func1;

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
            "-TT;>;)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter<TT;>;"
    .local p1, "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    new-instance v0, Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter$FilterSubscriber;

    iget-object v1, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter;->predicate:Lcom/tds/common/reactor/functions/Func1;

    invoke-direct {v0, p1, v1}, Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter$FilterSubscriber;-><init>(Lcom/tds/common/reactor/Subscriber;Lcom/tds/common/reactor/functions/Func1;)V

    .line 46
    .local v0, "parent":Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter$FilterSubscriber;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter$FilterSubscriber<TT;>;"
    invoke-virtual {p1, v0}, Lcom/tds/common/reactor/Subscriber;->add(Lcom/tds/common/reactor/Subscription;)V

    .line 47
    iget-object v1, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter;->source:Lcom/tds/common/reactor/Observable;

    invoke-virtual {v1, v0}, Lcom/tds/common/reactor/Observable;->unsafeSubscribe(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscription;

    .line 48
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .line 32
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter<TT;>;"
    check-cast p1, Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter;->call(Lcom/tds/common/reactor/Subscriber;)V

    return-void
.end method
