.class Landroidx/test/espresso/util/TreeIterables$1;
.super Ljava/lang/Object;
.source "TreeIterables.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/guava/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/util/TreeIterables;->depthFirstViewTraversalWithDistance(Landroid/view/View;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/test/espresso/core/internal/deps/guava/base/Function<",
        "Landroid/view/View;",
        "Landroidx/test/espresso/util/TreeIterables$ViewAndDistance;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$distanceRecorder:Landroidx/test/espresso/util/TreeIterables$DistanceRecordingTreeViewer;


# direct methods
.method constructor <init>(Landroidx/test/espresso/util/TreeIterables$DistanceRecordingTreeViewer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$distanceRecorder"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Landroidx/test/espresso/util/TreeIterables$1;->val$distanceRecorder:Landroidx/test/espresso/util/TreeIterables$DistanceRecordingTreeViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;)Landroidx/test/espresso/util/TreeIterables$ViewAndDistance;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 69
    new-instance v0, Landroidx/test/espresso/util/TreeIterables$ViewAndDistance;

    iget-object v1, p0, Landroidx/test/espresso/util/TreeIterables$1;->val$distanceRecorder:Landroidx/test/espresso/util/TreeIterables$DistanceRecordingTreeViewer;

    invoke-virtual {v1, p1}, Landroidx/test/espresso/util/TreeIterables$DistanceRecordingTreeViewer;->getDistance(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Landroidx/test/espresso/util/TreeIterables$ViewAndDistance;-><init>(Landroid/view/View;ILandroidx/test/espresso/util/TreeIterables$1;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "view"
        }
    .end annotation

    .line 66
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/util/TreeIterables$1;->apply(Landroid/view/View;)Landroidx/test/espresso/util/TreeIterables$ViewAndDistance;

    move-result-object p1

    return-object p1
.end method
