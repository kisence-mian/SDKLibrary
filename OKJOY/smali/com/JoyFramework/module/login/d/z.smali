.class Lcom/JoyFramework/module/login/d/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/JoyFramework/module/login/d/v;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/login/d/v;)V
    .registers 2

    .prologue
    .line 224
    iput-object p1, p0, Lcom/JoyFramework/module/login/d/z;->a:Lcom/JoyFramework/module/login/d/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 227
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/z;->a:Lcom/JoyFramework/module/login/d/v;

    invoke-static {v0}, Lcom/JoyFramework/module/login/d/v;->b(Lcom/JoyFramework/module/login/d/v;)Lcom/JoyFramework/wight/f;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/JoyFramework/module/login/d/z;->a:Lcom/JoyFramework/module/login/d/v;

    invoke-virtual {v0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 228
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/z;->a:Lcom/JoyFramework/module/login/d/v;

    invoke-static {v0}, Lcom/JoyFramework/module/login/d/v;->b(Lcom/JoyFramework/module/login/d/v;)Lcom/JoyFramework/wight/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/JoyFramework/wight/f;->setCancelable(Z)V

    .line 229
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/z;->a:Lcom/JoyFramework/module/login/d/v;

    invoke-static {v0}, Lcom/JoyFramework/module/login/d/v;->b(Lcom/JoyFramework/module/login/d/v;)Lcom/JoyFramework/wight/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/wight/f;->show()V

    .line 231
    :cond_23
    return v1
.end method
