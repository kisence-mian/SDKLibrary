.class final Lcom/mintegral/msdk/playercommon/d$7;
.super Ljava/util/TimerTask;
.source "VideoNativePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/playercommon/d;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mintegral/msdk/playercommon/d;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/playercommon/d;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 329
    iput-object p1, p0, Lcom/mintegral/msdk/playercommon/d$7;->b:Lcom/mintegral/msdk/playercommon/d;

    iput-object p2, p0, Lcom/mintegral/msdk/playercommon/d$7;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$7;->b:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->h(Lcom/mintegral/msdk/playercommon/d;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$7;->b:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->f(Lcom/mintegral/msdk/playercommon/d;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 334
    :cond_10
    const-string v0, "VideoFeedsPlayer"

    const-string v1, "\u7f13\u51b2\u8d85\u65f6"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$7;->b:Lcom/mintegral/msdk/playercommon/d;

    iget-object v1, p0, Lcom/mintegral/msdk/playercommon/d$7;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/playercommon/d;->a(Lcom/mintegral/msdk/playercommon/d;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 340
    :cond_1e
    :goto_1e
    return-void

    .line 338
    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e
.end method
