.class Lcom/sdk/JoyGame/DemoActivity$1$1;
.super Ljava/lang/Object;
.source "DemoActivity.java"

# interfaces
.implements Lcom/JoyFramework/common/LoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdk/JoyGame/DemoActivity$1;->onLogout(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sdk/JoyGame/DemoActivity$1;


# direct methods
.method constructor <init>(Lcom/sdk/JoyGame/DemoActivity$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/sdk/JoyGame/DemoActivity$1;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sdk/JoyGame/DemoActivity$1$1;->this$1:Lcom/sdk/JoyGame/DemoActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 93
    iget-object v0, p0, Lcom/sdk/JoyGame/DemoActivity$1$1;->this$1:Lcom/sdk/JoyGame/DemoActivity$1;

    iget-object v0, v0, Lcom/sdk/JoyGame/DemoActivity$1;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    const-string v1, "\u767b\u5f55\u5931\u8d25"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 94
    iget-object v0, p0, Lcom/sdk/JoyGame/DemoActivity$1$1;->this$1:Lcom/sdk/JoyGame/DemoActivity$1;

    iget-object v0, v0, Lcom/sdk/JoyGame/DemoActivity$1;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    iput-boolean v2, v0, Lcom/sdk/JoyGame/DemoActivity;->isSDKLoginSuccess:Z

    .line 95
    return-void
.end method

.method public loginSuccess(Ljava/lang/Object;)V
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 78
    if-eqz p1, :cond_50

    move-object v0, p1

    .line 79
    check-cast v0, Lcom/JoyFramework/common/LoginMessageInfo;

    .line 80
    .local v0, "data":Lcom/JoyFramework/common/LoginMessageInfo;
    invoke-virtual {v0}, Lcom/JoyFramework/common/LoginMessageInfo;->getUserName()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "userName":Ljava/lang/String;
    iget-object v3, p0, Lcom/sdk/JoyGame/DemoActivity$1$1;->this$1:Lcom/sdk/JoyGame/DemoActivity$1;

    iget-object v3, v3, Lcom/sdk/JoyGame/DemoActivity$1;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    invoke-virtual {v0}, Lcom/JoyFramework/common/LoginMessageInfo;->getUserCode()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sdk/JoyGame/DemoActivity;->userCode:Ljava/lang/String;

    .line 82
    invoke-virtual {v0}, Lcom/JoyFramework/common/LoginMessageInfo;->getLoginToken()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "token":Ljava/lang/String;
    const-string v3, "ll"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u767b\u5f55\u7ed3\u679c"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sdk/JoyGame/DemoActivity$1$1;->this$1:Lcom/sdk/JoyGame/DemoActivity$1;

    iget-object v5, v5, Lcom/sdk/JoyGame/DemoActivity$1;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    iget-object v5, v5, Lcom/sdk/JoyGame/DemoActivity;->userCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|token:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v3, p0, Lcom/sdk/JoyGame/DemoActivity$1$1;->this$1:Lcom/sdk/JoyGame/DemoActivity$1;

    iget-object v3, v3, Lcom/sdk/JoyGame/DemoActivity$1;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sdk/JoyGame/DemoActivity;->isSDKLoginSuccess:Z

    .line 89
    .end local v0    # "data":Lcom/JoyFramework/common/LoginMessageInfo;
    .end local v1    # "token":Ljava/lang/String;
    .end local v2    # "userName":Ljava/lang/String;
    :cond_50
    return-void
.end method
