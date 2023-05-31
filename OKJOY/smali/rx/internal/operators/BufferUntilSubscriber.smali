.class public final Lrx/internal/operators/BufferUntilSubscriber;
.super Lrx/subjects/Subject;
.source "BufferUntilSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;,
        Lrx/internal/operators/BufferUntilSubscriber$State;
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
.field static final EMPTY_OBSERVER:Lrx/Observer;


# instance fields
.field private forward:Z

.field final state:Lrx/internal/operators/BufferUntilSubscriber$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/BufferUntilSubscriber$State",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 193
    new-instance v0, Lrx/internal/operators/BufferUntilSubscriber$1;

    invoke-direct {v0}, Lrx/internal/operators/BufferUntilSubscriber$1;-><init>()V

    sput-object v0, Lrx/internal/operators/BufferUntilSubscriber;->EMPTY_OBSERVER:Lrx/Observer;

    return-void
.end method

.method private constructor <init>(Lrx/internal/operators/BufferUntilSubscriber$State;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/BufferUntilSubscriber$State",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lrx/internal/operators/BufferUntilSubscriber;, "Lrx/internal/operators/BufferUntilSubscriber<TT;>;"
    .local p1, "state":Lrx/internal/operators/BufferUntilSubscriber$State;, "Lrx/internal/operators/BufferUntilSubscriber$State<TT;>;"
    new-instance v0, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;

    invoke-direct {v0, p1}, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;-><init>(Lrx/internal/operators/BufferUntilSubscriber$State;)V

    invoke-direct {p0, v0}, Lrx/subjects/Subject;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 132
    iput-object p1, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    .line 133
    return-void
.end method

.method public static create()Lrx/internal/operators/BufferUntilSubscriber;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/BufferUntilSubscriber",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lrx/internal/operators/BufferUntilSubscriber$State;

    invoke-direct {v0}, Lrx/internal/operators/BufferUntilSubscriber$State;-><init>()V

    .line 61
    .local v0, "state":Lrx/internal/operators/BufferUntilSubscriber$State;, "Lrx/internal/operators/BufferUntilSubscriber$State<TT;>;"
    new-instance v1, Lrx/internal/operators/BufferUntilSubscriber;

    invoke-direct {v1, v0}, Lrx/internal/operators/BufferUntilSubscriber;-><init>(Lrx/internal/operators/BufferUntilSubscriber$State;)V

    return-object v1
.end method

.method private emit(Ljava/lang/Object;)V
    .registers 6
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    .line 136
    .local p0, "this":Lrx/internal/operators/BufferUntilSubscriber;, "Lrx/internal/operators/BufferUntilSubscriber<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v2, v1, Lrx/internal/operators/BufferUntilSubscriber$State;->guard:Ljava/lang/Object;

    monitor-enter v2

    .line 137
    :try_start_5
    iget-object v1, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v1, v1, Lrx/internal/operators/BufferUntilSubscriber$State;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v1, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    invoke-virtual {v1}, Lrx/internal/operators/BufferUntilSubscriber$State;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-boolean v1, v1, Lrx/internal/operators/BufferUntilSubscriber$State;->emitting:Z

    if-nez v1, :cond_22

    .line 141
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/BufferUntilSubscriber;->forward:Z

    .line 142
    iget-object v1, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lrx/internal/operators/BufferUntilSubscriber$State;->emitting:Z

    .line 144
    :cond_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_41

    .line 145
    iget-boolean v1, p0, Lrx/internal/operators/BufferUntilSubscriber;->forward:Z

    if-eqz v1, :cond_44

    .line 147
    :goto_27
    iget-object v1, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v1, v1, Lrx/internal/operators/BufferUntilSubscriber$State;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_44

    .line 148
    iget-object v1, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v2, v1, Lrx/internal/operators/BufferUntilSubscriber$State;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v1, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    invoke-virtual {v1}, Lrx/internal/operators/BufferUntilSubscriber$State;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observer;

    invoke-virtual {v2, v1, v0}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    goto :goto_27

    .line 144
    .end local v0    # "o":Ljava/lang/Object;
    :catchall_41
    move-exception v1

    :try_start_42
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v1

    .line 153
    :cond_44
    return-void
.end method


# virtual methods
.method public hasObservers()Z
    .registers 3

    .prologue
    .line 187
    .local p0, "this":Lrx/internal/operators/BufferUntilSubscriber;, "Lrx/internal/operators/BufferUntilSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v1, v0, Lrx/internal/operators/BufferUntilSubscriber$State;->guard:Ljava/lang/Object;

    monitor-enter v1

    .line 188
    :try_start_5
    iget-object v0, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    invoke-virtual {v0}, Lrx/internal/operators/BufferUntilSubscriber$State;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_e
    monitor-exit v1

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    .line 189
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 157
    .local p0, "this":Lrx/internal/operators/BufferUntilSubscriber;, "Lrx/internal/operators/BufferUntilSubscriber<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/BufferUntilSubscriber;->forward:Z

    if-eqz v0, :cond_10

    .line 158
    iget-object v0, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    invoke-virtual {v0}, Lrx/internal/operators/BufferUntilSubscriber$State;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observer;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    .line 163
    :goto_f
    return-void

    .line 161
    :cond_10
    iget-object v0, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v0, v0, Lrx/internal/operators/BufferUntilSubscriber$State;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/internal/operators/BufferUntilSubscriber;->emit(Ljava/lang/Object;)V

    goto :goto_f
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 167
    .local p0, "this":Lrx/internal/operators/BufferUntilSubscriber;, "Lrx/internal/operators/BufferUntilSubscriber<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/BufferUntilSubscriber;->forward:Z

    if-eqz v0, :cond_10

    .line 168
    iget-object v0, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    invoke-virtual {v0}, Lrx/internal/operators/BufferUntilSubscriber$State;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observer;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 173
    :goto_f
    return-void

    .line 171
    :cond_10
    iget-object v0, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v0, v0, Lrx/internal/operators/BufferUntilSubscriber$State;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/internal/operators/BufferUntilSubscriber;->emit(Ljava/lang/Object;)V

    goto :goto_f
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lrx/internal/operators/BufferUntilSubscriber;, "Lrx/internal/operators/BufferUntilSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/BufferUntilSubscriber;->forward:Z

    if-eqz v0, :cond_10

    .line 178
    iget-object v0, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    invoke-virtual {v0}, Lrx/internal/operators/BufferUntilSubscriber$State;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observer;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 183
    :goto_f
    return-void

    .line 181
    :cond_10
    iget-object v0, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v0, v0, Lrx/internal/operators/BufferUntilSubscriber$State;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/internal/operators/BufferUntilSubscriber;->emit(Ljava/lang/Object;)V

    goto :goto_f
.end method
