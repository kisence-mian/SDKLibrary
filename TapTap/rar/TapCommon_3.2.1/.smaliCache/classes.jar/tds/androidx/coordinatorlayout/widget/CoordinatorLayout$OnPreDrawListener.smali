.class Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;
.super Ljava/lang/Object;
.source "CoordinatorLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnPreDrawListener"
.end annotation


# instance fields
.field final synthetic this$0:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .registers 2
    .param p1, "this$0"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 2051
    iput-object p1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;->this$0:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 3

    .line 2055
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;->this$0:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    .line 2056
    const/4 v0, 0x1

    return v0
.end method
