.class public Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$1$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/t/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$1;->onSuccess(Lcom/okjoy/okjoysdk/entity/response/OkJoyGameExtendsResponseModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$1;


# direct methods
.method public constructor <init>(Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$1;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$1$2;->this$0:Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelButtonClick(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onSureButtonClick(Landroid/view/View;)V
    .registers 2

    # getter for: Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager;->tipsDialog:Lokjoy/t/c;
    invoke-static {}, Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager;->access$000()Lokjoy/t/c;

    move-result-object p1

    .line 1
    iget-boolean p1, p1, Lokjoy/t/c;->f:Z

    if-eqz p1, :cond_b

    .line 2
    invoke-static {}, Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager;->closeFloatView()V

    :cond_b
    # getter for: Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager;->hasContinue:Z
    invoke-static {}, Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager;->access$100()Z

    move-result p1

    if-nez p1, :cond_1e

    const/4 p1, 0x1

    # setter for: Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager;->hasContinue:Z
    invoke-static {p1}, Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager;->access$102(Z)Z

    iget-object p1, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$1$2;->this$0:Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$1;

    iget-object p1, p1, Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$1;->val$listener:Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$RightAgeOnListener;

    if-eqz p1, :cond_1e

    invoke-interface {p1}, Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$RightAgeOnListener;->onContinue()V

    :cond_1e
    return-void
.end method
