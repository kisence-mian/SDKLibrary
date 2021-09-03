.class Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$1;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;)V
    .registers 2
    .param p1, "this$0"    # Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 215
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$1;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 218
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$1;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;->checkForGaps()Z

    .line 219
    return-void
.end method
