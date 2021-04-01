.class final Lcom/alphab/i/a$b;
.super Lcom/mintegral/msdk/base/common/f/a;
.source "AlphabImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alphab/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alphab/i/a;

.field private b:J

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alphab/i/a;JLjava/lang/String;)V
    .registers 5

    .prologue
    .line 412
    iput-object p1, p0, Lcom/alphab/i/a$b;->a:Lcom/alphab/i/a;

    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/f/a;-><init>()V

    .line 413
    iput-wide p2, p0, Lcom/alphab/i/a$b;->b:J

    .line 414
    iput-object p4, p0, Lcom/alphab/i/a$b;->c:Ljava/lang/String;

    .line 415
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 420
    :try_start_1
    iget-object v1, p0, Lcom/alphab/i/a$b;->a:Lcom/alphab/i/a;

    invoke-static {v1}, Lcom/alphab/i/a;->c(Lcom/alphab/i/a;)V

    .line 421
    iget-object v1, p0, Lcom/alphab/i/a$b;->a:Lcom/alphab/i/a;

    invoke-static {v1}, Lcom/alphab/i/a;->a(Lcom/alphab/i/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/b/b;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/b/b;->c()V

    .line 422
    iget-object v1, p0, Lcom/alphab/i/a$b;->a:Lcom/alphab/i/a;

    invoke-static {v1}, Lcom/alphab/i/a;->a(Lcom/alphab/i/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/b/b;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/b;

    move-result-object v1

    iget-object v2, p0, Lcom/alphab/i/a$b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    .line 423
    if-eqz v1, :cond_44

    .line 424
    sget-object v0, Lcom/alphab/i/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "did in database "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alphab/i/a$b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :cond_43
    :goto_43
    return-void

    .line 428
    :cond_44
    iget-object v1, p0, Lcom/alphab/i/a$b;->a:Lcom/alphab/i/a;

    invoke-static {v1}, Lcom/alphab/i/a;->a(Lcom/alphab/i/a;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/alphab/i/a$b;->a:Lcom/alphab/i/a;

    invoke-static {v1}, Lcom/alphab/i/a;->a(Lcom/alphab/i/a;)Landroid/content/Context;

    move-result-object v1

    .line 1025
    sget-boolean v2, Lcom/alphab/a;->d:Z

    if-eqz v2, :cond_94

    .line 428
    :cond_56
    :goto_56
    if-eqz v0, :cond_43

    .line 430
    sget-object v0, Lcom/alphab/i/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "insert did"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alphab/i/a$b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/alphab/i/a$b;->a:Lcom/alphab/i/a;

    invoke-static {v0}, Lcom/alphab/i/a;->a(Lcom/alphab/i/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/b;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alphab/i/a$b;->c:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alphab/i/a$b;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/mintegral/msdk/base/b/b;->a(Ljava/lang/String;J)J

    .line 434
    iget-object v0, p0, Lcom/alphab/i/a$b;->a:Lcom/alphab/i/a;

    iget-object v1, p0, Lcom/alphab/i/a$b;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alphab/i/a;->a(Lcom/alphab/i/a;Ljava/lang/String;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8a} :catch_8b

    goto :goto_43

    .line 436
    :catch_8b
    move-exception v0

    .line 437
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_43

    .line 438
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_43

    .line 1029
    :cond_94
    :try_start_94
    invoke-static {v1}, Lcom/alphab/a/b;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_a0

    invoke-static {}, Lcom/alphab/a/b;->a()Z
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_9d} :catch_8b

    move-result v1

    if-eqz v1, :cond_56

    :cond_a0
    const/4 v0, 0x0

    goto :goto_56
.end method

.method public final b()V
    .registers 1

    .prologue
    .line 446
    return-void
.end method
