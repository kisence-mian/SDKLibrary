.class Ltds/com/google/android/material/internal/ViewGroupOverlayApi14;
.super Ltds/com/google/android/material/internal/ViewOverlayApi14;
.source "ViewGroupOverlayApi14.java"

# interfaces
.implements Ltds/com/google/android/material/internal/ViewGroupOverlayImpl;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostView"    # Landroid/view/ViewGroup;
    .param p3, "requestingView"    # Landroid/view/View;

    .line 27
    invoke-direct {p0, p1, p2, p3}, Ltds/com/google/android/material/internal/ViewOverlayApi14;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 28
    return-void
.end method

.method static createFrom(Landroid/view/ViewGroup;)Ltds/com/google/android/material/internal/ViewGroupOverlayApi14;
    .registers 2
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;

    .line 31
    invoke-static {p0}, Ltds/com/google/android/material/internal/ViewOverlayApi14;->createFrom(Landroid/view/View;)Ltds/com/google/android/material/internal/ViewOverlayApi14;

    move-result-object v0

    check-cast v0, Ltds/com/google/android/material/internal/ViewGroupOverlayApi14;

    return-object v0
.end method


# virtual methods
.method public add(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 36
    iget-object v0, p0, Ltds/com/google/android/material/internal/ViewGroupOverlayApi14;->overlayViewGroup:Ltds/com/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;

    invoke-virtual {v0, p1}, Ltds/com/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->add(Landroid/view/View;)V

    .line 37
    return-void
.end method

.method public remove(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 41
    iget-object v0, p0, Ltds/com/google/android/material/internal/ViewGroupOverlayApi14;->overlayViewGroup:Ltds/com/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;

    invoke-virtual {v0, p1}, Ltds/com/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->remove(Landroid/view/View;)V

    .line 42
    return-void
.end method
