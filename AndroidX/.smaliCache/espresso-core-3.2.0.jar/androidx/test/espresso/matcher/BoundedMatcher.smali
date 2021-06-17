.class public abstract Landroidx/test/espresso/matcher/BoundedMatcher;
.super Lorg/hamcrest/BaseMatcher;
.source "BoundedMatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:TT;>",
        "Lorg/hamcrest/BaseMatcher<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final expectedType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final interfaceTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expectedType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TS;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lorg/hamcrest/BaseMatcher;-><init>()V

    .line 37
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Landroidx/test/espresso/matcher/BoundedMatcher;->expectedType:Ljava/lang/Class;

    .line 38
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Class;

    iput-object p1, p0, Landroidx/test/espresso/matcher/BoundedMatcher;->interfaceTypes:[Ljava/lang/Class;

    .line 39
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "expectedType",
            "interfaceType1",
            "otherInterfaces"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lorg/hamcrest/BaseMatcher;-><init>()V

    .line 43
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Landroidx/test/espresso/matcher/BoundedMatcher;->expectedType:Ljava/lang/Class;

    .line 44
    invoke-static {p3}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    array-length p1, p3

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 46
    new-array p1, p1, [Ljava/lang/Class;

    iput-object p1, p0, Landroidx/test/espresso/matcher/BoundedMatcher;->interfaceTypes:[Ljava/lang/Class;

    .line 48
    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, p1, v2

    .line 49
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result p1

    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkArgument(Z)V

    .line 50
    nop

    .line 51
    array-length p1, p3

    const/4 p2, 0x1

    :goto_28
    if-ge v2, p1, :cond_41

    aget-object v1, p3, v2

    .line 52
    iget-object v3, p0, Landroidx/test/espresso/matcher/BoundedMatcher;->interfaceTypes:[Ljava/lang/Class;

    invoke-static {v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    aput-object v4, v3, p2

    .line 53
    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    invoke-static {v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkArgument(Z)V

    .line 54
    add-int/2addr p2, v0

    .line 51
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 56
    :cond_41
    return-void
.end method


# virtual methods
.method public final matches(Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 64
    return v0

    .line 67
    :cond_4
    iget-object v1, p0, Landroidx/test/espresso/matcher/BoundedMatcher;->expectedType:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 68
    iget-object v1, p0, Landroidx/test/espresso/matcher/BoundedMatcher;->interfaceTypes:[Ljava/lang/Class;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_1e

    aget-object v4, v1, v3

    .line 69
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 70
    return v0

    .line 68
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 73
    :cond_1e
    invoke-virtual {p0, p1}, Landroidx/test/espresso/matcher/BoundedMatcher;->matchesSafely(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 75
    :cond_23
    return v0
.end method

.method protected abstract matchesSafely(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation
.end method
