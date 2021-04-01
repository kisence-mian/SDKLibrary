.class Lcom/pgl/sys/ces/b$3;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pgl/sys/ces/b;->reportNow(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/pgl/sys/ces/b;


# direct methods
.method constructor <init>(Lcom/pgl/sys/ces/b;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/pgl/sys/ces/b$3;->b:Lcom/pgl/sys/ces/b;

    iput-object p3, p0, Lcom/pgl/sys/ces/b$3;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const-wide/16 v2, 0x0

    :try_start_2
    sget-boolean v0, Lcom/pgl/sys/ces/b;->h:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/pgl/sys/ces/b$3;->b:Lcom/pgl/sys/ces/b;

    const-string v1, "RPT-S"

    invoke-static {v0, v1}, Lcom/pgl/sys/ces/b;->a(Lcom/pgl/sys/ces/b;Ljava/lang/String;)V

    :cond_d
    invoke-static {}, Lcom/pgl/sys/ces/b;->a()Lcom/pgl/sys/ces/b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/pgl/sys/ces/b;->a:Z

    if-eqz v0, :cond_81

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    move-wide v4, v0

    :goto_1e
    const/16 v0, 0xde

    iget-object v1, p0, Lcom/pgl/sys/ces/b$3;->b:Lcom/pgl/sys/ces/b;

    iget-object v1, v1, Lcom/pgl/sys/ces/b;->b:Landroid/content/Context;

    iget-object v6, p0, Lcom/pgl/sys/ces/b$3;->a:Ljava/lang/String;

    invoke-static {v0, v1, v6}, Lcom/pgl/sys/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {}, Lcom/pgl/sys/ces/b;->a()Lcom/pgl/sys/ces/b;

    move-result-object v1

    iget-boolean v1, v1, Lcom/pgl/sys/ces/b;->a:Z

    if-eqz v1, :cond_3e

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    :cond_3e
    invoke-static {}, Lcom/pgl/sys/ces/b;->a()Lcom/pgl/sys/ces/b;

    move-result-object v1

    iget-boolean v1, v1, Lcom/pgl/sys/ces/b;->a:Z

    if-eqz v1, :cond_5f

    const-string v1, "CZL_Efficient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Efficient] report : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long/2addr v2, v4

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    if-eqz v0, :cond_64

    array-length v1, v0

    if-gtz v1, :cond_6e

    :cond_64
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "NullPointerException"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_6c
    move-exception v0

    :goto_6d
    return-void

    :cond_6e
    new-instance v1, Lcom/pgl/sys/ces/c/a;

    iget-object v2, p0, Lcom/pgl/sys/ces/b$3;->b:Lcom/pgl/sys/ces/b;

    iget-object v2, v2, Lcom/pgl/sys/ces/b;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/pgl/sys/ces/b$3;->b:Lcom/pgl/sys/ces/b;

    iget-object v3, v3, Lcom/pgl/sys/ces/b;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/pgl/sys/ces/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v0}, Lcom/pgl/sys/ces/c/a;->a(II[B)V
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_80} :catch_6c

    goto :goto_6d

    :cond_81
    move-wide v4, v2

    goto :goto_1e
.end method
