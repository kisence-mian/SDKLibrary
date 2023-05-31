.class Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$1;
.super Ljava/lang/Object;
.source "CoordinatorLayout.java"

# interfaces
.implements Ltds/androidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->setupForInsets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .registers 2
    .param p1, "this$0"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 3313
    iput-object p1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$1;->this$0:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Ltds/androidx/core/view/WindowInsetsCompat;)Ltds/androidx/core/view/WindowInsetsCompat;
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Ltds/androidx/core/view/WindowInsetsCompat;

    .line 3317
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$1;->this$0:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0, p2}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->setWindowInsets(Ltds/androidx/core/view/WindowInsetsCompat;)Ltds/androidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method
