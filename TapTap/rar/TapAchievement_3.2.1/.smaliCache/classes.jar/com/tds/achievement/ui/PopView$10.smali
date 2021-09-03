.class Lcom/tds/achievement/ui/PopView$10;
.super Landroid/os/CountDownTimer;
.source "PopView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/achievement/ui/PopView;->timer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/achievement/ui/PopView;


# direct methods
.method constructor <init>(Lcom/tds/achievement/ui/PopView;JJ)V
    .registers 6
    .param p1, "this$0"    # Lcom/tds/achievement/ui/PopView;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .line 298
    iput-object p1, p0, Lcom/tds/achievement/ui/PopView$10;->this$0:Lcom/tds/achievement/ui/PopView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 2

    .line 306
    iget-object v0, p0, Lcom/tds/achievement/ui/PopView$10;->this$0:Lcom/tds/achievement/ui/PopView;

    # getter for: Lcom/tds/achievement/ui/PopView;->callback:Lcom/tds/achievement/ui/PopView$PopViewAnimCallback;
    invoke-static {v0}, Lcom/tds/achievement/ui/PopView;->access$600(Lcom/tds/achievement/ui/PopView;)Lcom/tds/achievement/ui/PopView$PopViewAnimCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 307
    iget-object v0, p0, Lcom/tds/achievement/ui/PopView$10;->this$0:Lcom/tds/achievement/ui/PopView;

    # getter for: Lcom/tds/achievement/ui/PopView;->callback:Lcom/tds/achievement/ui/PopView$PopViewAnimCallback;
    invoke-static {v0}, Lcom/tds/achievement/ui/PopView;->access$600(Lcom/tds/achievement/ui/PopView;)Lcom/tds/achievement/ui/PopView$PopViewAnimCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/tds/achievement/ui/PopView$PopViewAnimCallback;->onAnimEnd()V

    .line 309
    :cond_11
    return-void
.end method

.method public onTick(J)V
    .registers 3
    .param p1, "millisUntilFinished"    # J

    .line 302
    return-void
.end method
