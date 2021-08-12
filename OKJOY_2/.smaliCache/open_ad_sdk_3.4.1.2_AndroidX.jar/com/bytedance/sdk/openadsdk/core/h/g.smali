.class public Lcom/bytedance/sdk/openadsdk/core/h/g;
.super Ljava/lang/Object;
.source "SdkSwitch.java"


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/h/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method protected static a(I)V
    .registers 4

    .line 51
    const/4 v0, 0x1

    if-eq p0, v0, :cond_7

    const/4 v1, 0x2

    if-eq p0, v1, :cond_7

    .line 53
    return-void

    .line 56
    :cond_7
    const/4 v1, 0x0

    .line 59
    :try_start_8
    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/h/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_1b

    if-eq v2, p0, :cond_19

    .line 60
    nop

    .line 61
    :try_start_11
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/h/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_17

    goto :goto_1a

    .line 63
    :catchall_17
    move-exception p0

    goto :goto_1d

    .line 59
    :cond_19
    move v0, v1

    .line 65
    :goto_1a
    goto :goto_20

    .line 63
    :catchall_1b
    move-exception p0

    move v0, v1

    .line 64
    :goto_1d
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    :goto_20
    if-eqz v0, :cond_98

    .line 68
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "switch status changed: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/g;->a()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SdkSwitch"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/g;->a()Z

    move-result p0

    if-eqz p0, :cond_48

    .line 71
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->b()V

    goto :goto_98

    .line 75
    :cond_48
    :try_start_48
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->c()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object p0

    if-eqz p0, :cond_55

    .line 76
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->c()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/c/b;->b()V

    .line 78
    :cond_55
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->e()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object p0

    if-eqz p0, :cond_62

    .line 79
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->e()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/c/b;->b()V

    .line 81
    :cond_62
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->d()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object p0

    if-eqz p0, :cond_6f

    .line 82
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->d()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/c/b;->b()V
    :try_end_6f
    .catchall {:try_start_48 .. :try_end_6f} :catchall_70

    .line 86
    :cond_6f
    goto :goto_74

    .line 84
    :catchall_70
    move-exception p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 89
    :goto_74
    :try_start_74
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->g()Lcom/bytedance/sdk/openadsdk/k/a;

    move-result-object p0

    if-eqz p0, :cond_81

    .line 90
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->g()Lcom/bytedance/sdk/openadsdk/k/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/k/a;->a()V
    :try_end_81
    .catchall {:try_start_74 .. :try_end_81} :catchall_82

    .line 94
    :cond_81
    goto :goto_86

    .line 92
    :catchall_82
    move-exception p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 97
    :goto_86
    :try_start_86
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->i()Lcom/bytedance/sdk/openadsdk/g/c/a;

    move-result-object p0

    if-eqz p0, :cond_93

    .line 98
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->i()Lcom/bytedance/sdk/openadsdk/g/c/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/g/c/a;->b()V
    :try_end_93
    .catchall {:try_start_86 .. :try_end_93} :catchall_94

    .line 102
    :cond_93
    goto :goto_98

    .line 100
    :catchall_94
    move-exception p0

    .line 101
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 105
    :cond_98
    :goto_98
    return-void
.end method

.method public static a()Z
    .registers 2

    .line 42
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/h/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method
