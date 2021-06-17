.class public abstract Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;
.super Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/internal/InternalFutureFailureAccess;
.source "AbstractFuture.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$SynchronizedHelper;,
        Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$SafeAtomicHelper;,
        Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$UnsafeAtomicHelper;,
        Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;,
        Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$SetFuture;,
        Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;,
        Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Failure;,
        Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;,
        Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;,
        Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$TrustedFuture;,
        Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Trusted;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/internal/InternalFutureFailureAccess;",
        "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final ATOMIC_HELPER:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;

.field private static final GENERATE_CANCELLATION_CAUSES:Z

.field private static final NULL:Ljava/lang/Object;

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private volatile listeners:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;

.field private volatile value:Ljava/lang/Object;

.field private volatile waiters:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 71
    const-class v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;

    .line 73
    const-string v1, "guava.concurrent.generate_cancellation_cause"

    const-string v2, "false"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->GENERATE_CANCELLATION_CAUSES:Z

    .line 123
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->log:Ljava/util/logging/Logger;

    .line 133
    nop

    .line 134
    nop

    .line 137
    const/4 v1, 0x0

    :try_start_1d
    new-instance v2, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$UnsafeAtomicHelper;

    invoke-direct {v2, v1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$UnsafeAtomicHelper;-><init>(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$1;)V
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_25

    .line 159
    move-object v5, v1

    move-object v9, v5

    goto :goto_67

    .line 138
    :catchall_25
    move-exception v2

    .line 139
    nop

    .line 144
    :try_start_27
    new-instance v9, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$SafeAtomicHelper;

    const-class v3, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;

    const-class v4, Ljava/lang/Thread;

    const-string v5, "thread"

    .line 146
    invoke-static {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    const-class v3, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;

    const-class v5, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;

    const-string v6, "next"

    .line 147
    invoke-static {v3, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    const-class v3, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;

    const-string v6, "waiters"

    .line 148
    invoke-static {v0, v3, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    const-class v3, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;

    const-string v7, "listeners"

    .line 149
    invoke-static {v0, v3, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    const-class v3, Ljava/lang/Object;

    const-string v8, "value"

    .line 150
    invoke-static {v0, v3, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$SafeAtomicHelper;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_59
    .catchall {:try_start_27 .. :try_end_59} :catchall_5d

    .line 158
    move-object v5, v2

    move-object v2, v9

    move-object v9, v1

    goto :goto_67

    .line 151
    :catchall_5d
    move-exception v0

    .line 156
    nop

    .line 157
    new-instance v3, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$SynchronizedHelper;

    invoke-direct {v3, v1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$SynchronizedHelper;-><init>(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$1;)V

    move-object v9, v0

    move-object v5, v2

    move-object v2, v3

    .line 160
    :goto_67
    sput-object v2, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;

    .line 165
    const-class v0, Ljava/util/concurrent/locks/LockSupport;

    .line 169
    if-eqz v9, :cond_88

    .line 170
    sget-object v6, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "androidx.test.espresso.core.internal.deps.guava.util.concurrent.AbstractFuture"

    const-string v3, "<clinit>"

    const-string v4, "UnsafeAtomicHelper is broken!"

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v0, "androidx.test.espresso.core.internal.deps.guava.util.concurrent.AbstractFuture"

    const-string v7, "<clinit>"

    const-string v8, "SafeAtomicHelper is broken!"

    move-object v4, v6

    move-object v6, v0

    invoke-virtual/range {v4 .. v9}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 267
    :cond_88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->NULL:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .line 360
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/internal/InternalFutureFailureAccess;-><init>()V

    return-void
.end method

.method static synthetic access$200()Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;
    .registers 1

    .line 67
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;

    return-object v0
.end method

.method static synthetic access$300()Z
    .registers 1

    .line 67
    sget-boolean v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->GENERATE_CANCELLATION_CAUSES:Z

    return v0
.end method

.method static synthetic access$400(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;)Ljava/lang/Object;
    .registers 1

    .line 67
    iget-object p0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 67
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .registers 1

    .line 67
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->getFutureValue(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;)V
    .registers 1

    .line 67
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->complete(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;)V

    return-void
.end method

.method static synthetic access$800(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;
    .registers 1

    .line 67
    iget-object p0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->waiters:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;

    return-object p0
.end method

.method static synthetic access$802(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;
    .registers 2

    .line 67
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->waiters:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;

    return-object p1
.end method

.method static synthetic access$900(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;
    .registers 1

    .line 67
    iget-object p0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->listeners:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;

    return-object p0
.end method

.method static synthetic access$902(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;
    .registers 2

    .line 67
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->listeners:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;

    return-object p1
.end method

.method private addDoneString(Ljava/lang/StringBuilder;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 1110
    const-string v0, "]"

    :try_start_2
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    .line 1111
    const-string v2, "SUCCESS, result=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->userObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_17
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_17} :catch_34
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_17} :catch_2d
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_17} :catch_18

    goto :goto_46

    .line 1116
    :catch_18
    move-exception v0

    .line 1117
    const-string v1, "UNKNOWN, cause=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " thrown from get()]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_47

    .line 1114
    :catch_2d
    move-exception v0

    .line 1115
    const-string v0, "CANCELLED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_46

    .line 1112
    :catch_34
    move-exception v1

    .line 1113
    const-string v2, "FAILURE, cause=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    :goto_46
    nop

    .line 1119
    :goto_47
    return-void
.end method

.method private static cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "cause"
        }
    .end annotation

    .line 1351
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 1352
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1353
    return-object v0
.end method

.method private clearListeners(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onto"
        }
    .end annotation

    .line 1047
    :goto_0
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->listeners:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;

    .line 1048
    sget-object v1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;

    sget-object v2, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;->TOMBSTONE:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;

    invoke-virtual {v1, p0, v0, v2}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;->casListeners(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1049
    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    .line 1050
    :goto_f
    if-eqz p1, :cond_1a

    .line 1051
    nop

    .line 1052
    iget-object v1, p1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;->next:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;

    .line 1053
    iput-object v0, p1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;->next:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;

    .line 1054
    nop

    .line 1055
    move-object v0, p1

    move-object p1, v1

    goto :goto_f

    .line 1056
    :cond_1a
    return-object v0

    .line 1048
    :cond_1b
    goto :goto_0
.end method

.method private static complete(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "future"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture<",
            "*>;)V"
        }
    .end annotation

    .line 925
    const/4 v0, 0x0

    .line 928
    :goto_1
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->releaseWaiters()V

    .line 934
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->afterDone()V

    .line 936
    invoke-direct {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->clearListeners(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;

    move-result-object p0

    .line 937
    nop

    .line 938
    :goto_c
    if-eqz p0, :cond_36

    .line 939
    nop

    .line 940
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;->next:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;

    .line 941
    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;->task:Ljava/lang/Runnable;

    .line 942
    instance-of v2, v1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$SetFuture;

    if-eqz v2, :cond_2f

    .line 943
    check-cast v1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$SetFuture;

    .line 949
    iget-object p0, v1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$SetFuture;->owner:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;

    .line 950
    iget-object v2, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    if-ne v2, v1, :cond_2e

    .line 951
    iget-object v2, v1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$SetFuture;->future:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    invoke-static {v2}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->getFutureValue(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v2

    .line 952
    sget-object v3, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v3, p0, v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 953
    goto :goto_1

    .line 957
    :cond_2e
    goto :goto_34

    .line 958
    :cond_2f
    iget-object p0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v1, p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 960
    :goto_34
    move-object p0, v0

    goto :goto_c

    .line 963
    :cond_36
    return-void
.end method

.method private static executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "runnable",
            "executor"
        }
    .end annotation

    .line 1139
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    .line 1148
    goto :goto_48

    .line 1140
    :catch_4
    move-exception v5

    .line 1144
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x39

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "RuntimeException while executing runnable "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " with executor "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v2, "androidx.test.espresso.core.internal.deps.guava.util.concurrent.AbstractFuture"

    const-string v3, "executeListener"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1149
    :goto_48
    return-void
.end method

.method private getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 549
    instance-of v0, p1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;

    if-nez v0, :cond_1a

    .line 551
    instance-of v0, p1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Failure;

    if-nez v0, :cond_10

    .line 553
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->NULL:Ljava/lang/Object;

    if-ne p1, v0, :cond_e

    .line 554
    const/4 p1, 0x0

    return-object p1

    .line 557
    :cond_e
    nop

    .line 558
    return-object p1

    .line 552
    :cond_10
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Failure;

    iget-object p1, p1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Failure;->exception:Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 550
    :cond_1a
    check-cast p1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;

    iget-object p1, p1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;->cause:Ljava/lang/Throwable;

    const-string v0, "Task was cancelled."

    invoke-static {v0, p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    throw p1
.end method

.method private static getFutureValue(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "future"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 833
    const-string v0, "get() did not throw CancellationException, despite reporting isCancelled() == true: "

    instance-of v1, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Trusted;

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    .line 838
    check-cast p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;

    iget-object p0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 839
    instance-of v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;

    if-eqz v0, :cond_24

    .line 843
    move-object v0, p0

    check-cast v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;

    .line 844
    iget-boolean v1, v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;->wasInterrupted:Z

    if-eqz v1, :cond_24

    .line 846
    iget-object p0, v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;->cause:Ljava/lang/Throwable;

    if-eqz p0, :cond_22

    .line 847
    new-instance p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;

    iget-object v0, v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;->cause:Ljava/lang/Throwable;

    invoke-direct {p0, v2, v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_24

    .line 848
    :cond_22
    sget-object p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;->CAUSELESS_CANCELLED:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;

    .line 851
    :cond_24
    :goto_24
    return-object p0

    .line 853
    :cond_25
    instance-of v1, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/internal/InternalFutureFailureAccess;

    if-eqz v1, :cond_38

    .line 854
    move-object v1, p0

    check-cast v1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/internal/InternalFutureFailureAccess;

    .line 855
    invoke-static {v1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/internal/InternalFutures;->tryInternalFastPathGetFailure(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/internal/InternalFutureFailureAccess;)Ljava/lang/Throwable;

    move-result-object v1

    .line 856
    if-eqz v1, :cond_38

    .line 857
    new-instance p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Failure;

    invoke-direct {p0, v1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    .line 860
    :cond_38
    invoke-interface {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;->isCancelled()Z

    move-result v1

    .line 862
    sget-boolean v3, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->GENERATE_CANCELLATION_CAUSES:Z

    xor-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v1

    if-eqz v3, :cond_46

    .line 863
    sget-object p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;->CAUSELESS_CANCELLED:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;

    return-object p0

    .line 867
    :cond_46
    :try_start_46
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    .line 868
    if-eqz v1, :cond_76

    .line 869
    new-instance v3, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x54

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v2, v4}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    return-object v3

    .line 876
    :cond_76
    if-nez v3, :cond_7a

    sget-object v3, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->NULL:Ljava/lang/Object;
    :try_end_7a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_46 .. :try_end_7a} :catch_b7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_46 .. :try_end_7a} :catch_82
    .catchall {:try_start_46 .. :try_end_7a} :catchall_7b

    :cond_7a
    return-object v3

    .line 897
    :catchall_7b
    move-exception p0

    .line 898
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Failure;

    invoke-direct {v0, p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    .line 888
    :catch_82
    move-exception v0

    .line 889
    if-nez v1, :cond_b1

    .line 890
    new-instance v1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Failure;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "get() threw CancellationException, despite reporting isCancelled() == false: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    .line 896
    :cond_b1
    new-instance p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;

    invoke-direct {p0, v2, v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    return-object p0

    .line 877
    :catch_b7
    move-exception v3

    .line 878
    if-eqz v1, :cond_e4

    .line 879
    new-instance v1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x54

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2, v4}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    return-object v1

    .line 887
    :cond_e4
    new-instance p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Failure;

    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method private static getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "future"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 907
    const/4 v0, 0x0

    .line 911
    :goto_1
    :try_start_1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_5} :catch_1a
    .catchall {:try_start_1 .. :try_end_5} :catchall_f

    .line 917
    if-eqz v0, :cond_e

    .line 918
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 911
    :cond_e
    return-object p0

    .line 917
    :catchall_f
    move-exception p0

    if-eqz v0, :cond_19

    .line 918
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_19
    throw p0

    .line 912
    :catch_1a
    move-exception v0

    .line 913
    const/4 v0, 0x1

    .line 914
    goto :goto_1
.end method

.method private releaseWaiters()V
    .registers 4

    .line 1027
    :goto_0
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->waiters:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;

    .line 1028
    sget-object v1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;

    sget-object v2, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;

    invoke-virtual {v1, p0, v0, v2}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;->casWaiters(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1029
    nop

    :goto_d
    if-eqz v0, :cond_15

    .line 1030
    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;->unpark()V

    .line 1029
    iget-object v0, v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;->next:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;

    goto :goto_d

    .line 1032
    :cond_15
    return-void

    .line 1028
    :cond_16
    goto :goto_0
.end method

.method private removeWaiter(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 224
    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    .line 227
    :goto_3
    nop

    .line 228
    iget-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->waiters:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;

    .line 229
    sget-object v1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;

    if-ne p1, v1, :cond_b

    .line 230
    return-void

    .line 229
    :cond_b
    move-object v1, v0

    .line 233
    :goto_c
    if-eqz p1, :cond_2a

    .line 234
    iget-object v2, p1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;->next:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;

    .line 235
    iget-object v3, p1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_16

    .line 236
    move-object v1, p1

    goto :goto_28

    .line 237
    :cond_16
    if-eqz v1, :cond_1f

    .line 238
    iput-object v2, v1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;->next:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;

    .line 239
    iget-object p1, v1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    if-nez p1, :cond_28

    .line 240
    goto :goto_3

    .line 242
    :cond_1f
    sget-object v3, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v3, p0, p1, v2}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;->casWaiters(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;)Z

    move-result p1

    if-nez p1, :cond_28

    .line 243
    goto :goto_3

    .line 245
    :cond_28
    :goto_28
    move-object p1, v2

    goto :goto_c

    .line 249
    :cond_2a
    return-void
.end method

.method private userObjectToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1127
    if-ne p1, p0, :cond_5

    .line 1128
    const-string p1, "this future"

    return-object p1

    .line 1130
    :cond_5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener",
            "executor"
        }
    .end annotation

    .line 681
    const-string v0, "Runnable was null."

    invoke-static {p1, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    const-string v0, "Executor was null."

    invoke-static {p2, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 693
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->listeners:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;

    .line 694
    sget-object v1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;->TOMBSTONE:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;

    if-eq v0, v1, :cond_2c

    .line 695
    new-instance v1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;

    invoke-direct {v1, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 697
    :cond_1b
    iput-object v0, v1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;->next:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;

    .line 698
    sget-object v2, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v2, p0, v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;->casListeners(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 699
    return-void

    .line 701
    :cond_26
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->listeners:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;

    .line 702
    sget-object v2, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;->TOMBSTONE:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;

    if-ne v0, v2, :cond_1b

    .line 707
    :cond_2c
    invoke-static {p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 708
    return-void
.end method

.method protected afterDone()V
    .registers 1

    .line 978
    return-void
.end method

.method public cancel(Z)Z
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mayInterruptIfRunning"
        }
    .end annotation

    .line 590
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 591
    nop

    .line 592
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_9

    const/4 v3, 0x1

    goto :goto_a

    :cond_9
    const/4 v3, 0x0

    :goto_a
    instance-of v4, v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$SetFuture;

    or-int/2addr v3, v4

    if-eqz v3, :cond_65

    .line 596
    sget-boolean v3, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->GENERATE_CANCELLATION_CAUSES:Z

    if-eqz v3, :cond_20

    .line 597
    new-instance v3, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;

    new-instance v4, Ljava/util/concurrent/CancellationException;

    const-string v5, "Future.cancel() was called."

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1, v4}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_27

    .line 599
    :cond_20
    if-eqz p1, :cond_25

    .line 600
    sget-object v3, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;->CAUSELESS_INTERRUPTED:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;

    goto :goto_27

    .line 601
    :cond_25
    sget-object v3, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;->CAUSELESS_CANCELLED:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;

    .line 602
    :goto_27
    const/4 v5, 0x0

    move-object v4, p0

    .line 604
    :cond_29
    :goto_29
    sget-object v6, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v6, v4, v0, v3}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 605
    nop

    .line 608
    if-eqz p1, :cond_37

    .line 609
    invoke-virtual {v4}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->interruptTask()V

    .line 611
    :cond_37
    invoke-static {v4}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->complete(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;)V

    .line 612
    instance-of v4, v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$SetFuture;

    if-eqz v4, :cond_66

    .line 615
    check-cast v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$SetFuture;

    iget-object v0, v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$SetFuture;->future:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    .line 616
    instance-of v4, v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Trusted;

    if-eqz v4, :cond_59

    .line 624
    move-object v4, v0

    check-cast v4, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;

    .line 625
    iget-object v0, v4, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 626
    if-nez v0, :cond_4f

    const/4 v5, 0x1

    goto :goto_50

    :cond_4f
    const/4 v5, 0x0

    :goto_50
    instance-of v6, v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$SetFuture;

    or-int/2addr v5, v6

    if-eqz v5, :cond_58

    .line 627
    nop

    .line 628
    const/4 v5, 0x1

    goto :goto_29

    .line 630
    :cond_58
    goto :goto_5c

    .line 632
    :cond_59
    invoke-interface {v0, p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 634
    :goto_5c
    goto :goto_66

    .line 638
    :cond_5d
    iget-object v0, v4, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 639
    instance-of v6, v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$SetFuture;

    if-nez v6, :cond_29

    .line 643
    move v1, v5

    goto :goto_66

    .line 592
    :cond_65
    const/4 v1, 0x0

    .line 647
    :cond_66
    :goto_66
    return v1
.end method

.method public get()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 508
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_61

    .line 511
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 512
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    const/4 v3, 0x1

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    instance-of v4, v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$SetFuture;

    xor-int/2addr v4, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_1a

    .line 513
    invoke-direct {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 515
    :cond_1a
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->waiters:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;

    .line 516
    sget-object v3, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;

    if-eq v0, v3, :cond_5a

    .line 517
    new-instance v3, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;

    invoke-direct {v3}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;-><init>()V

    .line 519
    :cond_25
    invoke-virtual {v3, v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;->setNext(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;)V

    .line 520
    sget-object v4, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v4, p0, v0, v3}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;->casWaiters(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 523
    :cond_30
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 525
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 531
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 532
    if-eqz v0, :cond_3f

    const/4 v4, 0x1

    goto :goto_40

    :cond_3f
    const/4 v4, 0x0

    :goto_40
    instance-of v5, v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$SetFuture;

    xor-int/2addr v5, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_30

    .line 533
    invoke-direct {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 526
    :cond_4b
    invoke-direct {p0, v3}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->removeWaiter(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;)V

    .line 527
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 537
    :cond_54
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->waiters:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;

    .line 538
    sget-object v4, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;

    if-ne v0, v4, :cond_25

    .line 542
    :cond_5a
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 509
    :cond_61
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    goto :goto_68

    :goto_67
    throw v0

    :goto_68
    goto :goto_67
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeout",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 400
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 401
    nop

    .line 402
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_1de

    .line 405
    iget-object v6, v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 406
    const/4 v8, 0x1

    if-eqz v6, :cond_18

    const/4 v9, 0x1

    goto :goto_19

    :cond_18
    const/4 v9, 0x0

    :goto_19
    instance-of v10, v6, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$SetFuture;

    xor-int/2addr v10, v8

    and-int/2addr v9, v10

    if-eqz v9, :cond_24

    .line 407
    invoke-direct {v0, v6}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 410
    :cond_24
    const-wide/16 v9, 0x0

    cmp-long v6, v4, v9

    if-lez v6, :cond_30

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    add-long/2addr v11, v4

    goto :goto_31

    :cond_30
    move-wide v11, v9

    .line 412
    :goto_31
    const-wide/16 v13, 0x3e8

    cmp-long v6, v4, v13

    if-ltz v6, :cond_8c

    .line 413
    iget-object v6, v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->waiters:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;

    .line 414
    sget-object v15, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;

    if-eq v6, v15, :cond_85

    .line 415
    new-instance v15, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;

    invoke-direct {v15}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;-><init>()V

    .line 417
    :cond_42
    invoke-virtual {v15, v6}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;->setNext(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;)V

    .line 418
    sget-object v7, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v7, v0, v6, v15}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;->casWaiters(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;)Z

    move-result v6

    if-eqz v6, :cond_7f

    .line 420
    :cond_4d
    invoke-static {v0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 422
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_76

    .line 429
    iget-object v4, v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 430
    if-eqz v4, :cond_5c

    const/4 v5, 0x1

    goto :goto_5d

    :cond_5c
    const/4 v5, 0x0

    :goto_5d
    instance-of v6, v4, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$SetFuture;

    xor-int/2addr v6, v8

    and-int/2addr v5, v6

    if-eqz v5, :cond_68

    .line 431
    invoke-direct {v0, v4}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 435
    :cond_68
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    .line 436
    cmp-long v6, v4, v13

    if-gez v6, :cond_4d

    .line 438
    invoke-direct {v0, v15}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->removeWaiter(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;)V

    .line 439
    goto :goto_8c

    .line 423
    :cond_76
    invoke-direct {v0, v15}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->removeWaiter(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;)V

    .line 424
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 443
    :cond_7f
    iget-object v6, v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->waiters:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;

    .line 444
    sget-object v7, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;

    if-ne v6, v7, :cond_42

    .line 448
    :cond_85
    iget-object v1, v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 452
    :cond_8c
    :goto_8c
    cmp-long v6, v4, v9

    if-lez v6, :cond_b5

    .line 453
    iget-object v4, v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 454
    if-eqz v4, :cond_96

    const/4 v5, 0x1

    goto :goto_97

    :cond_96
    const/4 v5, 0x0

    :goto_97
    instance-of v6, v4, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$SetFuture;

    xor-int/2addr v6, v8

    and-int/2addr v5, v6

    if-eqz v5, :cond_a2

    .line 455
    invoke-direct {v0, v4}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 457
    :cond_a2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_af

    .line 460
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    goto :goto_8c

    .line 458
    :cond_af
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 463
    :cond_b5
    invoke-virtual/range {p0 .. p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->toString()Ljava/lang/String;

    move-result-object v6

    .line 464
    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 465
    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x1c

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "Waited "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 467
    add-long v11, v4, v13

    cmp-long v15, v11, v9

    if-gez v15, :cond_198

    .line 469
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v11, " (plus "

    invoke-virtual {v1, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 470
    neg-long v4, v4

    .line 471
    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v11}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v11

    .line 472
    invoke-virtual {v3, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v17

    sub-long v4, v4, v17

    .line 473
    cmp-long v3, v11, v9

    if-eqz v3, :cond_11d

    cmp-long v3, v4, v13

    if-lez v3, :cond_11a

    goto :goto_11d

    :cond_11a
    const/16 v16, 0x0

    goto :goto_11f

    :cond_11d
    :goto_11d
    const/16 v16, 0x1

    .line 475
    :goto_11f
    cmp-long v3, v11, v9

    if-lez v3, :cond_167

    .line 476
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x15

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v3, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 477
    if-eqz v16, :cond_15f

    .line 478
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 480
    :cond_15f
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 482
    :cond_167
    if-eqz v16, :cond_18e

    .line 483
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nanoseconds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 486
    :cond_18e
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "delay)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 491
    :cond_198
    invoke-virtual/range {p0 .. p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->isDone()Z

    move-result v2

    if-eqz v2, :cond_1ae

    .line 492
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, " but future completed as timeout expired"

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 494
    :cond_1ae
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 403
    :cond_1de
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    goto :goto_1e5

    :goto_1e4
    throw v1

    :goto_1e5
    goto :goto_1e4
.end method

.method protected interruptTask()V
    .registers 1

    .line 661
    return-void
.end method

.method public isCancelled()Z
    .registers 2

    .line 570
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 571
    instance-of v0, v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;

    return v0
.end method

.method public isDone()Z
    .registers 4

    .line 564
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 565
    const/4 v1, 0x1

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    goto :goto_8

    :cond_7
    const/4 v2, 0x0

    :goto_8
    instance-of v0, v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$SetFuture;

    xor-int/2addr v0, v1

    and-int/2addr v0, v2

    return v0
.end method

.method final maybePropagateCancellationTo(Ljava/util/concurrent/Future;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "related"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 1018
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->isCancelled()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    .line 1019
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->wasInterrupted()Z

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 1021
    :cond_13
    return-void
.end method

.method protected pendingToString()Ljava/lang/String;
    .registers 5

    .line 1097
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 1098
    instance-of v1, v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$SetFuture;

    if-eqz v1, :cond_32

    .line 1099
    check-cast v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$SetFuture;

    iget-object v0, v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$SetFuture;->future:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    invoke-direct {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->userObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "setFuture=["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1100
    :cond_32
    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_5b

    .line 1101
    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1102
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const/16 v2, 0x29

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "remaining delay=["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1101
    return-object v0

    .line 1105
    :cond_5b
    const/4 v0, 0x0

    return-object v0
.end method

.method protected set(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 724
    if-nez p1, :cond_4

    sget-object p1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->NULL:Ljava/lang/Object;

    .line 725
    :cond_4
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 726
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->complete(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;)V

    .line 727
    const/4 p1, 0x1

    return p1

    .line 729
    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method protected setException(Ljava/lang/Throwable;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 746
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Failure;

    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 747
    sget-object p1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 748
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->complete(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;)V

    .line 749
    const/4 p1, 0x1

    return p1

    .line 751
    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method protected setFuture(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;)Z
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "future"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 783
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 785
    const/4 v1, 0x0

    if-nez v0, :cond_46

    .line 786
    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;->isDone()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_21

    .line 787
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->getFutureValue(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object p1

    .line 788
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v0, p0, v3, p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 789
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->complete(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;)V

    .line 790
    return v2

    .line 792
    :cond_20
    return v1

    .line 794
    :cond_21
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$SetFuture;

    invoke-direct {v0, p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$SetFuture;-><init>(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;)V

    .line 795
    sget-object v4, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v4, p0, v3, v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 799
    :try_start_2e
    sget-object v1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/DirectExecutor;->INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/DirectExecutor;

    invoke-interface {p1, v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_34

    .line 812
    goto :goto_43

    .line 800
    :catchall_34
    move-exception p1

    .line 806
    :try_start_35
    new-instance v1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Failure;

    invoke-direct {v1, p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_3b

    .line 809
    goto :goto_3e

    .line 807
    :catchall_3b
    move-exception p1

    .line 808
    sget-object v1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Failure;->FALLBACK_INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Failure;

    .line 811
    :goto_3e
    sget-object p1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {p1, p0, v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 813
    :goto_43
    return v2

    .line 815
    :cond_44
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 819
    :cond_46
    instance-of v2, v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;

    if-eqz v2, :cond_51

    .line 821
    check-cast v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;

    iget-boolean v0, v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;->wasInterrupted:Z

    invoke-interface {p1, v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 823
    :cond_51
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1063
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->isCancelled()Z

    move-result v1

    const-string v2, "]"

    if-eqz v1, :cond_21

    .line 1064
    const-string v1, "CANCELLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7b

    .line 1065
    :cond_21
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1066
    invoke-direct {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->addDoneString(Ljava/lang/StringBuilder;)V

    goto :goto_7b

    .line 1070
    :cond_2b
    :try_start_2b
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->pendingToString()Ljava/lang/String;

    move-result-object v1
    :try_end_2f
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2f} :catch_30

    .line 1075
    goto :goto_56

    .line 1071
    :catch_30
    move-exception v1

    .line 1074
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x26

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Exception thrown from implementation: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1078
    :goto_56
    if-eqz v1, :cond_6c

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6c

    .line 1079
    const-string v3, "PENDING, info=["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7b

    .line 1080
    :cond_6c
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 1081
    invoke-direct {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->addDoneString(Ljava/lang/StringBuilder;)V

    goto :goto_7b

    .line 1083
    :cond_76
    const-string v1, "PENDING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    :goto_7b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final tryInternalFastPathGetFailure()Ljava/lang/Throwable;
    .registers 3

    .line 1004
    instance-of v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Trusted;

    if-eqz v0, :cond_f

    .line 1005
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 1006
    instance-of v1, v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Failure;

    if-eqz v1, :cond_f

    .line 1007
    check-cast v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Failure;

    iget-object v0, v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Failure;->exception:Ljava/lang/Throwable;

    return-object v0

    .line 1010
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final wasInterrupted()Z
    .registers 3

    .line 670
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 671
    instance-of v1, v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;

    if-eqz v1, :cond_e

    check-cast v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;

    iget-boolean v0, v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;->wasInterrupted:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method
