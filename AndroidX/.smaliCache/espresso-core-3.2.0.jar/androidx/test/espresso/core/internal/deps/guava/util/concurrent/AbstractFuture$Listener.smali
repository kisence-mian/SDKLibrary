.class final Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;
.super Ljava/lang/Object;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Listener"
.end annotation


# static fields
.field static final TOMBSTONE:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;


# instance fields
.field final executor:Ljava/util/concurrent/Executor;

.field next:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;

.field final task:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 253
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;->TOMBSTONE:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;

    return-void
.end method

.method constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "task",
            "executor"
        }
    .end annotation

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;->task:Ljava/lang/Runnable;

    .line 262
    iput-object p2, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;->executor:Ljava/util/concurrent/Executor;

    .line 263
    return-void
.end method
