.class final Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Failure;
.super Ljava/lang/Object;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Failure"
.end annotation


# static fields
.field static final FALLBACK_INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Failure;


# instance fields
.field final exception:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 271
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Failure;

    new-instance v1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Failure$1;

    const-string v2, "Failure occurred while trying to finish a future."

    invoke-direct {v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Failure$1;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Failure;->FALLBACK_INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Failure;

    return-void
.end method

.method constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exception"
        }
    .end annotation

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Failure;->exception:Ljava/lang/Throwable;

    .line 283
    return-void
.end method
