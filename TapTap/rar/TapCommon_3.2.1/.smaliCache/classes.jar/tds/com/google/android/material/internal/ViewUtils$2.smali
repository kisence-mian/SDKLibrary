.class final Ltds/com/google/android/material/internal/ViewUtils$2;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Ltds/com/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltds/com/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Landroid/util/AttributeSet;IILtds/com/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Ltds/com/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# direct methods
.method constructor <init>(Ltds/com/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V
    .registers 2

    .line 174
    iput-object p1, p0, Ltds/com/google/android/material/internal/ViewUtils$2;->val$listener:Ltds/com/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Ltds/androidx/core/view/WindowInsetsCompat;Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;)Ltds/androidx/core/view/WindowInsetsCompat;
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Ltds/androidx/core/view/WindowInsetsCompat;
    .param p3, "initialPadding"    # Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;

    .line 184
    invoke-static {p1}, Ltds/com/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    .line 199
    .local v0, "isRtl":Z
    invoke-virtual {p3, p1}, Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;->applyToView(Landroid/view/View;)V

    .line 200
    iget-object v1, p0, Ltds/com/google/android/material/internal/ViewUtils$2;->val$listener:Ltds/com/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;

    if-eqz v1, :cond_10

    .line 201
    invoke-interface {v1, p1, p2, p3}, Ltds/com/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Ltds/androidx/core/view/WindowInsetsCompat;Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;)Ltds/androidx/core/view/WindowInsetsCompat;

    move-result-object v1

    goto :goto_11

    :cond_10
    move-object v1, p2

    .line 200
    :goto_11
    return-object v1
.end method
