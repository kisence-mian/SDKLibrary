.class public Lcom/JoyFramework/module/point/FloatViewService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JoyFramework/module/point/FloatViewService$a;
    }
.end annotation


# instance fields
.field private mFloatView:Lcom/JoyFramework/module/point/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyFloat()V
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/JoyFramework/module/point/FloatViewService;->mFloatView:Lcom/JoyFramework/module/point/c;

    if-eqz v0, :cond_9

    .line 47
    iget-object v0, p0, Lcom/JoyFramework/module/point/FloatViewService;->mFloatView:Lcom/JoyFramework/module/point/c;

    invoke-virtual {v0}, Lcom/JoyFramework/module/point/c;->d()V

    .line 49
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/JoyFramework/module/point/FloatViewService;->mFloatView:Lcom/JoyFramework/module/point/c;

    .line 50
    return-void
.end method

.method public hideFloat()V
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/JoyFramework/module/point/FloatViewService;->mFloatView:Lcom/JoyFramework/module/point/c;

    if-eqz v0, :cond_9

    .line 41
    iget-object v0, p0, Lcom/JoyFramework/module/point/FloatViewService;->mFloatView:Lcom/JoyFramework/module/point/c;

    invoke-virtual {v0}, Lcom/JoyFramework/module/point/c;->a()V

    .line 43
    :cond_9
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .prologue
    .line 19
    new-instance v0, Lcom/JoyFramework/module/point/c;

    invoke-direct {v0, p0}, Lcom/JoyFramework/module/point/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/JoyFramework/module/point/FloatViewService;->mFloatView:Lcom/JoyFramework/module/point/c;

    .line 21
    new-instance v0, Lcom/JoyFramework/module/point/FloatViewService$a;

    invoke-direct {v0, p0}, Lcom/JoyFramework/module/point/FloatViewService$a;-><init>(Lcom/JoyFramework/module/point/FloatViewService;)V

    return-object v0
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 27
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 29
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 55
    invoke-virtual {p0}, Lcom/JoyFramework/module/point/FloatViewService;->destroyFloat()V

    .line 56
    return-void
.end method

.method public showFloat()V
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/JoyFramework/module/point/FloatViewService;->mFloatView:Lcom/JoyFramework/module/point/c;

    if-eqz v0, :cond_9

    .line 35
    iget-object v0, p0, Lcom/JoyFramework/module/point/FloatViewService;->mFloatView:Lcom/JoyFramework/module/point/c;

    invoke-virtual {v0}, Lcom/JoyFramework/module/point/c;->b()V

    .line 37
    :cond_9
    return-void
.end method
