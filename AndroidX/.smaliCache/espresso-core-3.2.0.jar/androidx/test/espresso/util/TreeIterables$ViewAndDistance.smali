.class public Landroidx/test/espresso/util/TreeIterables$ViewAndDistance;
.super Ljava/lang/Object;
.source "TreeIterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/util/TreeIterables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewAndDistance"
.end annotation


# instance fields
.field private final distanceFromRoot:I

.field private final view:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "distanceFromRoot"
        }
    .end annotation

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p1, p0, Landroidx/test/espresso/util/TreeIterables$ViewAndDistance;->view:Landroid/view/View;

    .line 266
    iput p2, p0, Landroidx/test/espresso/util/TreeIterables$ViewAndDistance;->distanceFromRoot:I

    .line 267
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;ILandroidx/test/espresso/util/TreeIterables$1;)V
    .registers 4

    .line 260
    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/util/TreeIterables$ViewAndDistance;-><init>(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public getDistanceFromRoot()I
    .registers 2

    .line 274
    iget v0, p0, Landroidx/test/espresso/util/TreeIterables$ViewAndDistance;->distanceFromRoot:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .line 270
    iget-object v0, p0, Landroidx/test/espresso/util/TreeIterables$ViewAndDistance;->view:Landroid/view/View;

    return-object v0
.end method
