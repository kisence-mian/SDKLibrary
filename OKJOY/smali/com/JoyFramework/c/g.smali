.class Lcom/JoyFramework/c/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/wight/k$a;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/JoyFramework/common/ExitListener;

.field final synthetic c:Lcom/JoyFramework/c/e;


# direct methods
.method constructor <init>(Lcom/JoyFramework/c/e;Landroid/app/Activity;Lcom/JoyFramework/common/ExitListener;)V
    .registers 4

    .prologue
    .line 940
    iput-object p1, p0, Lcom/JoyFramework/c/g;->c:Lcom/JoyFramework/c/e;

    iput-object p2, p0, Lcom/JoyFramework/c/g;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/JoyFramework/c/g;->b:Lcom/JoyFramework/common/ExitListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 944
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/JoyFramework/c/g;->a:Landroid/app/Activity;

    const-string v2, "dialog_exit"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_35

    .line 946
    sget-boolean v0, Lcom/JoyFramework/a/a;->H:Z

    if-eqz v0, :cond_18

    .line 947
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bytedance/applog/AppLog;->setUserUniqueID(Ljava/lang/String;)V

    .line 950
    :cond_18
    iget-object v0, p0, Lcom/JoyFramework/c/g;->c:Lcom/JoyFramework/c/e;

    invoke-static {v0}, Lcom/JoyFramework/c/e;->a(Lcom/JoyFramework/c/e;)V

    .line 951
    invoke-static {}, Lcom/JoyFramework/user/OnLineUser;->getInstance()Lcom/JoyFramework/user/OnLineUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/OnLineUser;->shutDown()V

    .line 952
    iget-object v0, p0, Lcom/JoyFramework/c/g;->b:Lcom/JoyFramework/common/ExitListener;

    const-string v1, "exit"

    invoke-interface {v0, v1}, Lcom/JoyFramework/common/ExitListener;->ExitSuccess(Ljava/lang/String;)V

    .line 963
    :cond_2b
    :goto_2b
    iget-object v0, p0, Lcom/JoyFramework/c/g;->c:Lcom/JoyFramework/c/e;

    invoke-static {v0}, Lcom/JoyFramework/c/e;->b(Lcom/JoyFramework/c/e;)Lcom/JoyFramework/wight/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/wight/k;->dismiss()V

    .line 967
    :goto_34
    return-void

    .line 954
    :cond_35
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/JoyFramework/c/g;->a:Landroid/app/Activity;

    const-string v2, "dialog_cancel"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2b

    .line 956
    iget-object v0, p0, Lcom/JoyFramework/c/g;->b:Lcom/JoyFramework/common/ExitListener;

    const-string v1, "fail"

    invoke-interface {v0, v1}, Lcom/JoyFramework/common/ExitListener;->fail(Ljava/lang/String;)V

    .line 958
    sget-boolean v0, Lcom/JoyFramework/c/e;->a:Z

    if-eqz v0, :cond_2b

    sget-boolean v0, Lcom/JoyFramework/d/e;->a:Z

    if-nez v0, :cond_2b

    .line 960
    invoke-static {}, Lcom/JoyFramework/module/point/a;->a()Lcom/JoyFramework/module/point/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/module/point/a;->b()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5b} :catch_5c

    goto :goto_2b

    .line 964
    :catch_5c
    move-exception v0

    .line 965
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34
.end method
