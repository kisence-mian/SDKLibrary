.class final Lcom/mintegral/msdk/mtgnative/c/b$6;
.super Ljava/util/TimerTask;
.source "NativeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/mtgnative/c/b;->a(Ljava/util/List;Lcom/mintegral/msdk/mtgnative/c/b$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/mintegral/msdk/mtgnative/c/b$b;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/mintegral/msdk/mtgnative/c/b;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgnative/c/b;JLcom/mintegral/msdk/mtgnative/c/b$b;Ljava/util/List;)V
    .registers 6

    .prologue
    .line 3290
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/b$6;->d:Lcom/mintegral/msdk/mtgnative/c/b;

    iput-wide p2, p0, Lcom/mintegral/msdk/mtgnative/c/b$6;->a:J

    iput-object p4, p0, Lcom/mintegral/msdk/mtgnative/c/b$6;->b:Lcom/mintegral/msdk/mtgnative/c/b$b;

    iput-object p5, p0, Lcom/mintegral/msdk/mtgnative/c/b$6;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 3293
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "search campain status"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3295
    iget-wide v4, p0, Lcom/mintegral/msdk/mtgnative/c/b$6;->a:J

    sub-long/2addr v0, v4

    const-wide/32 v4, 0xea60

    cmp-long v0, v0, v4

    if-ltz v0, :cond_23

    .line 3296
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$6;->b:Lcom/mintegral/msdk/mtgnative/c/b$b;

    invoke-interface {v0}, Lcom/mintegral/msdk/mtgnative/c/b$b;->a()V

    .line 3297
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$6;->d:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->x(Lcom/mintegral/msdk/mtgnative/c/b;)V

    .line 3327
    :cond_22
    :goto_22
    return-void

    .line 3299
    :cond_23
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$6;->d:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->j(Lcom/mintegral/msdk/mtgnative/c/b;)Landroid/content/Context;

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v0

    .line 3300
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$6;->d:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgnative/c/b;->y(Lcom/mintegral/msdk/mtgnative/c/b;)Lcom/mintegral/msdk/c/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/c/d;->o()I

    move-result v1

    .line 3301
    const/16 v3, 0x9

    if-eq v0, v3, :cond_48

    const/4 v0, 0x2

    if-ne v1, v0, :cond_48

    .line 3302
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$6;->b:Lcom/mintegral/msdk/mtgnative/c/b$b;

    invoke-interface {v0}, Lcom/mintegral/msdk/mtgnative/c/b$b;->a()V

    .line 3303
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$6;->d:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->x(Lcom/mintegral/msdk/mtgnative/c/b;)V

    goto :goto_22

    .line 3304
    :cond_48
    const/4 v0, 0x3

    if-ne v1, v0, :cond_56

    .line 3305
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$6;->b:Lcom/mintegral/msdk/mtgnative/c/b$b;

    invoke-interface {v0}, Lcom/mintegral/msdk/mtgnative/c/b$b;->a()V

    .line 3306
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$6;->d:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->x(Lcom/mintegral/msdk/mtgnative/c/b;)V

    goto :goto_22

    .line 3310
    :cond_56
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$6;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, v2

    :goto_5d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/out/Campaign;

    .line 3312
    invoke-virtual {v0}, Lcom/mintegral/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v1

    .line 3313
    instance-of v4, v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v4, :cond_c5

    .line 3314
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v1, v0

    check-cast v1, Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3316
    :goto_93
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/c;->getInstance()Lcom/mintegral/msdk/videocommon/download/c;

    move-result-object v1

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/b$6;->d:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v4}, Lcom/mintegral/msdk/mtgnative/c/b;->c(Lcom/mintegral/msdk/mtgnative/c/b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lcom/mintegral/msdk/videocommon/download/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/videocommon/download/a;

    move-result-object v0

    .line 3317
    if-eqz v0, :cond_c3

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$6;->d:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgnative/c/b;->y(Lcom/mintegral/msdk/mtgnative/c/b;)Lcom/mintegral/msdk/c/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/c/d;->f()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/videocommon/download/k;->a(Lcom/mintegral/msdk/videocommon/download/a;I)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 3318
    const/4 v0, 0x1

    goto :goto_5d

    .line 3321
    :cond_b5
    if-eqz v0, :cond_22

    .line 3322
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$6;->b:Lcom/mintegral/msdk/mtgnative/c/b$b;

    invoke-interface {v0}, Lcom/mintegral/msdk/mtgnative/c/b$b;->a()V

    .line 3323
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$6;->d:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->x(Lcom/mintegral/msdk/mtgnative/c/b;)V

    goto/16 :goto_22

    :cond_c3
    move v0, v2

    goto :goto_5d

    :cond_c5
    move-object v0, v1

    goto :goto_93
.end method
