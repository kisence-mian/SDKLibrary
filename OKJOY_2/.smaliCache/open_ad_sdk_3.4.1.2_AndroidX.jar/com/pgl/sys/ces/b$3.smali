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

    :try_start_0
    invoke-static {}, Lcom/pgl/sys/ces/b;->a()Lcom/pgl/sys/ces/b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/pgl/sys/ces/b;->a:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_13

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    goto :goto_14

    :cond_13
    move-wide v3, v1

    :goto_14
    const/16 v0, 0xde

    iget-object v5, p0, Lcom/pgl/sys/ces/b$3;->b:Lcom/pgl/sys/ces/b;

    iget-object v5, v5, Lcom/pgl/sys/ces/b;->b:Landroid/content/Context;

    iget-object v6, p0, Lcom/pgl/sys/ces/b$3;->a:Ljava/lang/String;

    invoke-static {v0, v5, v6}, Lcom/pgl/sys/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {}, Lcom/pgl/sys/ces/b;->a()Lcom/pgl/sys/ces/b;

    move-result-object v5

    iget-boolean v5, v5, Lcom/pgl/sys/ces/b;->a:Z

    if-eqz v5, :cond_34

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    :cond_34
    invoke-static {}, Lcom/pgl/sys/ces/b;->a()Lcom/pgl/sys/ces/b;

    move-result-object v5

    iget-boolean v5, v5, Lcom/pgl/sys/ces/b;->a:Z

    if-eqz v5, :cond_55

    const-string v5, "CZL_Efficient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Efficient] report : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long/2addr v1, v3

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    if-eqz v0, :cond_6f

    array-length v1, v0

    if-lez v1, :cond_6f

    new-instance v1, Lcom/pgl/sys/ces/c/a;

    iget-object v2, p0, Lcom/pgl/sys/ces/b$3;->b:Lcom/pgl/sys/ces/b;

    iget-object v2, v2, Lcom/pgl/sys/ces/b;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/pgl/sys/ces/b$3;->b:Lcom/pgl/sys/ces/b;

    invoke-static {v3}, Lcom/pgl/sys/ces/b;->a(Lcom/pgl/sys/ces/b;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/pgl/sys/ces/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v0}, Lcom/pgl/sys/ces/c/a;->a(II[B)V

    goto :goto_78

    :cond_6f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "NullPointerException"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_77
    .catchall {:try_start_0 .. :try_end_77} :catchall_77

    :catchall_77
    move-exception v0

    :goto_78
    return-void
.end method
