.class public Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/com/google/android/material/internal/ViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RelativePadding"
.end annotation


# instance fields
.field public bottom:I

.field public end:I

.field public start:I

.field public top:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput p1, p0, Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    .line 122
    iput p2, p0, Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;->top:I

    .line 123
    iput p3, p0, Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    .line 124
    iput p4, p0, Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    .line 125
    return-void
.end method

.method public constructor <init>(Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;)V
    .registers 3
    .param p1, "other"    # Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iget v0, p1, Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    iput v0, p0, Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    .line 129
    iget v0, p1, Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;->top:I

    iput v0, p0, Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;->top:I

    .line 130
    iget v0, p1, Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    iput v0, p0, Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    .line 131
    iget v0, p1, Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    iput v0, p0, Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    .line 132
    return-void
.end method


# virtual methods
.method public applyToView(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 136
    iget v0, p0, Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    iget v1, p0, Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;->top:I

    iget v2, p0, Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    iget v3, p0, Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    invoke-static {p1, v0, v1, v2, v3}, Ltds/androidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 137
    return-void
.end method
