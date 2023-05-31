.class Lcom/tds/achievement/ui/PopView$7;
.super Ljava/lang/Object;
.source "PopView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/achievement/ui/PopView;->itemAnimUp(Lcom/tds/achievement/TapAchievementBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/achievement/ui/PopView;


# direct methods
.method constructor <init>(Lcom/tds/achievement/ui/PopView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tds/achievement/ui/PopView;

    .line 230
    iput-object p1, p0, Lcom/tds/achievement/ui/PopView$7;->this$0:Lcom/tds/achievement/ui/PopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 244
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 238
    iget-object v0, p0, Lcom/tds/achievement/ui/PopView$7;->this$0:Lcom/tds/achievement/ui/PopView;

    # invokes: Lcom/tds/achievement/ui/PopView;->timer()V
    invoke-static {v0}, Lcom/tds/achievement/ui/PopView;->access$200(Lcom/tds/achievement/ui/PopView;)V

    .line 239
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 249
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 234
    return-void
.end method
