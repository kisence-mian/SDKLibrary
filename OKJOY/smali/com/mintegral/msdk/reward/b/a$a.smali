.class public final Lcom/mintegral/msdk/reward/b/a$a;
.super Ljava/lang/Object;
.source "RewardVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/reward/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/reward/b/a;

.field private b:Lcom/mintegral/msdk/reward/a/a;

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/reward/b/a;Lcom/mintegral/msdk/reward/a/a;Z)V
    .registers 5

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/mintegral/msdk/reward/b/a$a;->a:Lcom/mintegral/msdk/reward/b/a;

    .line 1049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1050
    iput-object p2, p0, Lcom/mintegral/msdk/reward/b/a$a;->b:Lcom/mintegral/msdk/reward/a/a;

    .line 1051
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/reward/b/a$a;->c:I

    .line 1052
    iput-boolean p3, p0, Lcom/mintegral/msdk/reward/b/a$a;->d:Z

    .line 1053
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 1057
    const-string v0, "RewardVideoController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adSource="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mintegral/msdk/reward/b/a$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CommonCancelTimeTask mIsDevCall\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mintegral/msdk/reward/b/a$a;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/b/a$a;->d:Z

    if-eqz v0, :cond_2d

    .line 1067
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$a;->a:Lcom/mintegral/msdk/reward/b/a;

    const-string v1, "v3 is timeout"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/reward/b/a;->a(Lcom/mintegral/msdk/reward/b/a;Ljava/lang/String;)V

    .line 1070
    :cond_2d
    return-void
.end method
