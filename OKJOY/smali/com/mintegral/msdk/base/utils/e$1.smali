.class final Lcom/mintegral/msdk/base/utils/e$1;
.super Ljava/lang/Object;
.source "CommonFileUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/base/utils/e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    .line 274
    :try_start_0
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_41

    .line 278
    sget-object v0, Lcom/mintegral/msdk/base/common/b/c;->c:Lcom/mintegral/msdk/base/common/b/c;

    invoke-static {v0}, Lcom/mintegral/msdk/base/common/b/e;->b(Lcom/mintegral/msdk/base/common/b/c;)Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_42

    move-result-object v0

    .line 1475
    :try_start_10
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1476
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1477
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/e;->b(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    .line 1478
    array-length v2, v1

    const/4 v0, 0x0

    :goto_27
    if-ge v0, v2, :cond_41

    aget-object v3, v1, v0

    .line 1479
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 1480
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_3a} :catch_3d

    .line 1478
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 1485
    :catch_3d
    move-exception v0

    :try_start_3e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_42

    .line 1486
    :cond_41
    :goto_41
    return-void

    .line 282
    :catch_42
    move-exception v0

    .line 283
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_41

    .line 284
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_41
.end method
