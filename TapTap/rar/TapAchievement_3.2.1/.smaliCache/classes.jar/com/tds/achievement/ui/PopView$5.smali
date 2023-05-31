.class Lcom/tds/achievement/ui/PopView$5;
.super Ljava/lang/Object;
.source "PopView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/achievement/ui/PopView;->showNext(Lcom/tds/achievement/TapAchievementBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/achievement/ui/PopView;

.field final synthetic val$achievement:Lcom/tds/achievement/TapAchievementBean;


# direct methods
.method constructor <init>(Lcom/tds/achievement/ui/PopView;Lcom/tds/achievement/TapAchievementBean;)V
    .registers 3
    .param p1, "this$0"    # Lcom/tds/achievement/ui/PopView;

    .line 192
    iput-object p1, p0, Lcom/tds/achievement/ui/PopView$5;->this$0:Lcom/tds/achievement/ui/PopView;

    iput-object p2, p0, Lcom/tds/achievement/ui/PopView$5;->val$achievement:Lcom/tds/achievement/TapAchievementBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 206
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 200
    iget-object v0, p0, Lcom/tds/achievement/ui/PopView$5;->this$0:Lcom/tds/achievement/ui/PopView;

    iget-object v1, p0, Lcom/tds/achievement/ui/PopView$5;->val$achievement:Lcom/tds/achievement/TapAchievementBean;

    # invokes: Lcom/tds/achievement/ui/PopView;->itemAnimUp(Lcom/tds/achievement/TapAchievementBean;)V
    invoke-static {v0, v1}, Lcom/tds/achievement/ui/PopView;->access$500(Lcom/tds/achievement/ui/PopView;Lcom/tds/achievement/TapAchievementBean;)V

    .line 201
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 211
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 196
    return-void
.end method
