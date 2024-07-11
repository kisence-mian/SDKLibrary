.class final Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence$Identity;
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
    name = "Identity"
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
.field static final INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence$Identity;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 351
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence$Identity;

    invoke-direct {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence$Identity;-><init>()V

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence$Identity;->INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence$Identity;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 349
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .line 364
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence$Identity;->INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence$Identity;

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

    .line 355
    const/4 p1, 0x0

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

    .line 360
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
