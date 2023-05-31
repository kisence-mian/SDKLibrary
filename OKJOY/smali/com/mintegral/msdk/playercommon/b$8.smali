.class final Lcom/mintegral/msdk/playercommon/b$8;
.super Ljava/util/TimerTask;
.source "VideoFeedsPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/playercommon/b;->a(Ljava/lang/String;)V
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
    .line 299
    iput-object p1, p0, Lcom/mintegral/msdk/playercommon/b$8;->b:Lcom/mintegral/msdk/playercommon/b;

    iput-object p2, p0, Lcom/mintegral/msdk/playercommon/b$8;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$8;->b:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->f(Lcom/mintegral/msdk/playercommon/b;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$8;->b:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->d(Lcom/mintegral/msdk/playercommon/b;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 304
    :cond_10
    const-string v0, "VideoFeedsPlayer"

    const-string v1, "\u7f13\u51b2\u8d85\u65f6"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$8;->b:Lcom/mintegral/msdk/playercommon/b;

    iget-object v1, p0, Lcom/mintegral/msdk/playercommon/b$8;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/playercommon/b;->a(Lcom/mintegral/msdk/playercommon/b;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 310
    :cond_1e
    :goto_1e
    return-void

    .line 308
    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e
.end method
