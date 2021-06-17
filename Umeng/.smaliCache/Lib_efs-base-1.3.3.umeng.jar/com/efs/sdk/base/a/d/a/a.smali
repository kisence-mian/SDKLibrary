.class public final Lcom/efs/sdk/base/a/d/a/a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 25
    nop

    .line 1039
    invoke-static {p0}, Lcom/efs/sdk/base/a/h/a/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 26
    return-void
.end method

.method public final run()V
    .registers 6

    .line 1053
    invoke-static {}, Lcom/efs/sdk/base/a/c/c$a;->a()Lcom/efs/sdk/base/a/c/c;

    move-result-object v0

    .line 44
    nop

    .line 1117
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v1

    iget-object v1, v1, Lcom/efs/sdk/base/a/c/a;->c:Landroid/content/Context;

    .line 1116
    invoke-static {v1}, Lcom/efs/sdk/base/a/h/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1118
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "network change: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2025
    const-string v3, "efs.info.manager"

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1119
    iget-object v0, v0, Lcom/efs/sdk/base/a/c/c;->a:Lcom/efs/sdk/base/a/c/b;

    const-string v2, "net"

    invoke-virtual {v0, v2, v1}, Lcom/efs/sdk/base/a/c/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    return-void
.end method
