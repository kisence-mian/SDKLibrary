.class public final Lrx/subjects/ReplaySubject;
.super Lrx/subjects/Subject;
.source "ReplaySubject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subjects/ReplaySubject$ReplayProducer;,
        Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;,
        Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;,
        Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;,
        Lrx/subjects/ReplaySubject$ReplayBuffer;,
        Lrx/subjects/ReplaySubject$ReplayState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/subjects/Subject",
        "<TT;TT;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_ARRAY:[Ljava/lang/Object;


# instance fields
.field final state:Lrx/subjects/ReplaySubject$ReplayState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$ReplayState",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lrx/subjects/ReplaySubject;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lrx/subjects/ReplaySubject$ReplayState;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$ReplayState",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    .local p1, "state":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    invoke-direct {p0, p1}, Lrx/subjects/Subject;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 238
    iput-object p1, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    .line 239
    return-void
.end method

.method public static create()Lrx/subjects/ReplaySubject;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/subjects/ReplaySubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 74
    const/16 v0, 0x10

    invoke-static {v0}, Lrx/subjects/ReplaySubject;->create(I)Lrx/subjects/ReplaySubject;

    move-result-object v0

    return-object v0
.end method

.method public static create(I)Lrx/subjects/ReplaySubject;
    .registers 6
    .param p0, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lrx/subjects/ReplaySubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 93
    if-gtz p0, :cond_1b

    .line 94
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "capacity > 0 required but it was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    :cond_1b
    new-instance v0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;

    invoke-direct {v0, p0}, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;-><init>(I)V

    .line 97
    .local v0, "buffer":Lrx/subjects/ReplaySubject$ReplayBuffer;, "Lrx/subjects/ReplaySubject$ReplayBuffer<TT;>;"
    new-instance v1, Lrx/subjects/ReplaySubject$ReplayState;

    invoke-direct {v1, v0}, Lrx/subjects/ReplaySubject$ReplayState;-><init>(Lrx/subjects/ReplaySubject$ReplayBuffer;)V

    .line 98
    .local v1, "state":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    new-instance v2, Lrx/subjects/ReplaySubject;

    invoke-direct {v2, v1}, Lrx/subjects/ReplaySubject;-><init>(Lrx/subjects/ReplaySubject$ReplayState;)V

    return-object v2
.end method

.method static createUnbounded()Lrx/subjects/ReplaySubject;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/subjects/ReplaySubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;

    const v2, 0x7fffffff

    invoke-direct {v0, v2}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;-><init>(I)V

    .line 115
    .local v0, "buffer":Lrx/subjects/ReplaySubject$ReplayBuffer;, "Lrx/subjects/ReplaySubject$ReplayBuffer<TT;>;"
    new-instance v1, Lrx/subjects/ReplaySubject$ReplayState;

    invoke-direct {v1, v0}, Lrx/subjects/ReplaySubject$ReplayState;-><init>(Lrx/subjects/ReplaySubject$ReplayBuffer;)V

    .line 116
    .local v1, "state":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    new-instance v2, Lrx/subjects/ReplaySubject;

    invoke-direct {v2, v1}, Lrx/subjects/ReplaySubject;-><init>(Lrx/subjects/ReplaySubject$ReplayState;)V

    return-object v2
.end method

.method static createUnboundedTime()Lrx/subjects/ReplaySubject;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/subjects/ReplaySubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;

    const v2, 0x7fffffff

    const-wide v4, 0x7fffffffffffffffL

    invoke-static {}, Lrx/schedulers/Schedulers;->immediate()Lrx/Scheduler;

    move-result-object v3

    invoke-direct {v0, v2, v4, v5, v3}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;-><init>(IJLrx/Scheduler;)V

    .line 133
    .local v0, "buffer":Lrx/subjects/ReplaySubject$ReplayBuffer;, "Lrx/subjects/ReplaySubject$ReplayBuffer<TT;>;"
    new-instance v1, Lrx/subjects/ReplaySubject$ReplayState;

    invoke-direct {v1, v0}, Lrx/subjects/ReplaySubject$ReplayState;-><init>(Lrx/subjects/ReplaySubject$ReplayBuffer;)V

    .line 134
    .local v1, "state":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    new-instance v2, Lrx/subjects/ReplaySubject;

    invoke-direct {v2, v1}, Lrx/subjects/ReplaySubject;-><init>(Lrx/subjects/ReplaySubject$ReplayState;)V

    return-object v2
.end method

.method public static createWithSize(I)Lrx/subjects/ReplaySubject;
    .registers 4
    .param p0, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lrx/subjects/ReplaySubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;

    invoke-direct {v0, p0}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;-><init>(I)V

    .line 158
    .local v0, "buffer":Lrx/subjects/ReplaySubject$ReplayBuffer;, "Lrx/subjects/ReplaySubject$ReplayBuffer<TT;>;"
    new-instance v1, Lrx/subjects/ReplaySubject$ReplayState;

    invoke-direct {v1, v0}, Lrx/subjects/ReplaySubject$ReplayState;-><init>(Lrx/subjects/ReplaySubject$ReplayBuffer;)V

    .line 159
    .local v1, "state":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    new-instance v2, Lrx/subjects/ReplaySubject;

    invoke-direct {v2, v1}, Lrx/subjects/ReplaySubject;-><init>(Lrx/subjects/ReplaySubject$ReplayState;)V

    return-object v2
.end method

.method public static createWithTime(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/subjects/ReplaySubject;
    .registers 6
    .param p0, "time"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/subjects/ReplaySubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 194
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0, p3}, Lrx/subjects/ReplaySubject;->createWithTimeAndSize(JLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)Lrx/subjects/ReplaySubject;

    move-result-object v0

    return-object v0
.end method

.method public static createWithTimeAndSize(JLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)Lrx/subjects/ReplaySubject;
    .registers 9
    .param p0, "time"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "size"    # I
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "I",
            "Lrx/Scheduler;",
            ")",
            "Lrx/subjects/ReplaySubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 231
    new-instance v0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;

    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-direct {v0, p3, v2, v3, p4}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;-><init>(IJLrx/Scheduler;)V

    .line 232
    .local v0, "buffer":Lrx/subjects/ReplaySubject$ReplayBuffer;, "Lrx/subjects/ReplaySubject$ReplayBuffer<TT;>;"
    new-instance v1, Lrx/subjects/ReplaySubject$ReplayState;

    invoke-direct {v1, v0}, Lrx/subjects/ReplaySubject$ReplayState;-><init>(Lrx/subjects/ReplaySubject$ReplayBuffer;)V

    .line 233
    .local v1, "state":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    new-instance v2, Lrx/subjects/ReplaySubject;

    invoke-direct {v2, v1}, Lrx/subjects/ReplaySubject;-><init>(Lrx/subjects/ReplaySubject$ReplayState;)V

    return-object v2
.end method


# virtual methods
.method public getThrowable()Ljava/lang/Throwable;
    .registers 2
    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 290
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplayState;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 291
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v0}, Lrx/subjects/ReplaySubject$ReplayBuffer;->error()Ljava/lang/Throwable;

    move-result-object v0

    .line 293
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 344
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v0}, Lrx/subjects/ReplaySubject$ReplayBuffer;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValues()[Ljava/lang/Object;
    .registers 3
    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 335
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    sget-object v1, Lrx/subjects/ReplaySubject;->EMPTY_ARRAY:[Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lrx/subjects/ReplaySubject;->getValues([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 336
    .local v0, "r":[Ljava/lang/Object;, "[TT;"
    sget-object v1, Lrx/subjects/ReplaySubject;->EMPTY_ARRAY:[Ljava/lang/Object;

    if-ne v0, v1, :cond_f

    .line 337
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/Object;

    .line 339
    .end local v0    # "r":[Ljava/lang/Object;, "[TT;"
    :cond_f
    return-object v0
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 322
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v0, p1}, Lrx/subjects/ReplaySubject$ReplayBuffer;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasAnyValue()Z
    .registers 2
    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 308
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v0}, Lrx/subjects/ReplaySubject$ReplayBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hasCompleted()Z
    .registers 2
    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 281
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplayState;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v0}, Lrx/subjects/ReplaySubject$ReplayBuffer;->error()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public hasObservers()Z
    .registers 2

    .prologue
    .line 264
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplayState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/subjects/ReplaySubject$ReplayProducer;

    array-length v0, v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public hasThrowable()Z
    .registers 2
    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 273
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplayState;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v0}, Lrx/subjects/ReplaySubject$ReplayBuffer;->error()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public hasValue()Z
    .registers 2
    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 312
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject;->hasAnyValue()Z

    move-result v0

    return v0
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 253
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplayState;->onCompleted()V

    .line 254
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 248
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-virtual {v0, p1}, Lrx/subjects/ReplaySubject$ReplayState;->onError(Ljava/lang/Throwable;)V

    .line 249
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-virtual {v0, p1}, Lrx/subjects/ReplaySubject$ReplayState;->onNext(Ljava/lang/Object;)V

    .line 244
    return-void
.end method

.method public size()I
    .registers 2
    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 301
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v0}, Lrx/subjects/ReplaySubject$ReplayBuffer;->size()I

    move-result v0

    return v0
.end method

.method subscriberCount()I
    .registers 2

    .prologue
    .line 259
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplayState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/subjects/ReplaySubject$ReplayProducer;

    array-length v0, v0

    return v0
.end method
