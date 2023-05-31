.class final Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lcom/tds/common/reactor/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScalarAsyncOnSubscribe"
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
.field final onSchedule:Lcom/tds/common/reactor/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/functions/Func1<",
            "Lcom/tds/common/reactor/functions/Action0;",
            "Lcom/tds/common/reactor/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/tds/common/reactor/functions/Func1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/tds/common/reactor/functions/Func1<",
            "Lcom/tds/common/reactor/functions/Action0;",
            "Lcom/tds/common/reactor/Subscription;",
            ">;)V"
        }
    .end annotation

    .line 158
    .local p0, "this":Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe;, "Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    .local p2, "onSchedule":Lcom/tds/common/reactor/functions/Func1;, "Lcom/tds/common/reactor/functions/Func1<Lcom/tds/common/reactor/functions/Action0;Lcom/tds/common/reactor/Subscription;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe;->value:Ljava/lang/Object;

    .line 160
    iput-object p2, p0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe;->onSchedule:Lcom/tds/common/reactor/functions/Func1;

    .line 161
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

    .line 165
    .local p0, "this":Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe;, "Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe<TT;>;"
    .local p1, "s":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    new-instance v0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;

    iget-object v1, p0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe;->value:Ljava/lang/Object;

    iget-object v2, p0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe;->onSchedule:Lcom/tds/common/reactor/functions/Func1;

    invoke-direct {v0, p1, v1, v2}, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;-><init>(Lcom/tds/common/reactor/Subscriber;Ljava/lang/Object;Lcom/tds/common/reactor/functions/Func1;)V

    invoke-virtual {p1, v0}, Lcom/tds/common/reactor/Subscriber;->setProducer(Lcom/tds/common/reactor/Producer;)V

    .line 166
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .line 154
    .local p0, "this":Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe;, "Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe<TT;>;"
    check-cast p1, Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe;->call(Lcom/tds/common/reactor/Subscriber;)V

    return-void
.end method
