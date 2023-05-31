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
    .registers 13

    const-wide/16 v2, 0x0

    const/16 v11, 0x1f4

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/pgl/a/a/a;->b()Ljava/lang/String;

    move-result-object v0

    :try_start_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/v1/getInfoPgl"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/pgl/sys/ces/b;->a()Lcom/pgl/sys/ces/b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/pgl/sys/ces/b;->a:Z

    if-eqz v0, :cond_171

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    :goto_34
    const/16 v0, 0x12d

    iget-object v8, p0, Lcom/pgl/sys/a/b;->b:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v0, v8, v9}, Lcom/pgl/sys/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {}, Lcom/pgl/sys/ces/b;->a()Lcom/pgl/sys/ces/b;

    move-result-object v8

    iget-boolean v8, v8, Lcom/pgl/sys/ces/b;->a:Z

    if-eqz v8, :cond_51

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    :cond_51
    invoke-static {}, Lcom/pgl/sys/ces/b;->a()Lcom/pgl/sys/ces/b;

    move-result-object v8

    iget-boolean v8, v8, Lcom/pgl/sys/ces/b;->a:Z

    if-eqz v8, :cond_72

    const-string v8, "CZL_Efficient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Efficient] selas : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long/2addr v2, v4

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_72
    if-eqz v0, :cond_77

    array-length v2, v0

    if-gtz v2, :cond_ae

    :cond_77
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "NullPointerException"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_7f} :catch_7f
    .catchall {:try_start_11 .. :try_end_7f} :catchall_151

    :catch_7f
    move-exception v0

    const/16 v0, 0x1f4

    :try_start_82
    sput v0, Lcom/pgl/sys/a/a;->a:I
    :try_end_84
    .catchall {:try_start_82 .. :try_end_84} :catchall_151

    invoke-static {}, Lcom/pgl/sys/ces/b;->a()Lcom/pgl/sys/ces/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SS-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/pgl/sys/a/a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pgl/sys/ces/b;->reportNow(Ljava/lang/String;)V

    :goto_a0
    iget-object v0, p0, Lcom/pgl/sys/a/b;->a:Lcom/pgl/sys/a/a/a;

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/pgl/sys/a/b;->a:Lcom/pgl/sys/a/a/a;

    invoke-static {}, Lcom/pgl/sys/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pgl/sys/a/a/a;->a(Ljava/lang/String;)V

    :cond_ad
    return-void

    :cond_ae
    :try_start_ae
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v2, "os"

    const-string v4, "android"

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "app_key"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/pgl/sys/a/a;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "version"

    const-string v4, "1.0.3"

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "version_code"

    const-string v4, "4"

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "time"

    invoke-interface {v3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v1

    :goto_e8
    const/4 v4, 0x3

    if-ge v2, v4, :cond_16f

    invoke-static {v7, v3, v0}, Lcom/pgl/sys/a/b/c;->a(Ljava/lang/String;Ljava/util/Map;[B)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v11, :cond_109

    add-int/lit8 v4, v2, 0x1

    mul-int/lit8 v4, v4, 0x3

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/pgl/a/b/f;->a(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e8

    :cond_109
    const/16 v0, 0xc8

    if-ne v1, v0, :cond_139

    const/4 v0, 0x1

    sput-boolean v0, Lcom/pgl/sys/a/a;->b:Z

    const-string v0, "token_id"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pgl/sys/a/a;->d:Ljava/lang/String;

    move v0, v1

    :goto_119
    sput v0, Lcom/pgl/sys/a/a;->a:I
    :try_end_11b
    .catch Ljava/lang/Throwable; {:try_start_ae .. :try_end_11b} :catch_7f
    .catchall {:try_start_ae .. :try_end_11b} :catchall_151

    invoke-static {}, Lcom/pgl/sys/ces/b;->a()Lcom/pgl/sys/ces/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SS-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/pgl/sys/a/a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pgl/sys/ces/b;->reportNow(Ljava/lang/String;)V

    goto/16 :goto_a0

    :cond_139
    const/16 v0, 0xca

    if-ne v1, v0, :cond_16f

    const/4 v0, 0x1

    :try_start_13e
    sput-boolean v0, Lcom/pgl/sys/a/a;->b:Z

    const-string v0, "token_id"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pgl/sys/a/a;->d:Ljava/lang/String;

    const/16 v2, 0x12e

    iget-object v3, p0, Lcom/pgl/sys/a/b;->b:Landroid/content/Context;

    invoke-static {v2, v3, v0}, Lcom/pgl/sys/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14f
    .catch Ljava/lang/Throwable; {:try_start_13e .. :try_end_14f} :catch_7f
    .catchall {:try_start_13e .. :try_end_14f} :catchall_151

    move v0, v1

    goto :goto_119

    :catchall_151
    move-exception v0

    invoke-static {}, Lcom/pgl/sys/ces/b;->a()Lcom/pgl/sys/ces/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SS-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/pgl/sys/a/a;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pgl/sys/ces/b;->reportNow(Ljava/lang/String;)V

    throw v0

    :cond_16f
    move v0, v1

    goto :goto_119

    :cond_171
    move-wide v4, v2

    goto/16 :goto_34
.end method
