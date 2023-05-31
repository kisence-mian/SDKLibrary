.class public final Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
.super Ljava/lang/Object;
.source "SubjectSubscriptionManager.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/SubjectSubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "SubjectObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field volatile caughtUp:Z

.field emitting:Z

.field fastPath:Z

.field first:Z

.field private volatile index:Ljava/lang/Object;

.field queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
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
    .line 220
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->first:Z

    .line 221
    iput-object p1, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->actual:Lrx/Subscriber;

    .line 222
    return-void
.end method


# virtual methods
.method accept(Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V
    .registers 4
    .param p1, "n"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .local p2, "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    if-eqz p1, :cond_7

    .line 320
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->actual:Lrx/Subscriber;

    invoke-virtual {p2, v0, p1}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    .line 322
    :cond_7
    return-void
.end method

.method emitFirst(Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V
    .registers 5
    .param p1, "n"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .local p2, "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    const/4 v0, 0x0

    .line 264
    monitor-enter p0

    .line 265
    :try_start_2
    iget-boolean v1, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->first:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    if-eqz v1, :cond_c

    .line 266
    :cond_a
    monitor-exit p0

    .line 274
    :cond_b
    :goto_b
    return-void

    .line 268
    :cond_c
    const/4 v1, 0x0

    iput-boolean v1, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->first:Z

    .line 269
    if-eqz p1, :cond_12

    const/4 v0, 0x1

    :cond_12
    iput-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    .line 270
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_1c

    .line 271
    if-eqz p1, :cond_b

    .line 272
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitLoop(Ljava/util/List;Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V

    goto :goto_b

    .line 270
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method emitLoop(Ljava/util/List;Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V
    .registers 10
    .param p2, "current"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 282
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .local p1, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local p3, "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    const/4 v2, 0x1

    .line 283
    .local v2, "once":Z
    const/4 v3, 0x0

    .line 286
    .local v3, "skipFinal":Z
    :goto_2
    if-eqz p1, :cond_1f

    .line 287
    :try_start_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 288
    .local v1, "n":Ljava/lang/Object;
    invoke-virtual {p0, v1, p3}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->accept(Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_16

    goto :goto_8

    .line 306
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "n":Ljava/lang/Object;
    :catchall_16
    move-exception v4

    if-nez v3, :cond_1e

    .line 307
    monitor-enter p0

    .line 308
    const/4 v5, 0x0

    :try_start_1b
    iput-boolean v5, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    .line 309
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_42

    :cond_1e
    throw v4

    .line 291
    :cond_1f
    if-eqz v2, :cond_25

    .line 292
    const/4 v2, 0x0

    .line 293
    :try_start_22
    invoke-virtual {p0, p2, p3}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->accept(Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V

    .line 295
    :cond_25
    monitor-enter p0
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_16

    .line 296
    :try_start_26
    iget-object p1, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->queue:Ljava/util/List;

    .line 297
    const/4 v4, 0x0

    iput-object v4, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->queue:Ljava/util/List;

    .line 298
    if-nez p1, :cond_3a

    .line 299
    const/4 v4, 0x0

    iput-boolean v4, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    .line 300
    const/4 v3, 0x1

    .line 301
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_3c

    .line 306
    if-nez v3, :cond_39

    .line 307
    monitor-enter p0

    .line 308
    const/4 v4, 0x0

    :try_start_36
    iput-boolean v4, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    .line 309
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3f

    .line 312
    :cond_39
    return-void

    .line 303
    :cond_3a
    :try_start_3a
    monitor-exit p0

    goto :goto_2

    :catchall_3c
    move-exception v4

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_3c

    :try_start_3e
    throw v4
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_16

    .line 309
    :catchall_3f
    move-exception v4

    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v4

    :catchall_42
    move-exception v4

    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v4
.end method

.method emitNext(Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V
    .registers 4
    .param p1, "n"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .local p2, "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    iget-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->fastPath:Z

    if-nez v0, :cond_22

    .line 243
    monitor-enter p0

    .line 244
    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->first:Z

    .line 245
    iget-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    if-eqz v0, :cond_1e

    .line 246
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->queue:Ljava/util/List;

    if-nez v0, :cond_17

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->queue:Ljava/util/List;

    .line 249
    :cond_17
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->queue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    monitor-exit p0

    .line 256
    :goto_1d
    return-void

    .line 252
    :cond_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_28

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->fastPath:Z

    .line 255
    :cond_22
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->actual:Lrx/Subscriber;

    invoke-virtual {p2, v0, p1}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    goto :goto_1d

    .line 252
    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method getActual()Lrx/Observer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observer",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 326
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->actual:Lrx/Subscriber;

    return-object v0
.end method

.method public index()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">()TI;"
        }
    .end annotation

    .prologue
    .line 334
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->index:Ljava/lang/Object;

    return-object v0
.end method

.method public index(Ljava/lang/Object;)V
    .registers 2
    .param p1, "newIndex"    # Ljava/lang/Object;

    .prologue
    .line 341
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    iput-object p1, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->index:Ljava/lang/Object;

    .line 342
    return-void
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 233
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->actual:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 234
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 229
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 230
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
    .line 225
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 226
    return-void
.end method
