.class public final Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalNotification;
.super Ljava/util/AbstractMap$SimpleImmutableEntry;
.source "RemovalNotification.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap$SimpleImmutableEntry<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final cause:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "value",
            "cause"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    invoke-static {p3}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalNotification;->cause:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;

    .line 53
    return-void
.end method

.method public static create(Ljava/lang/Object;Ljava/lang/Object;Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;)Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalNotification;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "value",
            "cause"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;",
            ")",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalNotification<",
            "TK;TV;>;"
        }
    .end annotation

    .line 47
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalNotification;

    invoke-direct {v0, p0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalNotification;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;)V

    return-object v0
.end method
