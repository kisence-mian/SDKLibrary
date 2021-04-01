.class Lcom/sdk/JoyGame/DemoActivity$2$2;
.super Ljava/lang/Object;
.source "DemoActivity.java"

# interfaces
.implements Lcom/JoyFramework/common/LoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdk/JoyGame/DemoActivity$2;->initSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sdk/JoyGame/DemoActivity$2;


# direct methods
.method constructor <init>(Lcom/sdk/JoyGame/DemoActivity$2;)V
    .registers 2
    .param p1, "this$1"    # Lcom/sdk/JoyGame/DemoActivity$2;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/sdk/JoyGame/DemoActivity$2$2;->this$1:Lcom/sdk/JoyGame/DemoActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 139
    iget-object v0, p0, Lcom/sdk/JoyGame/DemoActivity$2$2;->this$1:Lcom/sdk/JoyGame/DemoActivity$2;

    iget-object v0, v0, Lcom/sdk/JoyGame/DemoActivity$2;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    const-string v1, "\u767b\u5f55\u5931\u8d25"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 140
    iget-object v0, p0, Lcom/sdk/JoyGame/DemoActivity$2$2;->this$1:Lcom/sdk/JoyGame/DemoActivity$2;

    iget-object v0, v0, Lcom/sdk/JoyGame/DemoActivity$2;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    iput-boolean v2, v0, Lcom/sdk/JoyGame/DemoActivity;->isSDKLoginSuccess:Z

    .line 141
    return-void
.end method

.method public loginSuccess(Ljava/lang/Object;)V
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 123
    if-eqz p1, :cond_50

    move-object v0, p1

    .line 124
    check-cast v0, Lcom/JoyFramework/common/LoginMessageInfo;

    .line 125
    .local v0, "data":Lcom/JoyFramework/common/LoginMessageInfo;
    invoke-virtual {v0}, Lcom/JoyFramework/common/LoginMessageInfo;->getUserName()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "userName":Ljava/lang/String;
    iget-object v3, p0, Lcom/sdk/JoyGame/DemoActivity$2$2;->this$1:Lcom/sdk/JoyGame/DemoActivity$2;

    iget-object v3, v3, Lcom/sdk/JoyGame/DemoActivity$2;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    invoke-virtual {v0}, Lcom/JoyFramework/common/LoginMessageInfo;->getUserCode()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sdk/JoyGame/DemoActivity;->userCode:Ljava/lang/String;

    .line 127
    invoke-virtual {v0}, Lcom/JoyFramework/common/LoginMessageInfo;->getLoginToken()Ljava/lang/String;

    move-result-object v1

    .line 128
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

    iget-object v5, p0, Lcom/sdk/JoyGame/DemoActivity$2$2;->this$1:Lcom/sdk/JoyGame/DemoActivity$2;

    iget-object v5, v5, Lcom/sdk/JoyGame/DemoActivity$2;->this$0:Lcom/sdk/JoyGame/DemoActivity;

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

    .line 132
    iget-object v3, p0, Lcom/sdk/JoyGame/DemoActivity$2$2;->this$1:Lcom/sdk/JoyGame/DemoActivity$2;

    iget-object v3, v3, Lcom/sdk/JoyGame/DemoActivity$2;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sdk/JoyGame/DemoActivity;->isSDKLoginSuccess:Z

    .line 135
    .end local v0    # "data":Lcom/JoyFramework/common/LoginMessageInfo;
    .end local v1    # "token":Ljava/lang/String;
    .end local v2    # "userName":Ljava/lang/String;
    :cond_50
    return-void
.end method
