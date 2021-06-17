.class Lcom/tendcloud/tenddata/game/df;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/game/de;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/de;)V
    .registers 2

    .line 285
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/df;->this$0:Lcom/tendcloud/tenddata/game/de;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/df;->this$0:Lcom/tendcloud/tenddata/game/de;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tendcloud/tenddata/game/de;->b:J

    .line 292
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/df;->this$0:Lcom/tendcloud/tenddata/game/de;

    iget v0, v0, Lcom/tendcloud/tenddata/game/de;->d:I

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/df;->this$0:Lcom/tendcloud/tenddata/game/de;

    iget v1, v1, Lcom/tendcloud/tenddata/game/de;->e:I

    if-eq v0, v1, :cond_4d

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/df;->this$0:Lcom/tendcloud/tenddata/game/de;

    iget v0, v0, Lcom/tendcloud/tenddata/game/de;->d:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_4d

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/df;->this$0:Lcom/tendcloud/tenddata/game/de;

    iget-wide v0, v0, Lcom/tendcloud/tenddata/game/de;->b:J

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/df;->this$0:Lcom/tendcloud/tenddata/game/de;

    iget-wide v2, v2, Lcom/tendcloud/tenddata/game/de;->c:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2bf20

    cmp-long v4, v0, v2

    if-lez v4, :cond_4d

    .line 293
    new-instance v0, Lcom/tendcloud/tenddata/game/dl;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/dl;-><init>()V

    .line 294
    const-string v1, "env"

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/dl;->b:Ljava/lang/String;

    .line 295
    const-string v1, "cellUpdate"

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/dl;->c:Ljava/lang/String;

    .line 296
    sget-object v1, Lcom/tendcloud/tenddata/game/a;->ENV:Lcom/tendcloud/tenddata/game/a;

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/dl;->a:Lcom/tendcloud/tenddata/game/a;

    .line 297
    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/game/bt;->post(Ljava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/df;->this$0:Lcom/tendcloud/tenddata/game/de;

    iget-wide v1, v0, Lcom/tendcloud/tenddata/game/de;->b:J

    iput-wide v1, v0, Lcom/tendcloud/tenddata/game/de;->c:J

    .line 300
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/df;->this$0:Lcom/tendcloud/tenddata/game/de;

    iget v1, v0, Lcom/tendcloud/tenddata/game/de;->d:I

    iput v1, v0, Lcom/tendcloud/tenddata/game/de;->e:I
    :try_end_4d
    .catchall {:try_start_0 .. :try_end_4d} :catchall_4e

    .line 305
    :cond_4d
    goto :goto_52

    .line 302
    :catchall_4e
    move-exception v0

    .line 304
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 306
    :goto_52
    return-void
.end method
