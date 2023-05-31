.class final Lcom/mintegral/msdk/reward/a/c$a;
.super Ljava/lang/Object;
.source "RewardMVVideoAdapter.java"

# interfaces
.implements Lcom/mintegral/msdk/videocommon/listener/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/reward/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/mintegral/msdk/reward/a/c;

.field private b:Lcom/mintegral/msdk/base/entity/CampaignEx;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/reward/a/c;Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 3

    .prologue
    .line 1985
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1986
    if-eqz p1, :cond_7

    .line 1987
    iput-object p1, p0, Lcom/mintegral/msdk/reward/a/c$a;->a:Lcom/mintegral/msdk/reward/a/c;

    .line 1989
    :cond_7
    iput-object p2, p0, Lcom/mintegral/msdk/reward/a/c$a;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 1990
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1995
    :try_start_0
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/i;->a()Lcom/mintegral/msdk/videocommon/download/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/videocommon/download/i;->a(Ljava/lang/String;)V

    .line 1996
    const-string v0, "RewardMVVideoAdapter"

    const-string v1, "CommonVideoDownloadListener VIDEO SUCCESS"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1997
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$a;->a:Lcom/mintegral/msdk/reward/a/c;

    if-eqz v0, :cond_59

    .line 1998
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$a;->a:Lcom/mintegral/msdk/reward/a/c;

    monitor-enter v1
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_15} :catch_5d

    .line 1999
    :try_start_15
    const-string v0, "RewardMVVideoAdapter"

    const-string v2, "adapter 1613"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2000
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$a;->a:Lcom/mintegral/msdk/reward/a/c;

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$a;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-virtual {v0}, Lcom/mintegral/msdk/reward/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 2001
    const-string v0, "RewardMVVideoAdapter"

    const-string v2, "CommonVideoDownloadListener VIDEO SUCCESS callback success"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2002
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$a;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->g(Lcom/mintegral/msdk/reward/a/c;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 2003
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2004
    const/4 v2, 0x6

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2005
    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c$a;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2006
    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c$a;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v2}, Lcom/mintegral/msdk/reward/a/c;->g(Lcom/mintegral/msdk/reward/a/c;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2007
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$a;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->g(Lcom/mintegral/msdk/reward/a/c;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2008
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/reward/a/c$a;->a:Lcom/mintegral/msdk/reward/a/c;

    .line 2011
    :cond_58
    monitor-exit v1

    .line 2016
    :cond_59
    :goto_59
    return-void

    .line 2011
    :catchall_5a
    move-exception v0

    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_15 .. :try_end_5c} :catchall_5a

    :try_start_5c
    throw v0
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5d} :catch_5d

    .line 2013
    :catch_5d
    move-exception v0

    .line 2014
    const-string v1, "RewardMVVideoAdapter"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_59
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 2021
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$a;->a:Lcom/mintegral/msdk/reward/a/c;

    if-eqz v0, :cond_17

    .line 2022
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$a;->a:Lcom/mintegral/msdk/reward/a/c;

    monitor-enter v1
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_1b

    .line 2023
    :try_start_7
    const-string v0, "RewardMVVideoAdapter"

    const-string v2, "CommonVideoDownloadListener VIDEO failed"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2024
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$a;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0, p1, p2}, Lcom/mintegral/msdk/reward/a/c;->a(Lcom/mintegral/msdk/reward/a/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 2025
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/reward/a/c$a;->a:Lcom/mintegral/msdk/reward/a/c;

    .line 2026
    monitor-exit v1

    .line 2032
    :cond_17
    :goto_17
    return-void

    .line 2026
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    :try_start_1a
    throw v0
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1b} :catch_1b

    .line 2028
    :catch_1b
    move-exception v0

    .line 2029
    const-string v1, "RewardMVVideoAdapter"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_17
.end method
