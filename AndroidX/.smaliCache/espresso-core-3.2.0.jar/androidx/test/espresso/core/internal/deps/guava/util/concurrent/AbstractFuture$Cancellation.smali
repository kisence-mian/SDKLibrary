.class final Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;
.super Ljava/lang/Object;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Cancellation"
.end annotation


# static fields
.field static final CAUSELESS_CANCELLED:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;

.field static final CAUSELESS_INTERRUPTED:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;


# instance fields
.field final cause:Ljava/lang/Throwable;

.field final wasInterrupted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 293
    # getter for: Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->GENERATE_CANCELLATION_CAUSES:Z
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->access$300()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 294
    sput-object v1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;->CAUSELESS_CANCELLED:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;

    .line 295
    sput-object v1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;->CAUSELESS_INTERRUPTED:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;

    goto :goto_1c

    .line 297
    :cond_c
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;->CAUSELESS_CANCELLED:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;

    .line 298
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;->CAUSELESS_INTERRUPTED:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;

    .line 300
    :goto_1c
    return-void
.end method

.method constructor <init>(ZLjava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "wasInterrupted",
            "cause"
        }
    .end annotation

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-boolean p1, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;->wasInterrupted:Z

    .line 307
    iput-object p2, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;->cause:Ljava/lang/Throwable;

    .line 308
    return-void
.end method
