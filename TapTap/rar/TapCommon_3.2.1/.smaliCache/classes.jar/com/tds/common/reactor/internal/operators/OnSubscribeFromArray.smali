.class public final Lcom/tds/common/reactor/internal/operators/OnSubscribeFromArray;
.super Ljava/lang/Object;
.source "OnSubscribeFromArray.java"

# interfaces
.implements Lcom/tds/common/reactor/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/reactor/internal/operators/OnSubscribeFromArray$FromArrayProducer;
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
.field final array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 12
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeFromArray;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeFromArray<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeFromArray;->array:[Ljava/lang/Object;

    .line 14
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

    .line 18
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeFromArray;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeFromArray<TT;>;"
    .local p1, "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    new-instance v0, Lcom/tds/common/reactor/internal/operators/OnSubscribeFromArray$FromArrayProducer;

    iget-object v1, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeFromArray;->array:[Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lcom/tds/common/reactor/internal/operators/OnSubscribeFromArray$FromArrayProducer;-><init>(Lcom/tds/common/reactor/Subscriber;[Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/tds/common/reactor/Subscriber;->setProducer(Lcom/tds/common/reactor/Producer;)V

    .line 19
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .line 10
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeFromArray;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeFromArray<TT;>;"
    check-cast p1, Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/internal/operators/OnSubscribeFromArray;->call(Lcom/tds/common/reactor/Subscriber;)V

    return-void
.end method
