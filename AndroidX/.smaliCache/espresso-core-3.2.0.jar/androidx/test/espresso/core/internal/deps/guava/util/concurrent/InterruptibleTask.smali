.class abstract Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "InterruptibleTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask$DoNothingRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Runnable;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final DONE:Ljava/lang/Runnable;

.field private static final INTERRUPTING:Ljava/lang/Runnable;

.field private static final PARKED:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    const-class v0, Ljava/util/concurrent/locks/LockSupport;

    .line 44
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask$DoNothingRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask$DoNothingRunnable;-><init>(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask$1;)V

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->DONE:Ljava/lang/Runnable;

    .line 45
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask$DoNothingRunnable;

    invoke-direct {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask$DoNothingRunnable;-><init>(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask$1;)V

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->INTERRUPTING:Ljava/lang/Runnable;

    .line 46
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask$DoNothingRunnable;

    invoke-direct {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask$DoNothingRunnable;-><init>(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask$1;)V

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->PARKED:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method abstract afterRanInterruptibly(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "result",
            "error"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation
.end method

.method final interruptTask()V
    .registers 5

    .line 164
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 165
    instance-of v1, v0, Ljava/lang/Thread;

    if-eqz v1, :cond_3d

    sget-object v1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->INTERRUPTING:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 171
    :try_start_12
    move-object v1, v0

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_2a

    .line 173
    sget-object v1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->DONE:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 174
    sget-object v2, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->PARKED:Ljava/lang/Runnable;

    if-ne v1, v2, :cond_29

    .line 175
    check-cast v0, Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 177
    :cond_29
    goto :goto_3d

    .line 173
    :catchall_2a
    move-exception v1

    sget-object v2, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->DONE:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 174
    sget-object v3, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->PARKED:Ljava/lang/Runnable;

    if-ne v2, v3, :cond_3c

    .line 175
    check-cast v0, Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 177
    :cond_3c
    throw v1

    .line 179
    :cond_3d
    :goto_3d
    return-void
.end method

.method abstract isDone()Z
.end method

.method public final run()V
    .registers 13

    .line 59
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 60
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 61
    return-void

    .line 64
    :cond_c
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->isDone()Z

    move-result v2

    .line 65
    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 66
    nop

    .line 68
    const/16 v4, 0x3e8

    const/4 v5, 0x0

    if-eqz v2, :cond_6d

    .line 69
    :try_start_18
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->runInterruptibly()Ljava/lang/Object;

    move-result-object v6
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1d

    goto :goto_6e

    .line 71
    :catchall_1d
    move-exception v6

    .line 72
    nop

    .line 75
    sget-object v7, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->DONE:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v7}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_67

    .line 82
    nop

    .line 83
    nop

    .line 93
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Runnable;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 94
    :goto_31
    sget-object v10, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->INTERRUPTING:Ljava/lang/Runnable;

    if-eq v7, v10, :cond_40

    sget-object v11, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->PARKED:Ljava/lang/Runnable;

    if-ne v7, v11, :cond_3a

    goto :goto_40

    .line 123
    :cond_3a
    if-eqz v8, :cond_67

    .line 124
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_67

    .line 95
    :cond_40
    :goto_40
    add-int/2addr v9, v3

    .line 96
    if-le v9, v4, :cond_5d

    .line 103
    sget-object v11, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->PARKED:Ljava/lang/Runnable;

    if-eq v7, v11, :cond_4d

    invoke-virtual {p0, v10, v11}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_60

    .line 115
    :cond_4d
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-nez v7, :cond_58

    if-eqz v8, :cond_56

    goto :goto_58

    :cond_56
    const/4 v8, 0x0

    goto :goto_59

    :cond_58
    :goto_58
    const/4 v8, 0x1

    .line 116
    :goto_59
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_60

    .line 119
    :cond_5d
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 121
    :cond_60
    :goto_60
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Runnable;

    goto :goto_31

    .line 132
    :cond_67
    :goto_67
    if-eqz v2, :cond_bb

    .line 133
    invoke-virtual {p0, v1, v6}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->afterRanInterruptibly(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_bb

    .line 68
    :cond_6d
    move-object v6, v1

    .line 75
    :goto_6e
    sget-object v7, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->DONE:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v7}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b6

    .line 82
    nop

    .line 83
    nop

    .line 93
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Runnable;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 94
    :goto_80
    sget-object v10, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->INTERRUPTING:Ljava/lang/Runnable;

    if-eq v7, v10, :cond_8f

    sget-object v11, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->PARKED:Ljava/lang/Runnable;

    if-ne v7, v11, :cond_89

    goto :goto_8f

    .line 123
    :cond_89
    if-eqz v8, :cond_b6

    .line 124
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_b6

    .line 95
    :cond_8f
    :goto_8f
    add-int/2addr v9, v3

    .line 96
    if-le v9, v4, :cond_ac

    .line 103
    sget-object v11, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->PARKED:Ljava/lang/Runnable;

    if-eq v7, v11, :cond_9c

    invoke-virtual {p0, v10, v11}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_af

    .line 115
    :cond_9c
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-nez v7, :cond_a7

    if-eqz v8, :cond_a5

    goto :goto_a7

    :cond_a5
    const/4 v8, 0x0

    goto :goto_a8

    :cond_a7
    :goto_a7
    const/4 v8, 0x1

    .line 116
    :goto_a8
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_af

    .line 119
    :cond_ac
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 121
    :cond_af
    :goto_af
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Runnable;

    goto :goto_80

    .line 132
    :cond_b6
    :goto_b6
    if-eqz v2, :cond_bb

    .line 133
    invoke-virtual {p0, v6, v1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->afterRanInterruptibly(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 136
    :cond_bb
    :goto_bb
    return-void
.end method

.method abstract runInterruptibly()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method abstract toPendingString()Ljava/lang/String;
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 183
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 185
    sget-object v1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->DONE:Ljava/lang/Runnable;

    if-ne v0, v1, :cond_d

    .line 186
    const-string v0, "running=[DONE]"

    goto :goto_44

    .line 187
    :cond_d
    sget-object v1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->INTERRUPTING:Ljava/lang/Runnable;

    if-ne v0, v1, :cond_14

    .line 188
    const-string v0, "running=[INTERRUPTED]"

    goto :goto_44

    .line 189
    :cond_14
    instance-of v1, v0, Ljava/lang/Thread;

    if-eqz v1, :cond_42

    .line 191
    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "running=[RUNNING ON "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_44

    .line 193
    :cond_42
    const-string v0, "running=[NOT STARTED YET]"

    .line 195
    :goto_44
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->toPendingString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
