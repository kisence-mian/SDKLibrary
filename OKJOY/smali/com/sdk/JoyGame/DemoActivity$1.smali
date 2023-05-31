.class Lcom/sdk/JoyGame/DemoActivity$1;
.super Lcom/JoyFramework/common/UserApiListenerInfo;
.source "DemoActivity.java"


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
    .line 66
    iput-object p1, p0, Lcom/sdk/JoyGame/DemoActivity$1;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    invoke-direct {p0}, Lcom/JoyFramework/common/UserApiListenerInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogout(Ljava/lang/Object;)V
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/JoyFramework/common/UserApiListenerInfo;->onLogout(Ljava/lang/Object;)V

    .line 70
    const-string v0, "logout"

    check-cast p1, Ljava/lang/String;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 72
    iget-object v0, p0, Lcom/sdk/JoyGame/DemoActivity$1;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sdk/JoyGame/DemoActivity;->isSDKLoginSuccess:Z

    .line 74
    iget-object v0, p0, Lcom/sdk/JoyGame/DemoActivity$1;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    new-instance v1, Lcom/sdk/JoyGame/DemoActivity$1$1;

    invoke-direct {v1, p0}, Lcom/sdk/JoyGame/DemoActivity$1$1;-><init>(Lcom/sdk/JoyGame/DemoActivity$1;)V

    invoke-static {v0, v1}, Lcom/JoyFramework/common/JoyGame;->login(Landroid/app/Activity;Lcom/JoyFramework/common/LoginListener;)V

    .line 98
    :cond_1c
    return-void
.end method
