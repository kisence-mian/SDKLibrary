.class final Landroidx/test/espresso/core/internal/deps/guava/base/Absent;
.super Landroidx/test/espresso/core/internal/deps/guava/base/Optional;
.source "Absent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/test/espresso/core/internal/deps/guava/base/Optional<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/base/Absent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/base/Absent<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/base/Absent;

    invoke-direct {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Absent;-><init>()V

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/base/Absent;->INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/base/Absent;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .line 96
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/base/Absent;->INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/base/Absent;

    return-object v0
.end method

.method static withType()Landroidx/test/espresso/core/internal/deps/guava/base/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 31
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/base/Absent;->INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/base/Absent;

    return-object v0
.end method


# virtual methods
.method public asSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 71
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 82
    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method public get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Optional.get() cannot be called on an absent value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 2

    .line 87
    const v0, 0x79a31aac

    return v0
.end method

.method public isPresent()Z
    .registers 2

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public or(Landroidx/test/espresso/core/internal/deps/guava/base/Optional;)Landroidx/test/espresso/core/internal/deps/guava/base/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secondChoice"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Optional<",
            "+TT;>;)",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 54
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    return-object p1
.end method

.method public or(Landroidx/test/espresso/core/internal/deps/guava/base/Supplier;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Supplier<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 59
    nop

    .line 60
    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    .line 59
    const-string v0, "use Optional.orNull() instead of a Supplier that returns null"

    invoke-static {p1, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public or(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 48
    const-string v0, "use Optional.orNull() instead of Optional.or(null)"

    invoke-static {p1, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public orNull()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 92
    const-string v0, "Optional.absent()"

    return-object v0
.end method

.method public transform(Landroidx/test/espresso/core/internal/deps/guava/base/Function;)Landroidx/test/espresso/core/internal/deps/guava/base/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "function"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Function<",
            "-TT;TV;>;)",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Optional<",
            "TV;>;"
        }
    .end annotation

    .line 76
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->absent()Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    move-result-object p1

    return-object p1
.end method
