.class final Ltds/androidx/core/view/ViewCompat$1;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltds/androidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Ltds/androidx/core/view/OnApplyWindowInsetsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Ltds/androidx/core/view/OnApplyWindowInsetsListener;


# direct methods
.method constructor <init>(Ltds/androidx/core/view/OnApplyWindowInsetsListener;)V
    .registers 2

    .line 1770
    iput-object p1, p0, Ltds/androidx/core/view/ViewCompat$1;->val$listener:Ltds/androidx/core/view/OnApplyWindowInsetsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .line 1773
    nop

    .line 1774
    invoke-static {p2, p1}, Ltds/androidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Ltds/androidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 1775
    .local v0, "compatInsets":Ltds/androidx/core/view/WindowInsetsCompat;
    iget-object v1, p0, Ltds/androidx/core/view/ViewCompat$1;->val$listener:Ltds/androidx/core/view/OnApplyWindowInsetsListener;

    invoke-interface {v1, p1, v0}, Ltds/androidx/core/view/OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Ltds/androidx/core/view/WindowInsetsCompat;)Ltds/androidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 1776
    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    return-object v1
.end method
