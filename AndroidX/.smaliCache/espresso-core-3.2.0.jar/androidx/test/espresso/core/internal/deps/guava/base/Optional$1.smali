.class Landroidx/test/espresso/core/internal/deps/guava/base/Optional$1;
.super Ljava/lang/Object;
.source "Optional.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->presentInstances(Ljava/lang/Iterable;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$optionals:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$optionals"
        }
    .end annotation

    .line 289
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/base/Optional$1;->val$optionals:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 292
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/base/Optional$1$1;

    invoke-direct {v0, p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional$1$1;-><init>(Landroidx/test/espresso/core/internal/deps/guava/base/Optional$1;)V

    return-object v0
.end method
