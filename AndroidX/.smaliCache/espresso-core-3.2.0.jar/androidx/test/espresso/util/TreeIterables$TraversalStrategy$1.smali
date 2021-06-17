.class final enum Landroidx/test/espresso/util/TreeIterables$TraversalStrategy$1;
.super Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;
.source "TreeIterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;-><init>(Ljava/lang/String;ILandroidx/test/espresso/util/TreeIterables$1;)V

    return-void
.end method


# virtual methods
.method combineNewChildren(Ljava/util/LinkedList;Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nodes",
            "newChildren"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/LinkedList<",
            "TT;>;",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 160
    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 161
    return-void
.end method
