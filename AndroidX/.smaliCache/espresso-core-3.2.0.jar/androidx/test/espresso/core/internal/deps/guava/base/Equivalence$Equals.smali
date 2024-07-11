.class final Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence$Equals;
.super Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;
.source "Equivalence.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Equals"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence$Equals;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 330
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence$Equals;

    invoke-direct {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence$Equals;-><init>()V

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence$Equals;->INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence$Equals;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 328
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .line 343
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence$Equals;->INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence$Equals;

    return-object v0
.end method


# virtual methods
.method protected doEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 334
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected doHash(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 339
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method
