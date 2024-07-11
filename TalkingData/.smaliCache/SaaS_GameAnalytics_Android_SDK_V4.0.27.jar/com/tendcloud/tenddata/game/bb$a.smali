.class public Lcom/tendcloud/tenddata/game/bb$a;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private lock:Ljava/lang/Object;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Landroid/content/BroadcastReceiver;)V
    .registers 4

    .line 1782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1783
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/bb$a;->context:Landroid/content/Context;

    .line 1784
    iput-object p2, p0, Lcom/tendcloud/tenddata/game/bb$a;->lock:Ljava/lang/Object;

    .line 1785
    iput-object p3, p0, Lcom/tendcloud/tenddata/game/bb$a;->receiver:Landroid/content/BroadcastReceiver;

    .line 1786
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1804
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bb$a;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_1b

    .line 1806
    :try_start_3
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/bb$a;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    .line 1812
    :try_start_8
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/bb$a;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/bb$a;->receiver:Landroid/content/BroadcastReceiver;

    goto :goto_12

    .line 1807
    :catchall_d
    move-exception v1

    .line 1812
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/bb$a;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/bb$a;->receiver:Landroid/content/BroadcastReceiver;

    :goto_12
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1813
    nop

    .line 1814
    monitor-exit v0

    .line 1819
    goto :goto_1c

    .line 1814
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_18

    :try_start_1a
    throw v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_1b

    .line 1815
    :catchall_1b
    move-exception v0

    .line 1820
    :goto_1c
    return-void
.end method

.method public unRegisterReceiver()V
    .registers 3

    .line 1789
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bb$a;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_b

    .line 1791
    :try_start_4
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/bb$a;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_a

    .line 1796
    goto :goto_b

    .line 1792
    :catchall_a
    move-exception v0

    .line 1799
    :cond_b
    :goto_b
    return-void
.end method
