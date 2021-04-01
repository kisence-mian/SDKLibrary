.class Lcom/JoyFramework/crash/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/JoyFramework/crash/LCrashHandler;


# direct methods
.method constructor <init>(Lcom/JoyFramework/crash/LCrashHandler;)V
    .registers 2

    .prologue
    .line 94
    iput-object p1, p0, Lcom/JoyFramework/crash/a;->a:Lcom/JoyFramework/crash/LCrashHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 97
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 98
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/JoyFramework/crash/a;->a:Lcom/JoyFramework/crash/LCrashHandler;

    # getter for: Lcom/JoyFramework/crash/LCrashHandler;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/JoyFramework/crash/LCrashHandler;->access$000(Lcom/JoyFramework/crash/LCrashHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u7a0b\u5e8f\u5f02\u5e38"

    .line 99
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u5f02\u5e38\u4fe1\u606f\u5df2\u7ecf\u5199\u5165\u6587\u4ef6"

    .line 100
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/JoyFramework/crash/b;

    invoke-direct {v2, p0}, Lcom/JoyFramework/crash/b;-><init>(Lcom/JoyFramework/crash/a;)V

    .line 101
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 108
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 109
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 110
    return-void
.end method
