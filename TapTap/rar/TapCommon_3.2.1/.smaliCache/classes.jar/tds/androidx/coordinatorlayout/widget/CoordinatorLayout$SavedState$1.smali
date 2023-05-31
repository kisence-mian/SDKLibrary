.class final Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState$1;
.super Ljava/lang/Object;
.source "CoordinatorLayout.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 3376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 3376
    invoke-virtual {p0, p1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 3

    .line 3376
    invoke-virtual {p0, p1, p2}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 3384
    new-instance v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 3379
    new-instance v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;

    invoke-direct {v0, p1, p2}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 3376
    invoke-virtual {p0, p1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState$1;->newArray(I)[Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;
    .registers 3
    .param p1, "size"    # I

    .line 3389
    new-array v0, p1, [Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;

    return-object v0
.end method
