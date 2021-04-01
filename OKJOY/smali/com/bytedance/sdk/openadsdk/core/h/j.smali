.class public Lcom/bytedance/sdk/openadsdk/core/h/j;
.super Ljava/lang/Object;
.source "SdkSwitch.java"


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/h/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method protected static a(I)V
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 51
    if-eq p0, v0, :cond_7

    const/4 v1, 0x2

    if-eq p0, v1, :cond_7

    .line 105
    :cond_6
    :goto_6
    return-void

    .line 56
    :cond_7
    const/4 v1, 0x0

    .line 59
    :try_start_8
    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/h/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_3d

    move-result v2

    if-eq v2, p0, :cond_41

    .line 61
    :try_start_10
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/h/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_15} :catch_95

    .line 67
    :goto_15
    if-eqz v0, :cond_6

    .line 68
    const-string v0, "SdkSwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switch status changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/j;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/j;->a()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 71
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->b()V

    goto :goto_6

    .line 63
    :catch_3d
    move-exception v0

    .line 64
    :goto_3e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_41
    move v0, v1

    goto :goto_15

    .line 75
    :cond_43
    :try_start_43
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->c()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 76
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->c()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/b;->b()V

    .line 78
    :cond_50
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->e()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 79
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->e()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/b;->b()V

    .line 81
    :cond_5d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->d()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 82
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->d()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/b;->b()V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_6a} :catch_8b

    .line 89
    :cond_6a
    :goto_6a
    :try_start_6a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->g()Lcom/bytedance/sdk/openadsdk/j/a;

    move-result-object v0

    if-eqz v0, :cond_77

    .line 90
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->g()Lcom/bytedance/sdk/openadsdk/j/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/j/a;->a()V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_77} :catch_90

    .line 97
    :cond_77
    :goto_77
    :try_start_77
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->j()Lcom/bytedance/sdk/openadsdk/f/b/a;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 98
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->j()Lcom/bytedance/sdk/openadsdk/f/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/f/b/a;->b()V
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_84} :catch_85

    goto :goto_6

    .line 100
    :catch_85
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_6

    .line 84
    :catch_8b
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6a

    .line 92
    :catch_90
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_77

    .line 63
    :catch_95
    move-exception v1

    move-object v3, v1

    move v1, v0

    move-object v0, v3

    goto :goto_3e
.end method

.method public static a()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 42
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/h/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
