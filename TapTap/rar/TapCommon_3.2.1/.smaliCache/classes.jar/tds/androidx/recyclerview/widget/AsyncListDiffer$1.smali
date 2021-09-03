.class Ltds/androidx/recyclerview/widget/AsyncListDiffer$1;
.super Ljava/lang/Object;
.source "AsyncListDiffer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltds/androidx/recyclerview/widget/AsyncListDiffer;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltds/androidx/recyclerview/widget/AsyncListDiffer;

.field final synthetic val$commitCallback:Ljava/lang/Runnable;

.field final synthetic val$newList:Ljava/util/List;

.field final synthetic val$oldList:Ljava/util/List;

.field final synthetic val$runGeneration:I


# direct methods
.method constructor <init>(Ltds/androidx/recyclerview/widget/AsyncListDiffer;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V
    .registers 6
    .param p1, "this$0"    # Ltds/androidx/recyclerview/widget/AsyncListDiffer;

    .line 289
    .local p0, "this":Ltds/androidx/recyclerview/widget/AsyncListDiffer$1;, "Ltds/androidx/recyclerview/widget/AsyncListDiffer$1;"
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/AsyncListDiffer$1;->this$0:Ltds/androidx/recyclerview/widget/AsyncListDiffer;

    iput-object p2, p0, Ltds/androidx/recyclerview/widget/AsyncListDiffer$1;->val$oldList:Ljava/util/List;

    iput-object p3, p0, Ltds/androidx/recyclerview/widget/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    iput p4, p0, Ltds/androidx/recyclerview/widget/AsyncListDiffer$1;->val$runGeneration:I

    iput-object p5, p0, Ltds/androidx/recyclerview/widget/AsyncListDiffer$1;->val$commitCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 292
    .local p0, "this":Ltds/androidx/recyclerview/widget/AsyncListDiffer$1;, "Ltds/androidx/recyclerview/widget/AsyncListDiffer$1;"
    new-instance v0, Ltds/androidx/recyclerview/widget/AsyncListDiffer$1$1;

    invoke-direct {v0, p0}, Ltds/androidx/recyclerview/widget/AsyncListDiffer$1$1;-><init>(Ltds/androidx/recyclerview/widget/AsyncListDiffer$1;)V

    invoke-static {v0}, Ltds/androidx/recyclerview/widget/DiffUtil;->calculateDiff(Ltds/androidx/recyclerview/widget/DiffUtil$Callback;)Ltds/androidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v0

    .line 347
    .local v0, "result":Ltds/androidx/recyclerview/widget/DiffUtil$DiffResult;
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/AsyncListDiffer$1;->this$0:Ltds/androidx/recyclerview/widget/AsyncListDiffer;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Ltds/androidx/recyclerview/widget/AsyncListDiffer$1$2;

    invoke-direct {v2, p0, v0}, Ltds/androidx/recyclerview/widget/AsyncListDiffer$1$2;-><init>(Ltds/androidx/recyclerview/widget/AsyncListDiffer$1;Ltds/androidx/recyclerview/widget/DiffUtil$DiffResult;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 355
    return-void
.end method
