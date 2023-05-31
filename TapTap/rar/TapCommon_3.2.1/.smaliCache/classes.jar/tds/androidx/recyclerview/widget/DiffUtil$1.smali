.class final Ltds/androidx/recyclerview/widget/DiffUtil$1;
.super Ljava/lang/Object;
.source "DiffUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ltds/androidx/recyclerview/widget/DiffUtil$Diagonal;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 87
    check-cast p1, Ltds/androidx/recyclerview/widget/DiffUtil$Diagonal;

    check-cast p2, Ltds/androidx/recyclerview/widget/DiffUtil$Diagonal;

    invoke-virtual {p0, p1, p2}, Ltds/androidx/recyclerview/widget/DiffUtil$1;->compare(Ltds/androidx/recyclerview/widget/DiffUtil$Diagonal;Ltds/androidx/recyclerview/widget/DiffUtil$Diagonal;)I

    move-result p1

    return p1
.end method

.method public compare(Ltds/androidx/recyclerview/widget/DiffUtil$Diagonal;Ltds/androidx/recyclerview/widget/DiffUtil$Diagonal;)I
    .registers 5
    .param p1, "o1"    # Ltds/androidx/recyclerview/widget/DiffUtil$Diagonal;
    .param p2, "o2"    # Ltds/androidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 90
    iget v0, p1, Ltds/androidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    iget v1, p2, Ltds/androidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    sub-int/2addr v0, v1

    return v0
.end method
