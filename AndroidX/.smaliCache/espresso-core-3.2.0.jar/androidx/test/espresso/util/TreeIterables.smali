.class public final Landroidx/test/espresso/util/TreeIterables;
.super Ljava/lang/Object;
.source "TreeIterables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/util/TreeIterables$ViewAndDistance;,
        Landroidx/test/espresso/util/TreeIterables$TreeViewer;,
        Landroidx/test/espresso/util/TreeIterables$DistanceRecordingTreeViewer;,
        Landroidx/test/espresso/util/TreeIterables$ViewTreeViewer;,
        Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;,
        Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable;
    }
.end annotation


# static fields
.field private static final VIEW_TREE_VIEWER:Landroidx/test/espresso/util/TreeIterables$TreeViewer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/util/TreeIterables$TreeViewer<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Landroidx/test/espresso/util/TreeIterables$ViewTreeViewer;

    invoke-direct {v0}, Landroidx/test/espresso/util/TreeIterables$ViewTreeViewer;-><init>()V

    sput-object v0, Landroidx/test/espresso/util/TreeIterables;->VIEW_TREE_VIEWER:Landroidx/test/espresso/util/TreeIterables$TreeViewer;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static breadthFirstTraversal(Ljava/lang/Object;Landroidx/test/espresso/util/TreeIterables$TreeViewer;)Ljava/lang/Iterable;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "root",
            "viewer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroidx/test/espresso/util/TreeIterables$TreeViewer<",
            "TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 119
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v0, Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable;

    sget-object v1, Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;->BREADTH_FIRST:Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable;-><init>(Ljava/lang/Object;Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;Landroidx/test/espresso/util/TreeIterables$TreeViewer;Landroidx/test/espresso/util/TreeIterables$1;)V

    return-object v0
.end method

.method public static breadthFirstViewTraversal(Landroid/view/View;)Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "root"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/lang/Iterable<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 93
    sget-object v0, Landroidx/test/espresso/util/TreeIterables;->VIEW_TREE_VIEWER:Landroidx/test/espresso/util/TreeIterables$TreeViewer;

    invoke-static {p0, v0}, Landroidx/test/espresso/util/TreeIterables;->breadthFirstTraversal(Ljava/lang/Object;Landroidx/test/espresso/util/TreeIterables$TreeViewer;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method static depthFirstTraversal(Ljava/lang/Object;Landroidx/test/espresso/util/TreeIterables$TreeViewer;)Ljava/lang/Iterable;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "root",
            "viewer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroidx/test/espresso/util/TreeIterables$TreeViewer<",
            "TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 105
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v0, Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable;

    sget-object v1, Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;->DEPTH_FIRST:Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable;-><init>(Ljava/lang/Object;Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;Landroidx/test/espresso/util/TreeIterables$TreeViewer;Landroidx/test/espresso/util/TreeIterables$1;)V

    return-object v0
.end method

.method public static depthFirstViewTraversal(Landroid/view/View;)Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "root"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/lang/Iterable<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 82
    sget-object v0, Landroidx/test/espresso/util/TreeIterables;->VIEW_TREE_VIEWER:Landroidx/test/espresso/util/TreeIterables$TreeViewer;

    invoke-static {p0, v0}, Landroidx/test/espresso/util/TreeIterables;->depthFirstTraversal(Ljava/lang/Object;Landroidx/test/espresso/util/TreeIterables$TreeViewer;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public static depthFirstViewTraversalWithDistance(Landroid/view/View;)Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "root"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/lang/Iterable<",
            "Landroidx/test/espresso/util/TreeIterables$ViewAndDistance;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Landroidx/test/espresso/util/TreeIterables$DistanceRecordingTreeViewer;

    sget-object v1, Landroidx/test/espresso/util/TreeIterables;->VIEW_TREE_VIEWER:Landroidx/test/espresso/util/TreeIterables$TreeViewer;

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/util/TreeIterables$DistanceRecordingTreeViewer;-><init>(Ljava/lang/Object;Landroidx/test/espresso/util/TreeIterables$TreeViewer;)V

    .line 64
    nop

    .line 65
    invoke-static {p0, v0}, Landroidx/test/espresso/util/TreeIterables;->depthFirstTraversal(Ljava/lang/Object;Landroidx/test/espresso/util/TreeIterables$TreeViewer;)Ljava/lang/Iterable;

    move-result-object p0

    new-instance v1, Landroidx/test/espresso/util/TreeIterables$1;

    invoke-direct {v1, v0}, Landroidx/test/espresso/util/TreeIterables$1;-><init>(Landroidx/test/espresso/util/TreeIterables$DistanceRecordingTreeViewer;)V

    .line 64
    invoke-static {p0, v1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Iterables;->transform(Ljava/lang/Iterable;Landroidx/test/espresso/core/internal/deps/guava/base/Function;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method
