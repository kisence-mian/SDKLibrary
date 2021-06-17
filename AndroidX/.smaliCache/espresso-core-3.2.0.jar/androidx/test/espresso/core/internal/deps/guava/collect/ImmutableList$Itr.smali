.class Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$Itr;
.super Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIndexedListIterator;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIndexedListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final list:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList<",
            "TE;>;I)V"
        }
    .end annotation

    .line 379
    invoke-virtual {p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIndexedListIterator;-><init>(II)V

    .line 380
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$Itr;->list:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    .line 381
    return-void
.end method


# virtual methods
.method protected get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 385
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$Itr;->list:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    invoke-virtual {v0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
