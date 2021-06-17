.class Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$SerializedForm;
.super Ljava/lang/Object;
.source "ImmutableSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializedForm"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final elements:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$SerializedForm;->elements:[Ljava/lang/Object;

    .line 364
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .registers 2

    .line 367
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$SerializedForm;->elements:[Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->copyOf([Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
