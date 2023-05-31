.class Lcom/sdk/JoyGame/DemoActivity$2;
.super Ljava/lang/Object;
.source "DemoActivity.java"

# interfaces
.implements Lcom/JoyFramework/common/InitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdk/JoyGame/DemoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdk/JoyGame/DemoActivity;


# direct methods
.method constructor <init>(Lcom/sdk/JoyGame/DemoActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sdk/JoyGame/DemoActivity;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sdk/JoyGame/DemoActivity$2;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sdk/JoyGame/DemoActivity$2;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 150
    return-void
.end method

.method public initSuccess(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 111
    new-instance v0, Lcom/sdk/JoyGame/DemoActivity$2$1;

    invoke-direct {v0, p0}, Lcom/sdk/JoyGame/DemoActivity$2$1;-><init>(Lcom/sdk/JoyGame/DemoActivity$2;)V

    invoke-static {v0}, Lcom/JoyFramework/common/JoyGame;->setPaymentCallback(Lcom/JoyFramework/common/IPaymentCallback;)V

    .line 120
    iget-object v0, p0, Lcom/sdk/JoyGame/DemoActivity$2;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    new-instance v1, Lcom/sdk/JoyGame/DemoActivity$2$2;

    invoke-direct {v1, p0}, Lcom/sdk/JoyGame/DemoActivity$2$2;-><init>(Lcom/sdk/JoyGame/DemoActivity$2;)V

    invoke-static {v0, v1}, Lcom/JoyFramework/common/JoyGame;->login(Landroid/app/Activity;Lcom/JoyFramework/common/LoginListener;)V

    .line 144
    return-void
.end method
