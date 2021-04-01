.class final Lcom/mintegral/msdk/base/utils/e$2;
.super Ljava/lang/Object;
.source "CommonFileUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/base/utils/e;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .prologue
    .line 328
    :try_start_0
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    .line 330
    if-eqz v0, :cond_13

    .line 331
    sget-object v0, Lcom/mintegral/msdk/base/common/b/c;->c:Lcom/mintegral/msdk/base/common/b/c;

    invoke-static {v0}, Lcom/mintegral/msdk/base/common/b/e;->b(Lcom/mintegral/msdk/base/common/b/c;)Ljava/lang/String;

    move-result-object v0

    .line 332
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/e;->d(Ljava/lang/String;)V

    .line 334
    :cond_13
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 335
    if-nez v0, :cond_2b

    .line 336
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 338
    :cond_2b
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->ao()I

    move-result v0

    .line 339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_76

    move-result-wide v2

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sub-long/2addr v2, v0

    .line 1448
    :try_start_37
    sget-object v0, Lcom/mintegral/msdk/base/common/b/c;->c:Lcom/mintegral/msdk/base/common/b/c;

    invoke-static {v0}, Lcom/mintegral/msdk/base/common/b/e;->b(Lcom/mintegral/msdk/base/common/b/c;)Ljava/lang/String;

    move-result-object v0

    .line 1449
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1450
    new-instance v0, Lcom/mintegral/msdk/base/utils/e$5;

    invoke-direct {v0}, Lcom/mintegral/msdk/base/utils/e$5;-><init>()V

    invoke-virtual {v1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 1457
    array-length v4, v1

    const/4 v0, 0x0

    :goto_4d
    if-ge v0, v4, :cond_75

    aget-object v5, v1, v0

    .line 1458
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-gez v6, :cond_68

    .line 1459
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_68

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_68

    .line 1460
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_68} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_68} :catch_76

    .line 1457
    :cond_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 1464
    :catch_6b
    move-exception v0

    .line 1465
    :try_start_6c
    const-string v1, "CommonFileUtil"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_75} :catch_76

    .line 1466
    :cond_75
    :goto_75
    return-void

    .line 341
    :catch_76
    move-exception v0

    .line 342
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_75

    .line 343
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_75
.end method
