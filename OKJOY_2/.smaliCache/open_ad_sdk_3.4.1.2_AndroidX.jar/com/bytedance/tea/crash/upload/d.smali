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

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/bytedance/tea/crash/upload/d;->a:Landroid/content/Context;

    .line 22
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    .line 48
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/bytedance/tea/crash/upload/d;->a(Landroid/content/Context;I)V

    .line 49
    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .registers 4

    .line 33
    :try_start_0
    invoke-static {}, Lcom/bytedance/tea/crash/h;->a()Lcom/bytedance/tea/crash/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/e/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_14

    if-nez v0, :cond_13

    .line 34
    return-void

    .line 37
    :cond_13
    goto :goto_15

    .line 36
    :catch_14
    move-exception v0

    .line 39
    :goto_15
    invoke-static {}, Lcom/bytedance/tea/crash/e/h;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/tea/crash/upload/d;

    invoke-direct {v1, p0}, Lcom/bytedance/tea/crash/upload/d;-><init>(Landroid/content/Context;)V

    int-to-long p0, p1

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

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
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    goto :goto_15

    .line 56
    :catchall_11
    move-exception v0

    .line 57
    :try_start_12
    invoke-static {v0}, Lcom/bytedance/tea/crash/g/j;->b(Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_24

    .line 60
    :goto_15
    invoke-static {}, Lcom/bytedance/tea/crash/e/h;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/tea/crash/upload/d;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/bytedance/tea/crash/f/c;->a(Landroid/os/Handler;Landroid/content/Context;)Lcom/bytedance/tea/crash/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/f/c;->a()V

    .line 61
    nop

    .line 62
    return-void

    .line 60
    :catchall_24
    move-exception v0

    invoke-static {}, Lcom/bytedance/tea/crash/e/h;->b()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/tea/crash/upload/d;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/bytedance/tea/crash/f/c;->a(Landroid/os/Handler;Landroid/content/Context;)Lcom/bytedance/tea/crash/f/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/tea/crash/f/c;->a()V

    throw v0
.end method
