.class public final Lcom/tds/common/reactor/internal/operators/OperatorObserveOn;
.super Ljava/lang/Object;
.source "OperatorObserveOn.java"

# interfaces
.implements Lcom/tds/common/reactor/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;
    }
.end annotation

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
.field private final bufferSize:I

.field private final delayError:Z

.field private final scheduler:Lcom/tds/common/reactor/schedulers/Scheduler;


# direct methods
.method public constructor <init>(Lcom/tds/common/reactor/schedulers/Scheduler;Z)V
    .registers 4
    .param p1, "scheduler"    # Lcom/tds/common/reactor/schedulers/Scheduler;
    .param p2, "delayError"    # Z

    .line 52
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorObserveOn;, "Lcom/tds/common/reactor/internal/operators/OperatorObserveOn<TT;>;"
    const/16 v0, 0x80

    invoke-direct {p0, p1, p2, v0}, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn;-><init>(Lcom/tds/common/reactor/schedulers/Scheduler;ZI)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/tds/common/reactor/schedulers/Scheduler;ZI)V
    .registers 5
    .param p1, "scheduler"    # Lcom/tds/common/reactor/schedulers/Scheduler;
    .param p2, "delayError"    # Z
    .param p3, "bufferSize"    # I

    .line 60
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorObserveOn;, "Lcom/tds/common/reactor/internal/operators/OperatorObserveOn<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn;->scheduler:Lcom/tds/common/reactor/schedulers/Scheduler;

    .line 62
    iput-boolean p2, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn;->delayError:Z

    .line 63
    if-lez p3, :cond_b

    move v0, p3

    goto :goto_d

    :cond_b
    const/16 v0, 0x80

    :goto_d
    iput v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn;->bufferSize:I

    .line 64
    return-void
.end method


# virtual methods
.method public call(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscriber;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;)",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 69
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorObserveOn;, "Lcom/tds/common/reactor/internal/operators/OperatorObserveOn<TT;>;"
    .local p1, "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    new-instance v0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;

    iget-object v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn;->scheduler:Lcom/tds/common/reactor/schedulers/Scheduler;

    iget-boolean v2, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn;->delayError:Z

    iget v3, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn;->bufferSize:I

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;-><init>(Lcom/tds/common/reactor/schedulers/Scheduler;Lcom/tds/common/reactor/Subscriber;ZI)V

    .line 70
    .local v0, "parent":Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    invoke-virtual {v0}, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->init()V

    .line 71
    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 41
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorObserveOn;, "Lcom/tds/common/reactor/internal/operators/OperatorObserveOn<TT;>;"
    check-cast p1, Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn;->call(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscriber;

    move-result-object p1

    return-object p1
.end method
