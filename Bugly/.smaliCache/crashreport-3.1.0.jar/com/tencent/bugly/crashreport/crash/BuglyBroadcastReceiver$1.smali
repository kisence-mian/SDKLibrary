.class final Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->register(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;

.field private synthetic b:Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;)V
    .registers 3

    .line 72
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver$1;->b:Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;

    iput-object p2, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver$1;->a:Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 77
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->a()Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Register broadcast receiver of Bugly."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver$1;->a:Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;

    monitor-enter v0
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_2b

    .line 79
    :try_start_13
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver$1;->b:Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;

    invoke-static {v1}, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->b(Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->a()Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver$1;->b:Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;

    invoke-static {v3}, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->a(Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_13 .. :try_end_27} :catchall_28

    goto :goto_2f

    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0

    throw v1
    :try_end_2b
    .catchall {:try_start_29 .. :try_end_2b} :catchall_2b

    .line 83
    :catchall_2b
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    :goto_2f
    return-void
.end method
