.class public final Lrx/internal/operators/OperatorWithLatestFromMany;
.super Ljava/lang/Object;
.source "OperatorWithLatestFromMany.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestOtherSubscriber;,
        Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;
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
        "Lrx/Observable$OnSubscribe",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final combiner:Lrx/functions/FuncN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/FuncN",
            "<TR;>;"
        }
    .end annotation
.end field

.field final main:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation
.end field

.field final others:[Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/Observable",
            "<*>;"
        }
    .end annotation
.end field

.field final othersIterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Lrx/Observable",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;[Lrx/Observable;Ljava/lang/Iterable;Lrx/functions/FuncN;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;[",
            "Lrx/Observable",
            "<*>;",
            "Ljava/lang/Iterable",
            "<",
            "Lrx/Observable",
            "<*>;>;",
            "Lrx/functions/FuncN",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFromMany;, "Lrx/internal/operators/OperatorWithLatestFromMany<TT;TR;>;"
    .local p1, "main":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p2, "others":[Lrx/Observable;, "[Lrx/Observable<*>;"
    .local p3, "othersIterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lrx/Observable<*>;>;"
    .local p4, "combiner":Lrx/functions/FuncN;, "Lrx/functions/FuncN<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lrx/internal/operators/OperatorWithLatestFromMany;->main:Lrx/Observable;

    .line 39
    iput-object p2, p0, Lrx/internal/operators/OperatorWithLatestFromMany;->others:[Lrx/Observable;

    .line 40
    iput-object p3, p0, Lrx/internal/operators/OperatorWithLatestFromMany;->othersIterable:Ljava/lang/Iterable;

    .line 41
    iput-object p4, p0, Lrx/internal/operators/OperatorWithLatestFromMany;->combiner:Lrx/functions/FuncN;

    .line 42
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFromMany;, "Lrx/internal/operators/OperatorWithLatestFromMany<TT;TR;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorWithLatestFromMany;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFromMany;, "Lrx/internal/operators/OperatorWithLatestFromMany<TT;TR;>;"
    .local p1, "t":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    new-instance v7, Lrx/observers/SerializedSubscriber;

    invoke-direct {v7, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    .line 50
    .local v7, "serial":Lrx/observers/SerializedSubscriber;, "Lrx/observers/SerializedSubscriber<TR;>;"
    const/4 v3, 0x0

    .line 52
    .local v3, "n":I
    iget-object v9, p0, Lrx/internal/operators/OperatorWithLatestFromMany;->others:[Lrx/Observable;

    if-eqz v9, :cond_21

    .line 53
    iget-object v8, p0, Lrx/internal/operators/OperatorWithLatestFromMany;->others:[Lrx/Observable;

    .line 54
    .local v8, "sources":[Lrx/Observable;, "[Lrx/Observable<*>;"
    array-length v3, v8

    .line 65
    :cond_d
    new-instance v6, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;

    iget-object v9, p0, Lrx/internal/operators/OperatorWithLatestFromMany;->combiner:Lrx/functions/FuncN;

    invoke-direct {v6, p1, v9, v3}, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;-><init>(Lrx/Subscriber;Lrx/functions/FuncN;I)V

    .line 67
    .local v6, "parent":Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;, "Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber<TT;TR;>;"
    invoke-virtual {v7, v6}, Lrx/observers/SerializedSubscriber;->add(Lrx/Subscription;)V

    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    if-ge v0, v3, :cond_5b

    .line 71
    invoke-virtual {v7}, Lrx/observers/SerializedSubscriber;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_49

    .line 83
    :goto_20
    return-void

    .line 56
    .end local v0    # "i":I
    .end local v6    # "parent":Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;, "Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber<TT;TR;>;"
    .end local v8    # "sources":[Lrx/Observable;, "[Lrx/Observable<*>;"
    :cond_21
    const/16 v9, 0x8

    new-array v8, v9, [Lrx/Observable;

    .line 57
    .restart local v8    # "sources":[Lrx/Observable;, "[Lrx/Observable<*>;"
    iget-object v9, p0, Lrx/internal/operators/OperatorWithLatestFromMany;->othersIterable:Ljava/lang/Iterable;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrx/Observable;

    .line 58
    .local v5, "o":Lrx/Observable;, "Lrx/Observable<*>;"
    array-length v9, v8

    if-ne v3, v9, :cond_43

    .line 59
    shr-int/lit8 v9, v3, 0x2

    add-int/2addr v9, v3

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "sources":[Lrx/Observable;, "[Lrx/Observable<*>;"
    check-cast v8, [Lrx/Observable;

    .line 61
    .restart local v8    # "sources":[Lrx/Observable;, "[Lrx/Observable<*>;"
    :cond_43
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "n":I
    .local v4, "n":I
    aput-object v5, v8, v3

    move v3, v4

    .line 62
    .end local v4    # "n":I
    .restart local v3    # "n":I
    goto :goto_2b

    .line 75
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "o":Lrx/Observable;, "Lrx/Observable<*>;"
    .restart local v0    # "i":I
    .restart local v6    # "parent":Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;, "Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber<TT;TR;>;"
    :cond_49
    new-instance v2, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestOtherSubscriber;

    add-int/lit8 v9, v0, 0x1

    invoke-direct {v2, v6, v9}, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestOtherSubscriber;-><init>(Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;I)V

    .line 76
    .local v2, "inner":Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestOtherSubscriber;
    invoke-virtual {v6, v2}, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->add(Lrx/Subscription;)V

    .line 78
    aget-object v5, v8, v0

    .line 79
    .restart local v5    # "o":Lrx/Observable;, "Lrx/Observable<*>;"
    invoke-virtual {v5, v2}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 82
    .end local v2    # "inner":Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestOtherSubscriber;
    .end local v5    # "o":Lrx/Observable;, "Lrx/Observable<*>;"
    :cond_5b
    iget-object v9, p0, Lrx/internal/operators/OperatorWithLatestFromMany;->main:Lrx/Observable;

    invoke-virtual {v9, v6}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_20
.end method
