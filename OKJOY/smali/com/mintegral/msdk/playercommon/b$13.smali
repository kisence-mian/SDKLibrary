.class final Lcom/mintegral/msdk/playercommon/b$13;
.super Ljava/lang/Object;
.source "VideoFeedsPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/playercommon/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mintegral/msdk/playercommon/b;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/playercommon/b;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 481
    iput-object p1, p0, Lcom/mintegral/msdk/playercommon/b$13;->b:Lcom/mintegral/msdk/playercommon/b;

    iput-object p2, p0, Lcom/mintegral/msdk/playercommon/b$13;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 485
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$13;->b:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->p(Lcom/mintegral/msdk/playercommon/b;)Lcom/mintegral/msdk/playercommon/c;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 486
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$13;->b:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->p(Lcom/mintegral/msdk/playercommon/b;)Lcom/mintegral/msdk/playercommon/c;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/playercommon/b$13;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/playercommon/c;->OnBufferingStart(Ljava/lang/String;)V

    .line 489
    :cond_13
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$13;->b:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->q(Lcom/mintegral/msdk/playercommon/b;)Lcom/mintegral/msdk/playercommon/c;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 490
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$13;->b:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->q(Lcom/mintegral/msdk/playercommon/b;)Lcom/mintegral/msdk/playercommon/c;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/playercommon/b$13;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/playercommon/c;->OnBufferingStart(Ljava/lang/String;)V

    .line 492
    :cond_26
    return-void
.end method
