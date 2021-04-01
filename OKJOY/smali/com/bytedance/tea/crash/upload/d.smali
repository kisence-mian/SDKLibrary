.class public final Lcom/bytedance/tea/crash/upload/d;
.super Ljava/lang/Object;
.source "LaunchScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/bytedance/tea/crash/upload/d;->a:Landroid/content/Context;

    .line 22
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/bytedance/tea/crash/upload/d;->a(Landroid/content/Context;I)V

    .line 49
    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .registers 6

    .prologue
    .line 33
    :try_start_0
    invoke-static {}, Lcom/bytedance/tea/crash/h;->a()Lcom/bytedance/tea/crash/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/e/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_13

    move-result v0

    if-nez v0, :cond_14

    .line 40
    :goto_12
    return-void

    .line 36
    :catch_13
    move-exception v0

    .line 39
    :cond_14
    invoke-static {}, Lcom/bytedance/tea/crash/e/h;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/tea/crash/upload/d;

    invoke-direct {v1, p0}, Lcom/bytedance/tea/crash/upload/d;-><init>(Landroid/content/Context;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_12
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 55
    :try_start_0
    new-instance v0, Lcom/bytedance/tea/crash/e/d;

    iget-object v1, p0, Lcom/bytedance/tea/crash/upload/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/tea/crash/e/d;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/bytedance/tea/crash/upload/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/tea/crash/g/i;->b(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/tea/crash/e/d;->a(Z)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_1e
    .catchall {:try_start_0 .. :try_end_10} :catchall_30

    .line 60
    invoke-static {}, Lcom/bytedance/tea/crash/e/h;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/tea/crash/upload/d;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/bytedance/tea/crash/f/c;->a(Landroid/os/Handler;Landroid/content/Context;)Lcom/bytedance/tea/crash/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/f/c;->a()V

    .line 62
    :goto_1d
    return-void

    .line 56
    :catch_1e
    move-exception v0

    .line 57
    :try_start_1f
    invoke-static {v0}, Lcom/bytedance/tea/crash/g/j;->b(Ljava/lang/Throwable;)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_30

    .line 60
    invoke-static {}, Lcom/bytedance/tea/crash/e/h;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/tea/crash/upload/d;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/bytedance/tea/crash/f/c;->a(Landroid/os/Handler;Landroid/content/Context;)Lcom/bytedance/tea/crash/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/f/c;->a()V

    goto :goto_1d

    :catchall_30
    move-exception v0

    invoke-static {}, Lcom/bytedance/tea/crash/e/h;->b()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/tea/crash/upload/d;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/bytedance/tea/crash/f/c;->a(Landroid/os/Handler;Landroid/content/Context;)Lcom/bytedance/tea/crash/f/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/tea/crash/f/c;->a()V

    throw v0
.end method
