.class Lcom/tapsdk/moment/LongClickHandler$1$1;
.super Ljava/lang/Object;
.source "LongClickHandler.java"

# interfaces
.implements Lcom/tds/common/permission/RequestPermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/LongClickHandler$1;->onClick(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tapsdk/moment/LongClickHandler$1;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/LongClickHandler$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/tapsdk/moment/LongClickHandler$1;

    .line 65
    iput-object p1, p0, Lcom/tapsdk/moment/LongClickHandler$1$1;->this$1:Lcom/tapsdk/moment/LongClickHandler$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZLjava/util/List;Ljava/util/List;)V
    .registers 6
    .param p1, "allGranted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 68
    .local p2, "grantedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "deniedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_19

    .line 69
    iget-object v0, p0, Lcom/tapsdk/moment/LongClickHandler$1$1;->this$1:Lcom/tapsdk/moment/LongClickHandler$1;

    iget-object v0, v0, Lcom/tapsdk/moment/LongClickHandler$1;->this$0:Lcom/tapsdk/moment/LongClickHandler;

    # getter for: Lcom/tapsdk/moment/LongClickHandler;->mCallback:Lcom/tapsdk/moment/LongClickHandler$ClickEventLifecycleCallback;
    invoke-static {v0}, Lcom/tapsdk/moment/LongClickHandler;->access$000(Lcom/tapsdk/moment/LongClickHandler;)Lcom/tapsdk/moment/LongClickHandler$ClickEventLifecycleCallback;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/tapsdk/moment/LongClickHandler$1$1;->this$1:Lcom/tapsdk/moment/LongClickHandler$1;

    iget-object v0, v0, Lcom/tapsdk/moment/LongClickHandler$1;->this$0:Lcom/tapsdk/moment/LongClickHandler;

    # getter for: Lcom/tapsdk/moment/LongClickHandler;->mCallback:Lcom/tapsdk/moment/LongClickHandler$ClickEventLifecycleCallback;
    invoke-static {v0}, Lcom/tapsdk/moment/LongClickHandler;->access$000(Lcom/tapsdk/moment/LongClickHandler;)Lcom/tapsdk/moment/LongClickHandler$ClickEventLifecycleCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tapsdk/moment/LongClickHandler$ClickEventLifecycleCallback;->onFinally(Z)V

    .line 70
    :cond_18
    return-void

    .line 72
    :cond_19
    iget-object v0, p0, Lcom/tapsdk/moment/LongClickHandler$1$1;->this$1:Lcom/tapsdk/moment/LongClickHandler$1;

    iget-object v0, v0, Lcom/tapsdk/moment/LongClickHandler$1;->this$0:Lcom/tapsdk/moment/LongClickHandler;

    iget-object v1, p0, Lcom/tapsdk/moment/LongClickHandler$1$1;->this$1:Lcom/tapsdk/moment/LongClickHandler$1;

    iget-object v1, v1, Lcom/tapsdk/moment/LongClickHandler$1;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/tapsdk/moment/LongClickHandler;->notifyMediaRefresh(Landroid/app/Activity;)V
    invoke-static {v0, v1}, Lcom/tapsdk/moment/LongClickHandler;->access$100(Lcom/tapsdk/moment/LongClickHandler;Landroid/app/Activity;)V

    .line 73
    return-void
.end method
