.class Lcom/tds/achievement/ui/PopToastManager;
.super Ljava/lang/Object;
.source "PopToastManager.java"

# interfaces
.implements Lcom/tds/achievement/ui/PopView$PopViewAnimCallback;


# static fields
.field private static instance:Lcom/tds/achievement/ui/PopToastManager;


# instance fields
.field private achievementQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/tds/achievement/TapAchievementBean;",
            ">;"
        }
    .end annotation
.end field

.field private popView:Lcom/tds/achievement/ui/PopView;

.field private popupWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tds/achievement/ui/PopToastManager;->achievementQueue:Ljava/util/LinkedList;

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/tds/achievement/ui/PopToastManager;
    .registers 2

    .line 28
    sget-object v0, Lcom/tds/achievement/ui/PopToastManager;->instance:Lcom/tds/achievement/ui/PopToastManager;

    if-nez v0, :cond_17

    .line 29
    const-class v0, Lcom/tds/achievement/ui/PopToastManager;

    monitor-enter v0

    .line 30
    :try_start_7
    sget-object v1, Lcom/tds/achievement/ui/PopToastManager;->instance:Lcom/tds/achievement/ui/PopToastManager;

    if-nez v1, :cond_12

    .line 31
    new-instance v1, Lcom/tds/achievement/ui/PopToastManager;

    invoke-direct {v1}, Lcom/tds/achievement/ui/PopToastManager;-><init>()V

    sput-object v1, Lcom/tds/achievement/ui/PopToastManager;->instance:Lcom/tds/achievement/ui/PopToastManager;

    .line 33
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 35
    :cond_17
    :goto_17
    sget-object v0, Lcom/tds/achievement/ui/PopToastManager;->instance:Lcom/tds/achievement/ui/PopToastManager;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/tds/achievement/ui/PopToastManager;->popupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_5

    .line 76
    return-void

    .line 78
    :cond_5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 79
    return-void
.end method

.method public onAnimEnd()V
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/tds/achievement/ui/PopToastManager;->achievementQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_16

    .line 84
    iget-object v0, p0, Lcom/tds/achievement/ui/PopToastManager;->popView:Lcom/tds/achievement/ui/PopView;

    iget-object v1, p0, Lcom/tds/achievement/ui/PopToastManager;->achievementQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/achievement/TapAchievementBean;

    invoke-virtual {v0, v1}, Lcom/tds/achievement/ui/PopView;->showNext(Lcom/tds/achievement/TapAchievementBean;)V

    goto :goto_1b

    .line 86
    :cond_16
    iget-object v0, p0, Lcom/tds/achievement/ui/PopToastManager;->popView:Lcom/tds/achievement/ui/PopView;

    invoke-virtual {v0}, Lcom/tds/achievement/ui/PopView;->dismiss()V

    .line 88
    :goto_1b
    return-void
.end method

.method public onDismiss()V
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/tds/achievement/ui/PopToastManager;->achievementQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 93
    iget-object v0, p0, Lcom/tds/achievement/ui/PopToastManager;->popView:Lcom/tds/achievement/ui/PopView;

    invoke-virtual {v0}, Lcom/tds/achievement/ui/PopView;->start()V

    goto :goto_11

    .line 95
    :cond_e
    invoke-virtual {p0}, Lcom/tds/achievement/ui/PopToastManager;->dismiss()V

    .line 97
    :goto_11
    return-void
.end method

.method public show(Landroid/app/Activity;Lcom/tds/achievement/TapAchievementBean;)V
    .registers 13
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "achievement"    # Lcom/tds/achievement/TapAchievementBean;

    .line 39
    iget-object v0, p0, Lcom/tds/achievement/ui/PopToastManager;->achievementQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 42
    .local v0, "tempText":Landroid/widget/TextView;
    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 43
    const-string v1, "tds_achievement_string_pop_title"

    invoke-static {p1, v1}, Lcom/tds/common/utils/UIUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    sget v2, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v3, 0x43340000    # 180.0f

    invoke-static {v2, v3}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v2

    .line 45
    .local v2, "dp180":I
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-static {p1, v1}, Lcom/tds/common/utils/UIUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    sget v3, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    .line 46
    const/high16 v4, 0x42340000    # 45.0f

    invoke-static {v3, v4}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 48
    .local v1, "sizeWithText":I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 49
    .local v3, "size":I
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    .line 50
    .local v4, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/tds/achievement/ui/PopToastManager;->popView:Lcom/tds/achievement/ui/PopView;

    if-nez v5, :cond_51

    .line 51
    new-instance v5, Lcom/tds/achievement/ui/PopView;

    invoke-direct {v5, p1, v3}, Lcom/tds/achievement/ui/PopView;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/tds/achievement/ui/PopToastManager;->popView:Lcom/tds/achievement/ui/PopView;

    .line 52
    invoke-virtual {v5, p0}, Lcom/tds/achievement/ui/PopView;->setCallback(Lcom/tds/achievement/ui/PopView$PopViewAnimCallback;)V

    .line 55
    :cond_51
    iget-object v5, p0, Lcom/tds/achievement/ui/PopToastManager;->popupWindow:Landroid/widget/PopupWindow;

    if-nez v5, :cond_6e

    .line 56
    new-instance v5, Landroid/widget/PopupWindow;

    invoke-direct {v5}, Landroid/widget/PopupWindow;-><init>()V

    iput-object v5, p0, Lcom/tds/achievement/ui/PopToastManager;->popupWindow:Landroid/widget/PopupWindow;

    .line 57
    sget v6, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v7, 0x42200000    # 40.0f

    invoke-static {v6, v7}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 58
    iget-object v5, p0, Lcom/tds/achievement/ui/PopToastManager;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/tds/achievement/ui/PopToastManager;->popView:Lcom/tds/achievement/ui/PopView;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 61
    :cond_6e
    iget-object v5, p0, Lcom/tds/achievement/ui/PopToastManager;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_88

    .line 62
    iget-object v5, p0, Lcom/tds/achievement/ui/PopToastManager;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 63
    iget-object v5, p0, Lcom/tds/achievement/ui/PopToastManager;->popView:Lcom/tds/achievement/ui/PopView;

    invoke-virtual {v5}, Lcom/tds/achievement/ui/PopView;->getSize()I

    move-result v5

    if-eq v3, v5, :cond_88

    .line 64
    iget-object v5, p0, Lcom/tds/achievement/ui/PopToastManager;->popView:Lcom/tds/achievement/ui/PopView;

    invoke-virtual {v5, v3}, Lcom/tds/achievement/ui/PopView;->resetWidth(I)V

    .line 68
    :cond_88
    iget-object v5, p0, Lcom/tds/achievement/ui/PopToastManager;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_a5

    .line 69
    iget-object v5, p0, Lcom/tds/achievement/ui/PopToastManager;->popupWindow:Landroid/widget/PopupWindow;

    const/16 v6, 0x30

    const/4 v7, 0x0

    sget v8, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v9, 0x41c00000    # 24.0f

    invoke-static {v8, v9}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v8

    invoke-virtual {v5, v4, v6, v7, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 70
    iget-object v5, p0, Lcom/tds/achievement/ui/PopToastManager;->popView:Lcom/tds/achievement/ui/PopView;

    invoke-virtual {v5}, Lcom/tds/achievement/ui/PopView;->start()V

    .line 72
    :cond_a5
    return-void
.end method
