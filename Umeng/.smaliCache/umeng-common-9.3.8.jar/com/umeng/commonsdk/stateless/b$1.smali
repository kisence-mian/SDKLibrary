.class final Lcom/umeng/commonsdk/stateless/b$1;
.super Landroid/content/BroadcastReceiver;
.source "UMSLNetWorkSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/stateless/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 63
    if-eqz p1, :cond_5d

    if-eqz p2, :cond_5d

    :try_start_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 65
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5d

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/umeng/commonsdk/stateless/b;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 67
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->e()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_5d

    .line 68
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->e()Landroid/content/Context;

    move-result-object p2

    const-string v0, "connectivity"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    .line 70
    if-eqz p2, :cond_5d

    .line 71
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p2
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_58

    .line 72
    const-string v0, "MobclickRT"

    if-eqz p2, :cond_4e

    :try_start_39
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p2

    if-eqz p2, :cond_4e

    .line 73
    const/4 p2, 0x1

    invoke-static {p2}, Lcom/umeng/commonsdk/stateless/b;->a(Z)Z

    .line 75
    const-string p2, "--->>>\u7f51\u7edc\u53ef\u7528\uff1a \u89e6\u53d12\u53f7\u6570\u636e\u4ed3\u4fe1\u5c01\u6d88\u8d39\u52a8\u4f5c\u3002"

    invoke-static {v0, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/16 p2, 0x112

    invoke-static {p2}, Lcom/umeng/commonsdk/stateless/b;->b(I)V

    goto :goto_5d

    .line 78
    :cond_4e
    const-string p2, "--->>>\u7f51\u7edc\u65ad\u8fde\uff1a 2\u53f7\u6570\u636e\u4ed3"

    invoke-static {v0, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const/4 p2, 0x0

    invoke-static {p2}, Lcom/umeng/commonsdk/stateless/b;->a(Z)Z
    :try_end_57
    .catchall {:try_start_39 .. :try_end_57} :catchall_58

    goto :goto_5d

    .line 86
    :catchall_58
    move-exception p2

    .line 87
    invoke-static {p1, p2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_5e

    .line 88
    :cond_5d
    :goto_5d
    nop

    .line 89
    :goto_5e
    return-void
.end method
