.class public final Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction;
.super Ljava/lang/Object;
.source "OperatorOnErrorResumeNextViaFunction.java"

# interfaces
.implements Lcom/tds/common/reactor/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/Observable$Operator<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final resumeFunction:Lcom/tds/common/reactor/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/functions/Func1<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lcom/tds/common/reactor/Observable<",
            "+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tds/common/reactor/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/functions/Func1<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lcom/tds/common/reactor/Observable<",
            "+TT;>;>;)V"
        }
    .end annotation

    .line 81
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction;, "Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction<TT;>;"
    .local p1, "f":Lcom/tds/common/reactor/functions/Func1;, "Lcom/tds/common/reactor/functions/Func1<-Ljava/lang/Throwable;+Lcom/tds/common/reactor/Observable<+TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction;->resumeFunction:Lcom/tds/common/reactor/functions/Func1;

    .line 83
    return-void
.end method

.method public static withException(Lcom/tds/common/reactor/Observable;)Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/common/reactor/Observable<",
            "+TT;>;)",
            "Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction<",
            "TT;>;"
        }
    .end annotation

    .line 70
    .local p0, "other":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<+TT;>;"
    new-instance v0, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction;

    new-instance v1, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$3;

    invoke-direct {v1, p0}, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$3;-><init>(Lcom/tds/common/reactor/Observable;)V

    invoke-direct {v0, v1}, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction;-><init>(Lcom/tds/common/reactor/functions/Func1;)V

    return-object v0
.end method

.method public static withOther(Lcom/tds/common/reactor/Observable;)Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/common/reactor/Observable<",
            "+TT;>;)",
            "Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction<",
            "TT;>;"
        }
    .end annotation

    .line 61
    .local p0, "other":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<+TT;>;"
    new-instance v0, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction;

    new-instance v1, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$2;

    invoke-direct {v1, p0}, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$2;-><init>(Lcom/tds/common/reactor/Observable;)V

    invoke-direct {v0, v1}, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction;-><init>(Lcom/tds/common/reactor/functions/Func1;)V

    return-object v0
.end method

.method public static withSingle(Lcom/tds/common/reactor/functions/Func1;)Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/common/reactor/functions/Func1<",
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction<",
            "TT;>;"
        }
    .end annotation

    .line 52
    .local p0, "resumeFunction":Lcom/tds/common/reactor/functions/Func1;, "Lcom/tds/common/reactor/functions/Func1<-Ljava/lang/Throwable;+TT;>;"
    new-instance v0, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction;

    new-instance v1, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$1;

    invoke-direct {v1, p0}, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$1;-><init>(Lcom/tds/common/reactor/functions/Func1;)V

    invoke-direct {v0, v1}, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction;-><init>(Lcom/tds/common/reactor/functions/Func1;)V

    return-object v0
.end method


# virtual methods
.method public call(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscriber;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;)",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 87
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction;, "Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction<TT;>;"
    .local p1, "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    new-instance v0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;

    invoke-direct {v0}, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;-><init>()V

    .line 89
    .local v0, "pa":Lcom/tds/common/reactor/internal/producers/ProducerArbiter;
    new-instance v1, Lcom/tds/common/reactor/subscriptions/SerialSubscription;

    invoke-direct {v1}, Lcom/tds/common/reactor/subscriptions/SerialSubscription;-><init>()V

    .line 91
    .local v1, "serial":Lcom/tds/common/reactor/subscriptions/SerialSubscription;
    new-instance v2, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;-><init>(Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction;Lcom/tds/common/reactor/Subscriber;Lcom/tds/common/reactor/internal/producers/ProducerArbiter;Lcom/tds/common/reactor/subscriptions/SerialSubscription;)V

    .line 165
    .local v2, "parent":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<TT;>;"
    invoke-virtual {v1, v2}, Lcom/tds/common/reactor/subscriptions/SerialSubscription;->set(Lcom/tds/common/reactor/Subscription;)V

    .line 167
    invoke-virtual {p1, v1}, Lcom/tds/common/reactor/Subscriber;->add(Lcom/tds/common/reactor/Subscription;)V

    .line 168
    invoke-virtual {p1, v0}, Lcom/tds/common/reactor/Subscriber;->setProducer(Lcom/tds/common/reactor/Producer;)V

    .line 170
    return-object v2
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 47
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction;, "Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction<TT;>;"
    check-cast p1, Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction;->call(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscriber;

    move-result-object p1

    return-object p1
.end method
