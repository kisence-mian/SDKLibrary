.class Lcom/JoyFramework/crash/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/JoyFramework/crash/a;


# direct methods
.method constructor <init>(Lcom/JoyFramework/crash/a;)V
    .registers 2

    .prologue
    .line 101
    iput-object p1, p0, Lcom/JoyFramework/crash/b;->a:Lcom/JoyFramework/crash/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .prologue
    .line 104
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 105
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 106
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 107
    return-void
.end method
