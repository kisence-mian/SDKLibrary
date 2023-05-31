.class final Lrx/internal/operators/OnSubscribeTakeLastOne$TakeLastOneSubscriber;
.super Lrx/internal/operators/DeferredScalarSubscriber;
.source "OnSubscribeTakeLastOne.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeTakeLastOne;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TakeLastOneSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/DeferredScalarSubscriber",
        "<TT;TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OnSubscribeTakeLastOne$TakeLastOneSubscriber;->EMPTY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/OnSubscribeTakeLastOne$TakeLastOneSubscriber;, "Lrx/internal/operators/OnSubscribeTakeLastOne$TakeLastOneSubscriber<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/DeferredScalarSubscriber;-><init>(Lrx/Subscriber;)V

    .line 42
    sget-object v0, Lrx/internal/operators/OnSubscribeTakeLastOne$TakeLastOneSubscriber;->EMPTY:Ljava/lang/Object;

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeTakeLastOne$TakeLastOneSubscriber;->value:Ljava/lang/Object;

    .line 43
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 53
    .local p0, "this":Lrx/internal/operators/OnSubscribeTakeLastOne$TakeLastOneSubscriber;, "Lrx/internal/operators/OnSubscribeTakeLastOne$TakeLastOneSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeTakeLastOne$TakeLastOneSubscriber;->value:Ljava/lang/Object;

    .line 54
    .local v0, "o":Ljava/lang/Object;
    sget-object v1, Lrx/internal/operators/OnSubscribeTakeLastOne$TakeLastOneSubscriber;->EMPTY:Ljava/lang/Object;

    if-ne v0, v1, :cond_a

    .line 55
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeTakeLastOne$TakeLastOneSubscriber;->complete()V

    .line 59
    :goto_9
    return-void

    .line 57
    :cond_a
    invoke-virtual {p0, v0}, Lrx/internal/operators/OnSubscribeTakeLastOne$TakeLastOneSubscriber;->complete(Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/operators/OnSubscribeTakeLastOne$TakeLastOneSubscriber;, "Lrx/internal/operators/OnSubscribeTakeLastOne$TakeLastOneSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeTakeLastOne$TakeLastOneSubscriber;->value:Ljava/lang/Object;

    .line 48
    return-void
.end method
