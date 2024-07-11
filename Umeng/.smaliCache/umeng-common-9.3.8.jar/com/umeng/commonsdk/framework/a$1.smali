.class final Lcom/umeng/commonsdk/framework/a$1;
.super Landroid/content/BroadcastReceiver;
.source "UMNetWorkSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/framework/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 173
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 177
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 178
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a3

    .line 179
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object p2

    .line 182
    :try_start_10
    invoke-static {}, Lcom/umeng/commonsdk/framework/a;->f()Landroid/net/ConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_9e

    .line 183
    invoke-static {}, Lcom/umeng/commonsdk/framework/a;->f()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/a;->a(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 184
    invoke-static {}, Lcom/umeng/commonsdk/framework/a;->g()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_96

    invoke-static {}, Lcom/umeng/commonsdk/framework/a;->g()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 185
    const-string v0, "--->>> network isAvailable, check if there are any files to send."

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/a;->a(Z)Z

    .line 187
    invoke-static {}, Lcom/umeng/commonsdk/framework/a;->h()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_40
    .catchall {:try_start_10 .. :try_end_40} :catchall_9f

    .line 188
    :try_start_40
    invoke-static {}, Lcom/umeng/commonsdk/framework/a;->i()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_63

    .line 189
    invoke-static {}, Lcom/umeng/commonsdk/framework/a;->i()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 190
    if-lez v3, :cond_63

    .line 191
    nop

    :goto_51
    if-ge v1, v3, :cond_63

    .line 192
    invoke-static {}, Lcom/umeng/commonsdk/framework/a;->i()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/umeng/commonsdk/framework/UMSenderStateNotify;

    invoke-interface {v4}, Lcom/umeng/commonsdk/framework/UMSenderStateNotify;->onConnectionAvailable()V

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 196
    :cond_63
    monitor-exit v2
    :try_end_64
    .catchall {:try_start_40 .. :try_end_64} :catchall_93

    .line 197
    :try_start_64
    const-string v1, "MobclickRT"

    const-string v2, "\u7f51\u7edc\u72b6\u6001\u901a\u77e5\uff1a\u5c1d\u8bd5\u53d1\u9001 MSG_PROCESS_NEXT"

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-static {}, Lcom/umeng/commonsdk/framework/a;->d()V

    .line 199
    invoke-static {}, Lcom/umeng/commonsdk/framework/a;->g()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result p2
    :try_end_76
    .catchall {:try_start_64 .. :try_end_76} :catchall_9f

    if-ne p2, v0, :cond_9e

    .line 201
    if-eqz p1, :cond_92

    .line 202
    const p2, 0x8006

    :try_start_7d
    invoke-static {p2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->eventHasExist(I)Z

    move-result v0

    if-nez v0, :cond_92

    .line 204
    nop

    .line 205
    invoke-static {p1}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object v0

    const/4 v1, 0x0

    .line 204
    invoke-static {p1, p2, v0, v1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_90
    .catchall {:try_start_7d .. :try_end_90} :catchall_91

    goto :goto_92

    .line 208
    :catchall_91
    move-exception p1

    .line 209
    :cond_92
    :goto_92
    goto :goto_9e

    .line 196
    :catchall_93
    move-exception p1

    :try_start_94
    monitor-exit v2
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    :try_start_95
    throw p1

    .line 212
    :cond_96
    const-string p1, "--->>> network disconnected."

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;)V

    .line 213
    invoke-static {v1}, Lcom/umeng/commonsdk/framework/a;->a(Z)Z
    :try_end_9e
    .catchall {:try_start_95 .. :try_end_9e} :catchall_9f

    .line 218
    :cond_9e
    :goto_9e
    goto :goto_a3

    .line 216
    :catchall_9f
    move-exception p1

    .line 217
    invoke-static {p2, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 220
    :cond_a3
    :goto_a3
    return-void
.end method
