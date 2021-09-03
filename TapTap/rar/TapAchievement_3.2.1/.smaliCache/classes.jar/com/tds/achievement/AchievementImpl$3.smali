.class Lcom/tds/achievement/AchievementImpl$3;
.super Lcom/tds/common/reactor/Subscriber;
.source "AchievementImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/achievement/AchievementImpl;->showAchievementPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tds/common/reactor/Subscriber<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/achievement/AchievementImpl;

.field final synthetic val$isLandscape:Z


# direct methods
.method constructor <init>(Lcom/tds/achievement/AchievementImpl;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/tds/achievement/AchievementImpl;

    .line 224
    iput-object p1, p0, Lcom/tds/achievement/AchievementImpl$3;->this$0:Lcom/tds/achievement/AchievementImpl;

    iput-boolean p2, p0, Lcom/tds/achievement/AchievementImpl$3;->val$isLandscape:Z

    invoke-direct {p0}, Lcom/tds/common/reactor/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 1

    .line 228
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 232
    invoke-static {}, Lcom/tds/achievement/ui/UIManager;->getInstance()Lcom/tds/achievement/ui/UIManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tds/achievement/AchievementImpl$3;->this$0:Lcom/tds/achievement/AchievementImpl;

    # getter for: Lcom/tds/achievement/AchievementImpl;->weakActivity:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/tds/achievement/AchievementImpl;->access$100(Lcom/tds/achievement/AchievementImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/tds/achievement/AchievementImpl$3;->val$isLandscape:Z

    invoke-virtual {v0, v1, v2}, Lcom/tds/achievement/ui/UIManager;->showSheet(Landroid/app/Activity;Z)V

    .line 233
    return-void
.end method

.method public onNext(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 237
    invoke-static {}, Lcom/tds/achievement/ui/UIManager;->getInstance()Lcom/tds/achievement/ui/UIManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tds/achievement/AchievementImpl$3;->val$isLandscape:Z

    invoke-virtual {v0, p1, v1}, Lcom/tds/achievement/ui/UIManager;->showSheet(Landroid/app/Activity;Z)V

    .line 238
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 224
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/tds/achievement/AchievementImpl$3;->onNext(Landroid/app/Activity;)V

    return-void
.end method
