.class public Lcom/pgl/sys/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/pgl/sys/a/a/a;

.field private b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/pgl/sys/a/a/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/pgl/sys/a/b;->a:Lcom/pgl/sys/a/a/a;

    iput-object p1, p0, Lcom/pgl/sys/a/b;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    const-string v0, "SS-"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/pgl/a/a/a;->b()Ljava/lang/String;

    move-result-object v2

    :try_start_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/v1/getInfoPgl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/pgl/sys/ces/b;->a()Lcom/pgl/sys/ces/b;

    move-result-object v3

    iget-boolean v3, v3, Lcom/pgl/sys/ces/b;->a:Z

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_34

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    goto :goto_35

    :cond_34
    move-wide v6, v4

    :goto_35
    const/16 v3, 0x12d

    iget-object v8, p0, Lcom/pgl/sys/a/b;->b:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v3, v8, v9}, Lcom/pgl/sys/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    check-cast v3, [B

    invoke-static {}, Lcom/pgl/sys/ces/b;->a()Lcom/pgl/sys/ces/b;

    move-result-object v8

    iget-boolean v8, v8, Lcom/pgl/sys/ces/b;->a:Z

    if-eqz v8, :cond_52

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    :cond_52
    invoke-static {}, Lcom/pgl/sys/ces/b;->a()Lcom/pgl/sys/ces/b;

    move-result-object v8

    iget-boolean v8, v8, Lcom/pgl/sys/ces/b;->a:Z

    if-eqz v8, :cond_73

    const-string v8, "CZL_Efficient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Efficient] selas : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long/2addr v4, v6

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_73
    if-eqz v3, :cond_119

    array-length v4, v3

    if-lez v4, :cond_119

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "?os=android&app_key="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/pgl/sys/a/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&did="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/pgl/sys/ces/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&version="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "1.0.5"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&version_code="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "5"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&time="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v4, 0x1f8

    :goto_ca
    const/4 v5, 0x3

    if-ge v2, v5, :cond_10d

    invoke-static {v1, v3}, Lcom/pgl/sys/a/b/a;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "code"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/16 v6, 0xca

    const/16 v7, 0xc8

    if-eq v4, v7, :cond_ef

    if-eq v4, v6, :cond_ef

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v5, v2, 0x3

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    invoke-static {v5, v6}, Lcom/pgl/a/b/f;->a(J)V
    :try_end_ee
    .catchall {:try_start_e .. :try_end_ee} :catchall_121

    goto :goto_ca

    :cond_ef
    const-string v1, "token_id"

    const/4 v2, 0x1

    if-ne v4, v7, :cond_fc

    :try_start_f4
    sput-boolean v2, Lcom/pgl/sys/a/a;->b:Z

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/pgl/sys/a/a;->d:Ljava/lang/String;

    :cond_fc
    if-ne v4, v6, :cond_10d

    sput-boolean v2, Lcom/pgl/sys/a/a;->b:Z

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/pgl/sys/a/a;->d:Ljava/lang/String;

    const/16 v2, 0x12e

    iget-object v3, p0, Lcom/pgl/sys/a/b;->b:Landroid/content/Context;

    invoke-static {v2, v3, v1}, Lcom/pgl/sys/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10d
    sput v4, Lcom/pgl/sys/a/a;->a:I
    :try_end_10f
    .catchall {:try_start_f4 .. :try_end_10f} :catchall_121

    invoke-static {}, Lcom/pgl/sys/ces/b;->a()Lcom/pgl/sys/ces/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_12f

    :cond_119
    :try_start_119
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "NullPointerException"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_121
    .catchall {:try_start_119 .. :try_end_121} :catchall_121

    :catchall_121
    move-exception v1

    const/16 v1, 0x1f4

    :try_start_124
    sput v1, Lcom/pgl/sys/a/a;->a:I
    :try_end_126
    .catchall {:try_start_124 .. :try_end_126} :catchall_14c

    invoke-static {}, Lcom/pgl/sys/ces/b;->a()Lcom/pgl/sys/ces/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_12f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/pgl/sys/a/a;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/pgl/sys/ces/b;->reportNow(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pgl/sys/a/b;->a:Lcom/pgl/sys/a/a/a;

    if-eqz v0, :cond_14b

    invoke-static {}, Lcom/pgl/sys/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pgl/sys/a/a/a;->a(Ljava/lang/String;)V

    :cond_14b
    return-void

    :catchall_14c
    move-exception v1

    invoke-static {}, Lcom/pgl/sys/ces/b;->a()Lcom/pgl/sys/ces/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lcom/pgl/sys/a/a;->a:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/pgl/sys/ces/b;->reportNow(Ljava/lang/String;)V

    throw v1
.end method
