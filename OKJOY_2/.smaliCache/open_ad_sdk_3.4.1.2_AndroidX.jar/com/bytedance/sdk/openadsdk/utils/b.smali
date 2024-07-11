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
.method public static a(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/openadsdk/utils/b$a;)Z
    .registers 5

    .line 18
    const/4 v0, 0x0

    if-eqz p0, :cond_20

    if-nez p1, :cond_6

    goto :goto_20

    .line 20
    :cond_6
    :try_start_6
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_f

    .line 21
    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 23
    :cond_f
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 24
    if-eqz p2, :cond_17

    .line 25
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/utils/b$a;->a()V
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_19

    .line 27
    :cond_17
    const/4 p0, 0x1

    return p0

    .line 28
    :catchall_19
    move-exception p0

    .line 29
    if-eqz p2, :cond_1f

    .line 30
    invoke-interface {p2, p0}, Lcom/bytedance/sdk/openadsdk/utils/b$a;->a(Ljava/lang/Throwable;)V

    .line 32
    :cond_1f
    return v0

    .line 18
    :cond_20
    :goto_20
    return v0
.end method
