.class public Lrx/observers/SerializedObserver;
.super Ljava/lang/Object;
.source "SerializedObserver.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/observers/SerializedObserver$FastList;
    }
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
.field private final actual:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private emitting:Z

.field private final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field private queue:Lrx/observers/SerializedObserver$FastList;

.field private volatile terminated:Z


# direct methods
.method public constructor <init>(Lrx/Observer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lrx/observers/SerializedObserver;, "Lrx/observers/SerializedObserver<TT;>;"
    .local p1, "s":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/observers/SerializedObserver;->nl:Lrx/internal/operators/NotificationLite;

    .line 68
    iput-object p1, p0, Lrx/observers/SerializedObserver;->actual:Lrx/Observer;

    .line 69
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 158
    .local p0, "this":Lrx/observers/SerializedObserver;, "Lrx/observers/SerializedObserver<TT;>;"
    iget-boolean v1, p0, Lrx/observers/SerializedObserver;->terminated:Z

    if-eqz v1, :cond_5

    .line 178
    :goto_4
    return-void

    .line 161
    :cond_5
    monitor-enter p0

    .line 162
    :try_start_6
    iget-boolean v1, p0, Lrx/observers/SerializedObserver;->terminated:Z

    if-eqz v1, :cond_f

    .line 163
    monitor-exit p0

    goto :goto_4

    .line 176
    :catchall_c
    move-exception v1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_c

    throw v1

    .line 165
    :cond_f
    const/4 v1, 0x1

    :try_start_10
    iput-boolean v1, p0, Lrx/observers/SerializedObserver;->terminated:Z

    .line 166
    iget-boolean v1, p0, Lrx/observers/SerializedObserver;->emitting:Z

    if-eqz v1, :cond_2c

    .line 167
    iget-object v0, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 168
    .local v0, "list":Lrx/observers/SerializedObserver$FastList;
    if-nez v0, :cond_21

    .line 169
    new-instance v0, Lrx/observers/SerializedObserver$FastList;

    .end local v0    # "list":Lrx/observers/SerializedObserver$FastList;
    invoke-direct {v0}, Lrx/observers/SerializedObserver$FastList;-><init>()V

    .line 170
    .restart local v0    # "list":Lrx/observers/SerializedObserver$FastList;
    iput-object v0, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 172
    :cond_21
    iget-object v1, p0, Lrx/observers/SerializedObserver;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/observers/SerializedObserver$FastList;->add(Ljava/lang/Object;)V

    .line 173
    monitor-exit p0

    goto :goto_4

    .line 175
    .end local v0    # "list":Lrx/observers/SerializedObserver$FastList;
    :cond_2c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/observers/SerializedObserver;->emitting:Z

    .line 176
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_c

    .line 177
    iget-object v1, p0, Lrx/observers/SerializedObserver;->actual:Lrx/Observer;

    invoke-interface {v1}, Lrx/Observer;->onCompleted()V

    goto :goto_4
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 129
    .local p0, "this":Lrx/observers/SerializedObserver;, "Lrx/observers/SerializedObserver<TT;>;"
    invoke-static {p1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 130
    iget-boolean v1, p0, Lrx/observers/SerializedObserver;->terminated:Z

    if-eqz v1, :cond_8

    .line 154
    :goto_7
    return-void

    .line 133
    :cond_8
    monitor-enter p0

    .line 134
    :try_start_9
    iget-boolean v1, p0, Lrx/observers/SerializedObserver;->terminated:Z

    if-eqz v1, :cond_12

    .line 135
    monitor-exit p0

    goto :goto_7

    .line 152
    :catchall_f
    move-exception v1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_f

    throw v1

    .line 137
    :cond_12
    const/4 v1, 0x1

    :try_start_13
    iput-boolean v1, p0, Lrx/observers/SerializedObserver;->terminated:Z

    .line 138
    iget-boolean v1, p0, Lrx/observers/SerializedObserver;->emitting:Z

    if-eqz v1, :cond_2f

    .line 143
    iget-object v0, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 144
    .local v0, "list":Lrx/observers/SerializedObserver$FastList;
    if-nez v0, :cond_24

    .line 145
    new-instance v0, Lrx/observers/SerializedObserver$FastList;

    .end local v0    # "list":Lrx/observers/SerializedObserver$FastList;
    invoke-direct {v0}, Lrx/observers/SerializedObserver$FastList;-><init>()V

    .line 146
    .restart local v0    # "list":Lrx/observers/SerializedObserver$FastList;
    iput-object v0, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 148
    :cond_24
    iget-object v1, p0, Lrx/observers/SerializedObserver;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/observers/SerializedObserver$FastList;->add(Ljava/lang/Object;)V

    .line 149
    monitor-exit p0

    goto :goto_7

    .line 151
    .end local v0    # "list":Lrx/observers/SerializedObserver$FastList;
    :cond_2f
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/observers/SerializedObserver;->emitting:Z

    .line 152
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_13 .. :try_end_33} :catchall_f

    .line 153
    iget-object v1, p0, Lrx/observers/SerializedObserver;->actual:Lrx/Observer;

    invoke-interface {v1, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/observers/SerializedObserver;, "Lrx/observers/SerializedObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v8, 0x1

    .line 73
    iget-boolean v6, p0, Lrx/observers/SerializedObserver;->terminated:Z

    if-eqz v6, :cond_6

    .line 121
    :goto_5
    return-void

    .line 76
    :cond_6
    monitor-enter p0

    .line 77
    :try_start_7
    iget-boolean v6, p0, Lrx/observers/SerializedObserver;->terminated:Z

    if-eqz v6, :cond_10

    .line 78
    monitor-exit p0

    goto :goto_5

    .line 90
    :catchall_d
    move-exception v6

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_d

    throw v6

    .line 80
    :cond_10
    :try_start_10
    iget-boolean v6, p0, Lrx/observers/SerializedObserver;->emitting:Z

    if-eqz v6, :cond_2a

    .line 81
    iget-object v4, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 82
    .local v4, "list":Lrx/observers/SerializedObserver$FastList;
    if-nez v4, :cond_1f

    .line 83
    new-instance v4, Lrx/observers/SerializedObserver$FastList;

    .end local v4    # "list":Lrx/observers/SerializedObserver$FastList;
    invoke-direct {v4}, Lrx/observers/SerializedObserver$FastList;-><init>()V

    .line 84
    .restart local v4    # "list":Lrx/observers/SerializedObserver$FastList;
    iput-object v4, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 86
    :cond_1f
    iget-object v6, p0, Lrx/observers/SerializedObserver;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v6, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Lrx/observers/SerializedObserver$FastList;->add(Ljava/lang/Object;)V

    .line 87
    monitor-exit p0

    goto :goto_5

    .line 89
    .end local v4    # "list":Lrx/observers/SerializedObserver$FastList;
    :cond_2a
    const/4 v6, 0x1

    iput-boolean v6, p0, Lrx/observers/SerializedObserver;->emitting:Z

    .line 90
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_d

    .line 92
    :try_start_2e
    iget-object v6, p0, Lrx/observers/SerializedObserver;->actual:Lrx/Observer;

    invoke-interface {v6, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_33} :catch_40

    .line 100
    :cond_33
    monitor-enter p0

    .line 101
    :try_start_34
    iget-object v4, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 102
    .restart local v4    # "list":Lrx/observers/SerializedObserver$FastList;
    if-nez v4, :cond_49

    .line 103
    const/4 v6, 0x0

    iput-boolean v6, p0, Lrx/observers/SerializedObserver;->emitting:Z

    .line 104
    monitor-exit p0

    goto :goto_5

    .line 107
    .end local v4    # "list":Lrx/observers/SerializedObserver$FastList;
    :catchall_3d
    move-exception v6

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_34 .. :try_end_3f} :catchall_3d

    throw v6

    .line 93
    :catch_40
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/Throwable;
    iput-boolean v8, p0, Lrx/observers/SerializedObserver;->terminated:Z

    .line 95
    iget-object v6, p0, Lrx/observers/SerializedObserver;->actual:Lrx/Observer;

    invoke-static {v1, v6, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_5

    .line 106
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v4    # "list":Lrx/observers/SerializedObserver$FastList;
    :cond_49
    const/4 v6, 0x0

    :try_start_4a
    iput-object v6, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 107
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_3d

    .line 108
    iget-object v0, v4, Lrx/observers/SerializedObserver$FastList;->array:[Ljava/lang/Object;

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_51
    if-ge v2, v3, :cond_33

    aget-object v5, v0, v2

    .line 109
    .local v5, "o":Ljava/lang/Object;
    if-eqz v5, :cond_33

    .line 113
    :try_start_57
    iget-object v6, p0, Lrx/observers/SerializedObserver;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v7, p0, Lrx/observers/SerializedObserver;->actual:Lrx/Observer;

    invoke-virtual {v6, v7, v5}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_75

    .line 114
    const/4 v6, 0x1

    iput-boolean v6, p0, Lrx/observers/SerializedObserver;->terminated:Z
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_64} :catch_65

    goto :goto_5

    .line 117
    :catch_65
    move-exception v1

    .line 118
    .restart local v1    # "e":Ljava/lang/Throwable;
    iput-boolean v8, p0, Lrx/observers/SerializedObserver;->terminated:Z

    .line 119
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 120
    iget-object v6, p0, Lrx/observers/SerializedObserver;->actual:Lrx/Observer;

    invoke-static {v1, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v7

    invoke-interface {v6, v7}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 108
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_51
.end method
