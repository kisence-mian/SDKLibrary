.class public Lcom/bytedance/sdk/openadsdk/utils/b;
.super Ljava/lang/Object;
.source "ActivityUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/utils/b$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/openadsdk/utils/b$a;)V
    .registers 4

    .prologue
    .line 18
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 32
    :cond_4
    :goto_4
    return-void

    .line 20
    :cond_5
    :try_start_5
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_e

    .line 21
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 23
    :cond_e
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 24
    if-eqz p2, :cond_4

    .line 25
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/utils/b$a;->a()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_16} :catch_17

    goto :goto_4

    .line 27
    :catch_17
    move-exception v0

    .line 28
    if-eqz p2, :cond_4

    .line 29
    invoke-interface {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/b$a;->a(Ljava/lang/Throwable;)V

    goto :goto_4
.end method
