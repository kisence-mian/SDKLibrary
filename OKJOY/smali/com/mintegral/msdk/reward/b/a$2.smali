.class final Lcom/mintegral/msdk/reward/b/a$2;
.super Ljava/lang/Object;
.source "RewardVideoController.java"

# interfaces
.implements Lcom/mintegral/msdk/videocommon/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/reward/b/a;->a(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/reward/b/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/reward/b/a;)V
    .registers 2

    .prologue
    .line 444
    iput-object p1, p0, Lcom/mintegral/msdk/reward/b/a$2;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    .line 450
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$2;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->a()Lcom/mintegral/msdk/videocommon/e/b;

    .line 452
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/reward/b/a$2;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v2}, Lcom/mintegral/msdk/reward/b/a;->b(Lcom/mintegral/msdk/reward/b/a;)Ljava/lang/String;

    move-result-object v2

    .line 451
    invoke-static {v1, v2}, Lcom/mintegral/msdk/videocommon/e/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/videocommon/e/c;

    move-result-object v1

    .line 450
    invoke-static {v0, v1}, Lcom/mintegral/msdk/reward/b/a;->a(Lcom/mintegral/msdk/reward/b/a;Lcom/mintegral/msdk/videocommon/e/c;)Lcom/mintegral/msdk/videocommon/e/c;

    .line 453
    return-void
.end method
