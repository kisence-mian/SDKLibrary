.class Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$3;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lcom/tds/common/reactor/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;->scalarFlatMap(Lcom/tds/common/reactor/functions/Func1;)Lcom/tds/common/reactor/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/Observable$OnSubscribe<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;

.field final synthetic val$func:Lcom/tds/common/reactor/functions/Func1;


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;Lcom/tds/common/reactor/functions/Func1;)V
    .registers 3
    .param p1, "this$0"    # Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;

    .line 234
    .local p0, "this":Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$3;, "Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$3;"
    iput-object p1, p0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$3;->this$0:Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;

    iput-object p2, p0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$3;->val$func:Lcom/tds/common/reactor/functions/Func1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 237
    .local p0, "this":Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$3;, "Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$3;"
    .local p1, "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TR;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$3;->val$func:Lcom/tds/common/reactor/functions/Func1;

    iget-object v1, p0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$3;->this$0:Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;

    iget-object v1, v1, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;->t:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/tds/common/reactor/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/reactor/Observable;

    .line 238
    .local v0, "o":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<+TR;>;"
    instance-of v1, v0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;

    if-eqz v1, :cond_1d

    .line 239
    move-object v1, v0

    check-cast v1, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;

    iget-object v1, v1, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;->t:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;->createProducer(Lcom/tds/common/reactor/Subscriber;Ljava/lang/Object;)Lcom/tds/common/reactor/Producer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tds/common/reactor/Subscriber;->setProducer(Lcom/tds/common/reactor/Producer;)V

    goto :goto_24

    .line 241
    :cond_1d
    invoke-static {p1}, Lcom/tds/common/reactor/observers/Subscribers;->wrap(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscriber;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/Observable;->unsafeSubscribe(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscription;

    .line 243
    :goto_24
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .line 234
    .local p0, "this":Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$3;, "Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$3;"
    check-cast p1, Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$3;->call(Lcom/tds/common/reactor/Subscriber;)V

    return-void
.end method
