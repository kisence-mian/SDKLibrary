.class public Lcom/tds/common/reactor/internal/observers/SerializedObserver;
.super Ljava/lang/Object;
.source "SerializedObserver.java"

# interfaces
.implements Lcom/tds/common/reactor/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/reactor/internal/observers/SerializedObserver$FastList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/Observer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final actual:Lcom/tds/common/reactor/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private emitting:Z

.field private queue:Lcom/tds/common/reactor/internal/observers/SerializedObserver$FastList;

.field private volatile terminated:Z


# direct methods
.method public constructor <init>(Lcom/tds/common/reactor/Observer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lcom/tds/common/reactor/internal/observers/SerializedObserver;, "Lcom/tds/common/reactor/internal/observers/SerializedObserver<TT;>;"
    .local p1, "s":Lcom/tds/common/reactor/Observer;, "Lcom/tds/common/reactor/Observer<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/tds/common/reactor/internal/observers/SerializedObserver;->actual:Lcom/tds/common/reactor/Observer;

    .line 40
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .line 129
    .local p0, "this":Lcom/tds/common/reactor/internal/observers/SerializedObserver;, "Lcom/tds/common/reactor/internal/observers/SerializedObserver<TT;>;"
    iget-boolean v0, p0, Lcom/tds/common/reactor/internal/observers/SerializedObserver;->terminated:Z

    if-eqz v0, :cond_5

    .line 130
    return-void

    .line 132
    :cond_5
    monitor-enter p0

    .line 133
    :try_start_6
    iget-boolean v0, p0, Lcom/tds/common/reactor/internal/observers/SerializedObserver;->terminated:Z

    if-eqz v0, :cond_c

    .line 134
    monitor-exit p0

    return-void

    .line 136
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/reactor/internal/observers/SerializedObserver;->terminated:Z

    .line 137
    iget-boolean v1, p0, Lcom/tds/common/reactor/internal/observers/SerializedObserver;->emitting:Z

    if-eqz v1, :cond_28

    .line 138
    iget-object v0, p0, Lcom/tds/common/reactor/internal/observers/SerializedObserver;->queue:Lcom/tds/common/reactor/internal/observers/SerializedObserver$FastList;

    .line 139
    .local v0, "list":Lcom/tds/common/reactor/internal/observers/SerializedObserver$FastList;
    if-nez v0, :cond_1f

    .line 140
    new-instance v1, Lcom/tds/common/reactor/internal/observers/SerializedObserver$FastList;

    invoke-direct {v1}, Lcom/tds/common/reactor/internal/observers/SerializedObserver$FastList;-><init>()V

    move-object v0, v1

    .line 141
    iput-object v0, p0, Lcom/tds/common/reactor/internal/observers/SerializedObserver;->queue:Lcom/tds/common/reactor/internal/observers/SerializedObserver$FastList;

    .line 143
    :cond_1f
    invoke-static {}, Lcom/tds/common/reactor/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/internal/observers/SerializedObserver$FastList;->add(Ljava/lang/Object;)V

    .line 144
    monitor-exit p0

    return-void

    .line 146
    .end local v0    # "list":Lcom/tds/common/reactor/internal/observers/SerializedObserver$FastList;
    :cond_28
    iput-boolean v0, p0, Lcom/tds/common/reactor/internal/observers/SerializedObserver;->emitting:Z

    .line 147
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_31

    .line 148
    iget-object v0, p0, Lcom/tds/common/reactor/internal/observers/SerializedObserver;->actual:Lcom/tds/common/reactor/Observer;

    invoke-interface {v0}, Lcom/tds/common/reactor/Observer;->onCompleted()V

    .line 149
    return-void

    .line 147
    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 100
    .local p0, "this":Lcom/tds/common/reactor/internal/observers/SerializedObserver;, "Lcom/tds/common/reactor/internal/observers/SerializedObserver<TT;>;"
    invoke-static {p1}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 101
    iget-boolean v0, p0, Lcom/tds/common/reactor/internal/observers/SerializedObserver;->terminated:Z

    if-eqz v0, :cond_8

    .line 102
    return-void

    .line 104
    :cond_8
    monitor-enter p0

    .line 105
    :try_start_9
    iget-boolean v0, p0, Lcom/tds/common/reactor/internal/observers/SerializedObserver;->terminated:Z

    if-eqz v0, :cond_f

    .line 106
    monitor-exit p0

    return-void

    .line 108
    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/reactor/internal/observers/SerializedObserver;->terminated:Z

    .line 109
    iget-boolean v1, p0, Lcom/tds/common/reactor/internal/observers/SerializedObserver;->emitting:Z

    if-eqz v1, :cond_2b

    .line 114
    iget-object v0, p0, Lcom/tds/common/reactor/internal/observers/SerializedObserver;->queue:Lcom/tds/common/reactor/internal/observers/SerializedObserver$FastList;

    .line 115
    .local v0, "list":Lcom/tds/common/reactor/internal/observers/SerializedObserver$FastList;
    if-nez v0, :cond_22

    .line 116
    new-instance v1, Lcom/tds/common/reactor/internal/observers/SerializedObserver$FastList;

    invoke-direct {v1}, Lcom/tds/common/reactor/internal/observers/SerializedObserver$FastList;-><init>()V

    move-object v0, v1

    .line 117
    iput-object v0, p0, Lcom/tds/common/reactor/internal/observers/SerializedObserver;->queue:Lcom/tds/common/reactor/internal/observers/SerializedObserver$FastList;

    .line 119
    :cond_22
    invoke-static {p1}, Lcom/tds/common/reactor/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/internal/observers/SerializedObserver$FastList;->add(Ljava/lang/Object;)V

    .line 120
    monitor-exit p0

    return-void

    .line 122
    .end local v0    # "list":Lcom/tds/common/reactor/internal/observers/SerializedObserver$FastList;
    :cond_2b
    iput-boolean v0, p0, Lcom/tds/common/reactor/internal/observers/SerializedObserver;->emitting:Z

    .line 123
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_34

    .line 124
    iget-object v0, p0, Lcom/tds/common/reactor/internal/observers/SerializedObserver;->actual:Lcom/tds/common/reactor/Observer;

    invoke-interface {v0, p1}, Lcom/tds/common/reactor/Observer;->onError(Ljava/lang/Throwable;)V

    .line 125
    return-void

    .line 123
    :catchall_34
    move-exception v0

    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 44
    .local p0, "this":Lcom/tds/common/reactor/internal/observers/SerializedObserver;, "Lcom/tds/common/reactor/internal/observers/SerializedObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lcom/tds/common/reactor/internal/observers/SerializedObserver;->terminated:Z

    if-eqz v0, :cond_5

    .line 45
    return-void

    .line 47
    :cond_5
    monitor-enter p0

    .line 48
    :try_start_6
    iget-boolean v0, p0, Lcom/tds/common/reactor/internal/observers/SerializedObserver;->terminated:Z

    if-eqz v0, :cond_c

    .line 49
    monitor-exit p0

    return-void

    .line 51
    :cond_c
    iget-boolean v0, p0, Lcom/tds/common/reactor/internal/observers/SerializedObserver;->emitting:Z

    if-eqz v0, :cond_25

    .line 52
    iget-object v0, p0, Lcom/tds/common/reactor/internal/observers/SerializedObserver;->queue:Lcom/tds/common/reactor/internal/observers/SerializedObserver$FastList;

    .line 53
    .local v0, "list":Lcom/tds/common/reactor/internal/observers/SerializedObserver$FastList;
    if-nez v0, :cond_1c

    .line 54
    new-instance v1, Lcom/tds/common/reactor/internal/observers/SerializedObserver$FastList;

    invoke-direct {v1}, Lcom/tds/common/reactor/internal/observers/SerializedObserver$FastList;-><init>()V

    move-object v0, v1

    .line 55
    iput-object v0, p0, Lcom/tds/common/reactor/internal/observers/SerializedObserver;->queue:Lcom/tds/common/reactor/internal/observers/SerializedObserver$FastList;

    .line 57
    :cond_1c
    invoke-static {p1}, Lcom/tds/common/reactor/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/internal/observers/SerializedObserver$FastList;->add(Ljava/lang/Object;)V

    .line 58
    monitor-exit p0

    return-void

    .line 60
    .end local v0    # "list":Lcom/tds/common/reactor/internal/observers/SerializedObserver$FastList;
    :cond_25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/reactor/internal/observers/SerializedObserver;->emitting:Z

    .line 61
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_73

    .line 63
    :try_start_29
    iget-object v1, p0, Lcom/tds/common/reactor/internal/observers/SerializedObserver;->actual:Lcom/tds/common/reactor/Observer;

    invoke-interface {v1, p1}, Lcom/tds/common/reactor/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_6a

    .line 68
    nop

    .line 71
    :goto_2f
    monitor-enter p0

    .line 72
    :try_start_30
    iget-object v1, p0, Lcom/tds/common/reactor/internal/observers/SerializedObserver;->queue:Lcom/tds/common/reactor/internal/observers/SerializedObserver$FastList;

    .line 73
    .local v1, "list":Lcom/tds/common/reactor/internal/observers/SerializedObserver$FastList;
    const/4 v2, 0x0

    if-nez v1, :cond_39

    .line 74
    iput-boolean v2, p0, Lcom/tds/common/reactor/internal/observers/SerializedObserver;->emitting:Z

    .line 75
    monitor-exit p0

    return-void

    .line 77
    :cond_39
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/tds/common/reactor/internal/observers/SerializedObserver;->queue:Lcom/tds/common/reactor/internal/observers/SerializedObserver$FastList;

    .line 78
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_67

    .line 79
    iget-object v3, v1, Lcom/tds/common/reactor/internal/observers/SerializedObserver$FastList;->array:[Ljava/lang/Object;

    array-length v4, v3

    :goto_40
    if-ge v2, v4, :cond_66

    aget-object v5, v3, v2

    .line 80
    .local v5, "o":Ljava/lang/Object;
    if-nez v5, :cond_47

    .line 81
    goto :goto_66

    .line 84
    :cond_47
    :try_start_47
    iget-object v6, p0, Lcom/tds/common/reactor/internal/observers/SerializedObserver;->actual:Lcom/tds/common/reactor/Observer;

    invoke-static {v6, v5}, Lcom/tds/common/reactor/operators/NotificationLite;->accept(Lcom/tds/common/reactor/Observer;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 85
    iput-boolean v0, p0, Lcom/tds/common/reactor/internal/observers/SerializedObserver;->terminated:Z
    :try_end_51
    .catchall {:try_start_47 .. :try_end_51} :catchall_56

    .line 86
    return-void

    .line 93
    :cond_52
    nop

    .line 79
    .end local v5    # "o":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 88
    .restart local v5    # "o":Ljava/lang/Object;
    :catchall_56
    move-exception v2

    .line 89
    .local v2, "e":Ljava/lang/Throwable;
    iput-boolean v0, p0, Lcom/tds/common/reactor/internal/observers/SerializedObserver;->terminated:Z

    .line 90
    invoke-static {v2}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 91
    iget-object v0, p0, Lcom/tds/common/reactor/internal/observers/SerializedObserver;->actual:Lcom/tds/common/reactor/Observer;

    invoke-static {v2, p1}, Lcom/tds/common/reactor/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/tds/common/reactor/Observer;->onError(Ljava/lang/Throwable;)V

    .line 92
    return-void

    .line 95
    .end local v1    # "list":Lcom/tds/common/reactor/internal/observers/SerializedObserver$FastList;
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v5    # "o":Ljava/lang/Object;
    :cond_66
    :goto_66
    goto :goto_2f

    .line 78
    :catchall_67
    move-exception v0

    :try_start_68
    monitor-exit p0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw v0

    .line 64
    :catchall_6a
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Throwable;
    iput-boolean v0, p0, Lcom/tds/common/reactor/internal/observers/SerializedObserver;->terminated:Z

    .line 66
    iget-object v0, p0, Lcom/tds/common/reactor/internal/observers/SerializedObserver;->actual:Lcom/tds/common/reactor/Observer;

    invoke-static {v1, v0, p1}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lcom/tds/common/reactor/Observer;Ljava/lang/Object;)V

    .line 67
    return-void

    .line 61
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_73
    move-exception v0

    :try_start_74
    monitor-exit p0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw v0
.end method
