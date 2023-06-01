.class Lcom/ssjj/fnsdk/core/share/process/a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/share/process/ActionData;

.field private final synthetic c:Lcom/ssjj/fnsdk/core/SsjjFNParams;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:J

.field private final synthetic f:Lcom/ssjj/fnsdk/core/SsjjFNListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/ssjj/fnsdk/core/share/process/ActionData;Lcom/ssjj/fnsdk/core/SsjjFNParams;Ljava/lang/String;JLcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 8

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/process/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/share/process/a;->b:Lcom/ssjj/fnsdk/core/share/process/ActionData;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/share/process/a;->c:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/share/process/a;->d:Ljava/lang/String;

    iput-wide p5, p0, Lcom/ssjj/fnsdk/core/share/process/a;->e:J

    iput-object p7, p0, Lcom/ssjj/fnsdk/core/share/process/a;->f:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 7

    const/4 p1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/process/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/process/a;->b:Lcom/ssjj/fnsdk/core/share/process/ActionData;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/share/process/a;->c:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-static {v0, v1, v2}, Lcom/ssjj/fnsdk/core/share/process/MergeUtil;->a(Landroid/content/Context;Lcom/ssjj/fnsdk/core/share/process/ActionData;Lcom/ssjj/fnsdk/core/SsjjFNParams;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_12

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_12
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/share/process/a;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_2a
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".png"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :cond_3e
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/share/process/a;->d:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x5f

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_57} :catch_58

    return-object p1

    :catch_58
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/Boolean;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5206\u4eab\u56fe\u7247\u5904\u7406\u5b8c\u6210\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/ssjj/fnsdk/core/share/process/a;->e:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/process/a;->d:Ljava/lang/String;

    goto :goto_22

    :cond_21
    move-object v1, p1

    :goto_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/process/a;->f:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz v0, :cond_3d

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const-string v1, ""

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_3d
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/share/process/a;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/share/process/a;->a(Ljava/lang/Boolean;)V

    return-void
.end method
