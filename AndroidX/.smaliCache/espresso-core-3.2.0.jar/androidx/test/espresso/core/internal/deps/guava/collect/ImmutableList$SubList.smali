.class Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$SubList;
.super Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final transient length:I

.field final transient offset:I

.field final synthetic this$0:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;


# direct methods
.method constructor <init>(Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "offset",
            "length"
        }
    .end annotation

    .line 436
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$SubList;->this$0:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;-><init>()V

    .line 437
    iput p2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$SubList;->offset:I

    .line 438
    iput p3, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$SubList;->length:I

    .line 439
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .registers 4
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

    .line 463
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$SubList;->length:I

    invoke-static {p1, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkElementIndex(II)I

    .line 464
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$SubList;->this$0:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    iget v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$SubList;->offset:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method internalArray()[Ljava/lang/Object;
    .registers 2

    .line 448
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$SubList;->this$0:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->internalArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method internalArrayEnd()I
    .registers 3

    .line 458
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$SubList;->this$0:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->internalArrayStart()I

    move-result v0

    iget v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$SubList;->offset:I

    add-int/2addr v0, v1

    iget v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$SubList;->length:I

    add-int/2addr v0, v1

    return v0
.end method

.method internalArrayStart()I
    .registers 3

    .line 453
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$SubList;->this$0:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->internalArrayStart()I

    move-result v0

    iget v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$SubList;->offset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public size()I
    .registers 2

    .line 443
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$SubList;->length:I

    return v0
.end method

.method public subList(II)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromIndex",
            "toIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 469
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$SubList;->length:I

    invoke-static {p1, p2, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkPositionIndexes(III)V

    .line 470
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$SubList;->this$0:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    iget v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$SubList;->offset:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->subList(II)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "fromIndex",
            "toIndex"
        }
    .end annotation

    .line 432
    invoke-virtual {p0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$SubList;->subList(II)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method
