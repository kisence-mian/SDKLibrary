.class final Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "PublishSubject.java"

# interfaces
.implements Lcom/tds/common/reactor/Observable$OnSubscribe;
.implements Lcom/tds/common/reactor/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/subjects/PublishSubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PublishSubjectState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "[",
        "Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer<",
        "TT;>;>;",
        "Lcom/tds/common/reactor/Observable$OnSubscribe<",
        "TT;>;",
        "Lcom/tds/common/reactor/Observer<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;

.field static final TERMINATED:[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;

.field private static final serialVersionUID:J = -0x690a478d773d9c84L


# instance fields
.field error:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 93
    const/4 v0, 0x0

    new-array v1, v0, [Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;

    sput-object v1, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;->EMPTY:[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;

    .line 95
    new-array v0, v0, [Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;

    sput-object v0, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;->TERMINATED:[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 100
    .local p0, "this":Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;, "Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 101
    sget-object v0, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;->EMPTY:[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;

    invoke-virtual {p0, v0}, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;->lazySet(Ljava/lang/Object;)V

    .line 102
    return-void
.end method


# virtual methods
.method add(Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer<",
            "TT;>;)Z"
        }
    .end annotation

    .line 127
    .local p0, "this":Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;, "Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState<TT;>;"
    .local p1, "inner":Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;, "Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    :goto_0
    invoke-virtual {p0}, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;

    .line 128
    .local v0, "curr":[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;, "[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    sget-object v1, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;->TERMINATED:[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_c

    .line 129
    return v2

    .line 132
    :cond_c
    array-length v1, v0

    .line 135
    .local v1, "n":I
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;

    .line 136
    .local v3, "next":[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;, "[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    aput-object p1, v3, v1

    .line 139
    invoke-virtual {p0, v0, v3}, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 140
    const/4 v2, 0x1

    return v2

    .line 142
    .end local v0    # "curr":[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;, "[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    .end local v1    # "n":I
    .end local v3    # "next":[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;, "[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    :cond_1e
    goto :goto_0
.end method

.method public call(Lcom/tds/common/reactor/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 106
    .local p0, "this":Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;, "Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState<TT;>;"
    .local p1, "t":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    new-instance v0, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;

    invoke-direct {v0, p0, p1}, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;-><init>(Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;Lcom/tds/common/reactor/Subscriber;)V

    .line 107
    .local v0, "pp":Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;, "Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    invoke-virtual {p1, v0}, Lcom/tds/common/reactor/Subscriber;->add(Lcom/tds/common/reactor/Subscription;)V

    .line 108
    invoke-virtual {p1, v0}, Lcom/tds/common/reactor/Subscriber;->setProducer(Lcom/tds/common/reactor/Producer;)V

    .line 110
    invoke-virtual {p0, v0}, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;->add(Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 111
    invoke-virtual {v0}, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 112
    invoke-virtual {p0, v0}, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;->remove(Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;)V

    goto :goto_26

    .line 115
    :cond_1b
    iget-object v1, p0, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;->error:Ljava/lang/Throwable;

    .line 116
    .local v1, "ex":Ljava/lang/Throwable;
    if-eqz v1, :cond_23

    .line 117
    invoke-virtual {p1, v1}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_26

    .line 119
    :cond_23
    invoke-virtual {p1}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V

    .line 122
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_26
    :goto_26
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .line 85
    .local p0, "this":Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;, "Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState<TT;>;"
    check-cast p1, Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;->call(Lcom/tds/common/reactor/Subscriber;)V

    return-void
.end method

.method public onCompleted()V
    .registers 5

    .line 210
    .local p0, "this":Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;, "Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState<TT;>;"
    sget-object v0, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;->TERMINATED:[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;

    invoke-virtual {p0, v0}, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 211
    .local v3, "pp":Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;, "Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    invoke-virtual {v3}, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;->onCompleted()V

    .line 210
    .end local v3    # "pp":Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;, "Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 213
    :cond_14
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 10
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 191
    .local p0, "this":Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;, "Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState<TT;>;"
    iput-object p1, p0, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;->error:Ljava/lang/Throwable;

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    sget-object v1, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;->TERMINATED:[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;

    invoke-virtual {p0, v1}, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_25

    aget-object v4, v1, v3

    .line 195
    .local v4, "pp":Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;, "Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    :try_start_11
    invoke-virtual {v4, p1}, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;->onError(Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    .line 201
    goto :goto_22

    .line 196
    :catchall_15
    move-exception v5

    .line 197
    .local v5, "ex":Ljava/lang/Throwable;
    if-nez v0, :cond_1f

    .line 198
    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v6

    .line 200
    :cond_1f
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    .end local v4    # "pp":Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;, "Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    .end local v5    # "ex":Ljava/lang/Throwable;
    :goto_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 204
    :cond_25
    invoke-static {v0}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwIfAny(Ljava/util/List;)V

    .line 205
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 183
    .local p0, "this":Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;, "Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 184
    .local v3, "pp":Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;, "Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    invoke-virtual {v3, p1}, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;->onNext(Ljava/lang/Object;)V

    .line 183
    .end local v3    # "pp":Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;, "Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 186
    :cond_12
    return-void
.end method

.method remove(Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer<",
            "TT;>;)V"
        }
    .end annotation

    .line 148
    .local p0, "this":Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;, "Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState<TT;>;"
    .local p1, "inner":Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;, "Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    :goto_0
    invoke-virtual {p0}, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;

    .line 149
    .local v0, "curr":[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;, "[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    sget-object v1, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;->TERMINATED:[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;

    if-eq v0, v1, :cond_3f

    sget-object v1, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;->EMPTY:[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;

    if-ne v0, v1, :cond_f

    goto :goto_3f

    .line 153
    :cond_f
    array-length v1, v0

    .line 154
    .local v1, "n":I
    const/4 v2, -0x1

    .line 155
    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    if-ge v3, v1, :cond_1d

    .line 156
    aget-object v4, v0, v3

    if-ne v4, p1, :cond_1a

    .line 157
    move v2, v3

    .line 158
    goto :goto_1d

    .line 155
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 162
    .end local v3    # "i":I
    :cond_1d
    :goto_1d
    if-gez v2, :cond_20

    .line 163
    return-void

    .line 167
    :cond_20
    const/4 v3, 0x1

    if-ne v1, v3, :cond_26

    .line 168
    sget-object v3, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;->EMPTY:[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;

    .local v3, "next":[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;, "[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    goto :goto_37

    .line 170
    .end local v3    # "next":[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;, "[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    :cond_26
    add-int/lit8 v4, v1, -0x1

    new-array v4, v4, [Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;

    .line 171
    .local v4, "next":[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;, "[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    add-int/lit8 v5, v2, 0x1

    sub-int v6, v1, v2

    sub-int/2addr v6, v3

    invoke-static {v0, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v4

    .line 175
    .end local v4    # "next":[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;, "[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    .restart local v3    # "next":[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;, "[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    :goto_37
    invoke-virtual {p0, v0, v3}, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 176
    return-void

    .line 178
    .end local v0    # "curr":[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;, "[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    .end local v1    # "n":I
    .end local v2    # "j":I
    .end local v3    # "next":[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;, "[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    :cond_3e
    goto :goto_0

    .line 150
    .restart local v0    # "curr":[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;, "[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    :cond_3f
    :goto_3f
    return-void
.end method
