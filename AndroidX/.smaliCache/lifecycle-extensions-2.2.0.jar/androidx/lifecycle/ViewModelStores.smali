.class public Landroidx/lifecycle/ViewModelStores;
.super Ljava/lang/Object;
.source "ViewModelStores.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelStore;
    .registers 2
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    return-object v0
.end method

.method public static of(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/ViewModelStore;
    .registers 2
    .param p0, "activity"    # Landroidx/fragment/app/FragmentActivity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    return-object v0
.end method
