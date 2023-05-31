.class final Ltds/com/google/android/material/internal/ViewUtils$3;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Ltds/androidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltds/com/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Ltds/com/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$initialPadding:Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;

.field final synthetic val$listener:Ltds/com/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# direct methods
.method constructor <init>(Ltds/com/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;)V
    .registers 3

    .line 224
    iput-object p1, p0, Ltds/com/google/android/material/internal/ViewUtils$3;->val$listener:Ltds/com/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;

    iput-object p2, p0, Ltds/com/google/android/material/internal/ViewUtils$3;->val$initialPadding:Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Ltds/androidx/core/view/WindowInsetsCompat;)Ltds/androidx/core/view/WindowInsetsCompat;
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Ltds/androidx/core/view/WindowInsetsCompat;

    .line 227
    iget-object v0, p0, Ltds/com/google/android/material/internal/ViewUtils$3;->val$listener:Ltds/com/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;

    new-instance v1, Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;

    iget-object v2, p0, Ltds/com/google/android/material/internal/ViewUtils$3;->val$initialPadding:Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;

    invoke-direct {v1, v2}, Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;-><init>(Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;)V

    invoke-interface {v0, p1, p2, v1}, Ltds/com/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Ltds/androidx/core/view/WindowInsetsCompat;Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;)Ltds/androidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method
