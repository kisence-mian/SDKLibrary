.class public final Lcom/mintegral/msdk/reward/b/a$b;
.super Ljava/lang/Object;
.source "RewardVideoController.java"

# interfaces
.implements Lcom/mintegral/msdk/reward/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/reward/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/reward/b/a;

.field private b:Lcom/mintegral/msdk/reward/a/a;

.field private c:Z

.field private d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/reward/b/a;Lcom/mintegral/msdk/reward/a/a;Z)V
    .registers 4

    .prologue
    .line 1079
    iput-object p1, p0, Lcom/mintegral/msdk/reward/b/a$b;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1080
    iput-object p2, p0, Lcom/mintegral/msdk/reward/b/a$b;->b:Lcom/mintegral/msdk/reward/a/a;

    .line 1081
    iput-boolean p3, p0, Lcom/mintegral/msdk/reward/b/a$b;->c:Z

    .line 1082
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$b;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_16

    .line 1123
    const-string v0, "RewardVideoController"

    const-string v1, "onVideoLoadSuccess remove task "

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$b;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a;->i(Lcom/mintegral/msdk/reward/b/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/reward/b/a$b;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1126
    :cond_16
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$b;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a;->a(Lcom/mintegral/msdk/reward/b/a;)Lcom/mintegral/msdk/reward/b/a$c;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/b/a$b;->c:Z

    if-eqz v0, :cond_31

    .line 1127
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$b;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a;->a(Lcom/mintegral/msdk/reward/b/a;)Lcom/mintegral/msdk/reward/b/a$c;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/reward/b/a$b;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v1}, Lcom/mintegral/msdk/reward/b/a;->b(Lcom/mintegral/msdk/reward/b/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/reward/b/a$c;->a(Lcom/mintegral/msdk/reward/b/a$c;Ljava/lang/String;)V

    .line 1129
    :cond_31
    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 1091
    iput-object p1, p0, Lcom/mintegral/msdk/reward/b/a$b;->d:Ljava/lang/Runnable;

    .line 1092
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1133
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$b;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_17

    .line 1134
    const-string v0, "RewardVideoController"

    const-string v1, "onVideoLoadFail remove task"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$b;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a;->i(Lcom/mintegral/msdk/reward/b/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/reward/b/a$b;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1137
    :cond_17
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$b;->b:Lcom/mintegral/msdk/reward/a/a;

    if-eqz v0, :cond_22

    .line 1138
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$b;->b:Lcom/mintegral/msdk/reward/a/a;

    invoke-interface {v0, v2}, Lcom/mintegral/msdk/reward/a/a;->a(Lcom/mintegral/msdk/reward/a/b;)V

    .line 1139
    iput-object v2, p0, Lcom/mintegral/msdk/reward/b/a$b;->b:Lcom/mintegral/msdk/reward/a/a;

    .line 1146
    :cond_22
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$b;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a;->a(Lcom/mintegral/msdk/reward/b/a;)Lcom/mintegral/msdk/reward/b/a$c;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/b/a$b;->c:Z

    if-eqz v0, :cond_37

    .line 1147
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$b;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a;->a(Lcom/mintegral/msdk/reward/b/a;)Lcom/mintegral/msdk/reward/b/a$c;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mintegral/msdk/reward/b/a$c;->b(Lcom/mintegral/msdk/reward/b/a$c;Ljava/lang/String;)V

    .line 1150
    :cond_37
    return-void
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$b;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_16

    .line 1097
    const-string v0, "RewardVideoController"

    const-string v1, "onCampaignLoadSuccess remove task "

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$b;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a;->i(Lcom/mintegral/msdk/reward/b/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/reward/b/a$b;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1100
    :cond_16
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$b;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a;->a(Lcom/mintegral/msdk/reward/b/a;)Lcom/mintegral/msdk/reward/b/a$c;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/b/a$b;->c:Z

    if-eqz v0, :cond_31

    .line 1101
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$b;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a;->a(Lcom/mintegral/msdk/reward/b/a;)Lcom/mintegral/msdk/reward/b/a$c;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/reward/b/a$b;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v1}, Lcom/mintegral/msdk/reward/b/a;->b(Lcom/mintegral/msdk/reward/b/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/reward/b/a$c;->c(Lcom/mintegral/msdk/reward/b/a$c;Ljava/lang/String;)V

    .line 1103
    :cond_31
    return-void
.end method
