.class final Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState$1;
.super Ljava/lang/Object;
.source "BottomSheetBehavior.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1476
    new-instance v0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 1470
    new-instance v0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;

    invoke-direct {v0, p1, p2}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1466
    invoke-virtual {p0, p1}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 3

    .line 1466
    invoke-virtual {p0, p1, p2}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;
    .registers 3
    .param p1, "size"    # I

    .line 1482
    new-array v0, p1, [Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1466
    invoke-virtual {p0, p1}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState$1;->newArray(I)[Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;

    move-result-object p1

    return-object p1
.end method
