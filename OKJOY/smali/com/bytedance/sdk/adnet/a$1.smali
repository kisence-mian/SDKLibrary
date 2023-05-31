.class final Lcom/bytedance/sdk/adnet/a$1;
.super Ljava/lang/Object;
.source "AdNetSdk.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/adnet/a;->a(Landroid/content/Context;Landroid/app/Application;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 147
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 167
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 158
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 154
    invoke-static {p1}, Lcom/bytedance/sdk/adnet/a;->a(Landroid/app/Activity;)V

    .line 155
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 164
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 150
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 161
    return-void
.end method
