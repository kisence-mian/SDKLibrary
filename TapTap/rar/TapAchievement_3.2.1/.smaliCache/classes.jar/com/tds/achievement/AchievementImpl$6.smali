.class Lcom/tds/achievement/AchievementImpl$6;
.super Lcom/tds/common/reactor/Subscriber;
.source "AchievementImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/achievement/AchievementImpl;->doAction(ILjava/lang/String;IZ)V
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

.field final synthetic val$finalItem:Lcom/tds/achievement/TapAchievementBean;


# direct methods
.method constructor <init>(Lcom/tds/achievement/AchievementImpl;Lcom/tds/achievement/TapAchievementBean;)V
    .registers 3
    .param p1, "this$0"    # Lcom/tds/achievement/AchievementImpl;

    .line 375
    iput-object p1, p0, Lcom/tds/achievement/AchievementImpl$6;->this$0:Lcom/tds/achievement/AchievementImpl;

    iput-object p2, p0, Lcom/tds/achievement/AchievementImpl$6;->val$finalItem:Lcom/tds/achievement/TapAchievementBean;

    invoke-direct {p0}, Lcom/tds/common/reactor/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 1

    .line 379
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 383
    invoke-static {}, Lcom/tds/achievement/ui/UIManager;->getInstance()Lcom/tds/achievement/ui/UIManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tds/achievement/AchievementImpl$6;->this$0:Lcom/tds/achievement/AchievementImpl;

    invoke-virtual {v1}, Lcom/tds/achievement/AchievementImpl;->getWeakActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/tds/achievement/AchievementImpl$6;->val$finalItem:Lcom/tds/achievement/TapAchievementBean;

    invoke-virtual {v0, v1, v2}, Lcom/tds/achievement/ui/UIManager;->showPopToast(Landroid/app/Activity;Lcom/tds/achievement/TapAchievementBean;)V

    .line 384
    return-void
.end method

.method public onNext(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 388
    invoke-static {}, Lcom/tds/achievement/ui/UIManager;->getInstance()Lcom/tds/achievement/ui/UIManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tds/achievement/AchievementImpl$6;->val$finalItem:Lcom/tds/achievement/TapAchievementBean;

    invoke-virtual {v0, p1, v1}, Lcom/tds/achievement/ui/UIManager;->showPopToast(Landroid/app/Activity;Lcom/tds/achievement/TapAchievementBean;)V

    .line 389
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 375
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/tds/achievement/AchievementImpl$6;->onNext(Landroid/app/Activity;)V

    return-void
.end method
