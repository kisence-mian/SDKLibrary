.class Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ThreadFactoryBuilder$1;
.super Ljava/lang/Object;
.source "ThreadFactoryBuilder.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ThreadFactoryBuilder;->doBuild(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ThreadFactoryBuilder;)Ljava/util/concurrent/ThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$backingThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field final synthetic val$count:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic val$daemon:Ljava/lang/Boolean;

.field final synthetic val$nameFormat:Ljava/lang/String;

.field final synthetic val$priority:Ljava/lang/Integer;

.field final synthetic val$uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$backingThreadFactory",
            "val$nameFormat",
            "val$count",
            "val$daemon",
            "val$priority",
            "val$uncaughtExceptionHandler"
        }
    .end annotation

    .line 160
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ThreadFactoryBuilder$1;->val$backingThreadFactory:Ljava/util/concurrent/ThreadFactory;

    iput-object p2, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ThreadFactoryBuilder$1;->val$nameFormat:Ljava/lang/String;

    iput-object p3, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ThreadFactoryBuilder$1;->val$count:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p4, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ThreadFactoryBuilder$1;->val$daemon:Ljava/lang/Boolean;

    iput-object p5, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ThreadFactoryBuilder$1;->val$priority:Ljava/lang/Integer;

    iput-object p6, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ThreadFactoryBuilder$1;->val$uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ThreadFactoryBuilder$1;->val$backingThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    .line 164
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ThreadFactoryBuilder$1;->val$nameFormat:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 165
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ThreadFactoryBuilder$1;->val$count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    # invokes: Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ThreadFactoryBuilder;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ThreadFactoryBuilder;->access$000(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 167
    :cond_21
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ThreadFactoryBuilder$1;->val$daemon:Ljava/lang/Boolean;

    if-eqz v0, :cond_2c

    .line 168
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 170
    :cond_2c
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ThreadFactoryBuilder$1;->val$priority:Ljava/lang/Integer;

    if-eqz v0, :cond_37

    .line 171
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 173
    :cond_37
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ThreadFactoryBuilder$1;->val$uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_3e

    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 176
    :cond_3e
    return-object p1
.end method
