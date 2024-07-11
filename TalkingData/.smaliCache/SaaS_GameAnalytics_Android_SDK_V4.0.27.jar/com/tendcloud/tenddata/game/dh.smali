.class Lcom/tendcloud/tenddata/game/dh;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/game/dg;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/dg;)V
    .registers 2

    .line 333
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/dh;->this$0:Lcom/tendcloud/tenddata/game/dg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dh;->this$0:Lcom/tendcloud/tenddata/game/dg;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tendcloud/tenddata/game/dg;->f:J

    .line 338
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dh;->this$0:Lcom/tendcloud/tenddata/game/dg;

    iget-wide v0, v0, Lcom/tendcloud/tenddata/game/dg;->f:J

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/dh;->this$0:Lcom/tendcloud/tenddata/game/dg;

    iget-wide v2, v2, Lcom/tendcloud/tenddata/game/dg;->g:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/dh;->this$0:Lcom/tendcloud/tenddata/game/dg;

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/dg;->a(Lcom/tendcloud/tenddata/game/dg;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_71

    .line 339
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dh;->this$0:Lcom/tendcloud/tenddata/game/dg;

    iget-wide v1, v0, Lcom/tendcloud/tenddata/game/dg;->f:J

    iput-wide v1, v0, Lcom/tendcloud/tenddata/game/dg;->g:J

    .line 340
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dh;->this$0:Lcom/tendcloud/tenddata/game/dg;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/dg;->b(Lcom/tendcloud/tenddata/game/dg;)Lcom/tendcloud/tenddata/game/ci;

    move-result-object v1

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/dg;->d:Lcom/tendcloud/tenddata/game/ci;

    .line 341
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dh;->this$0:Lcom/tendcloud/tenddata/game/dg;

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/dg;->d:Lcom/tendcloud/tenddata/game/ci;

    if-nez v0, :cond_3c

    .line 343
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dh;->this$0:Lcom/tendcloud/tenddata/game/dg;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/dg;->c(Lcom/tendcloud/tenddata/game/dg;)V

    .line 344
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dh;->this$0:Lcom/tendcloud/tenddata/game/dg;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/dg;->d(Lcom/tendcloud/tenddata/game/dg;)Lcom/tendcloud/tenddata/game/ci;

    move-result-object v1

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/dg;->d:Lcom/tendcloud/tenddata/game/ci;

    .line 346
    :cond_3c
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dh;->this$0:Lcom/tendcloud/tenddata/game/dg;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/dg;->d(Lcom/tendcloud/tenddata/game/dg;)Lcom/tendcloud/tenddata/game/ci;

    move-result-object v1

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/dg;->e:Lcom/tendcloud/tenddata/game/ci;

    .line 347
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dh;->this$0:Lcom/tendcloud/tenddata/game/dg;

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/dg;->d:Lcom/tendcloud/tenddata/game/ci;

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dh;->this$0:Lcom/tendcloud/tenddata/game/dg;

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/dg;->e:Lcom/tendcloud/tenddata/game/ci;

    if-nez v0, :cond_51

    goto :goto_70

    .line 353
    :cond_51
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dh;->this$0:Lcom/tendcloud/tenddata/game/dg;

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/dg;->a:Lcom/tendcloud/tenddata/game/cj;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/dh;->this$0:Lcom/tendcloud/tenddata/game/dg;

    iget-object v1, v1, Lcom/tendcloud/tenddata/game/dg;->d:Lcom/tendcloud/tenddata/game/ci;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/dh;->this$0:Lcom/tendcloud/tenddata/game/dg;

    iget-object v2, v2, Lcom/tendcloud/tenddata/game/dg;->e:Lcom/tendcloud/tenddata/game/ci;

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/cj;->a(Lcom/tendcloud/tenddata/game/ci;Lcom/tendcloud/tenddata/game/ci;)D

    move-result-wide v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    cmpg-double v4, v0, v2

    if-gez v4, :cond_71

    .line 354
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dh;->this$0:Lcom/tendcloud/tenddata/game/dg;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/dg;->c(Lcom/tendcloud/tenddata/game/dg;)V
    :try_end_6f
    .catchall {:try_start_0 .. :try_end_6f} :catchall_72

    goto :goto_71

    .line 348
    :cond_70
    :goto_70
    return-void

    .line 360
    :cond_71
    :goto_71
    goto :goto_76

    .line 357
    :catchall_72
    move-exception v0

    .line 359
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 361
    :goto_76
    return-void
.end method
