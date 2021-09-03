.class final Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "PublishSubject.java"

# interfaces
.implements Lcom/tds/common/reactor/Producer;
.implements Lcom/tds/common/reactor/Subscription;
.implements Lcom/tds/common/reactor/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/subjects/PublishSubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PublishSubjectProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lcom/tds/common/reactor/Producer;",
        "Lcom/tds/common/reactor/Subscription;",
        "Lcom/tds/common/reactor/Observer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x59896c1df8e78b00L


# instance fields
.field final actual:Lcom/tds/common/reactor/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final parent:Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState<",
            "TT;>;"
        }
    .end annotation
.end field

.field produced:J


# direct methods
.method public constructor <init>(Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;Lcom/tds/common/reactor/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState<",
            "TT;>;",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 229
    .local p0, "this":Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;, "Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    .local p1, "parent":Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;, "Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState<TT;>;"
    .local p2, "actual":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 230
    iput-object p1, p0, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;->parent:Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;

    .line 231
    iput-object p2, p0, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;->actual:Lcom/tds/common/reactor/Subscriber;

    .line 232
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 5

    .line 252
    .local p0, "this":Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;, "Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    invoke-virtual {p0}, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public onCompleted()V
    .registers 5

    .line 286
    .local p0, "this":Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;, "Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    invoke-virtual {p0}, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 287
    iget-object v0, p0, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;->actual:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V

    .line 289
    :cond_f
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 279
    .local p0, "this":Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;, "Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    invoke-virtual {p0}, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 280
    iget-object v0, p0, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;->actual:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 282
    :cond_f
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 264
    .local p0, "this":Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;, "Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;->get()J

    move-result-wide v0

    .line 265
    .local v0, "r":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2a

    .line 266
    iget-wide v2, p0, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;->produced:J

    .line 267
    .local v2, "p":J
    cmp-long v4, v0, v2

    if-eqz v4, :cond_1b

    .line 268
    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;->produced:J

    .line 269
    iget-object v4, p0, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;->actual:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v4, p1}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_2a

    .line 271
    :cond_1b
    invoke-virtual {p0}, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;->unsubscribe()V

    .line 272
    iget-object v4, p0, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;->actual:Lcom/tds/common/reactor/Subscriber;

    new-instance v5, Lcom/tds/common/reactor/exceptions/MissingBackpressureException;

    const-string v6, "PublishSubject: could not emit value due to lack of requests"

    invoke-direct {v5, v6}, Lcom/tds/common/reactor/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 275
    .end local v2    # "p":J
    :cond_2a
    :goto_2a
    return-void
.end method

.method public request(J)V
    .registers 8
    .param p1, "n"    # J

    .line 236
    .local p0, "this":Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;, "Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    invoke-static {p1, p2}, Lcom/tds/common/reactor/operators/BackpressureUtils;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 238
    :goto_6
    invoke-virtual {p0}, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;->get()J

    move-result-wide v0

    .line 239
    .local v0, "r":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_11

    .line 240
    return-void

    .line 242
    :cond_11
    invoke-static {v0, v1, p1, p2}, Lcom/tds/common/reactor/operators/BackpressureUtils;->addCap(JJ)J

    move-result-wide v2

    .line 243
    .local v2, "u":J
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 244
    return-void

    .line 246
    .end local v0    # "r":J
    .end local v2    # "u":J
    :cond_1c
    goto :goto_6

    .line 248
    :cond_1d
    return-void
.end method

.method public unsubscribe()V
    .registers 5

    .line 257
    .local p0, "this":Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;, "Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    const-wide/high16 v0, -0x8000000000000000L

    invoke-virtual {p0, v0, v1}, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;->getAndSet(J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-eqz v0, :cond_f

    .line 258
    iget-object v0, p0, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;->parent:Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;

    invoke-virtual {v0, p0}, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;->remove(Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;)V

    .line 260
    :cond_f
    return-void
.end method
