.class Lcom/sigmob/sdk/base/common/h;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/common/e;

.field private b:Lcom/sigmob/volley/toolbox/d;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/e;Lcom/sigmob/volley/toolbox/d;)V
    .registers 4

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/h;->a:Lcom/sigmob/sdk/base/common/e;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/h;->b:Lcom/sigmob/volley/toolbox/d;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/h;->b:Lcom/sigmob/volley/toolbox/d;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/String;
    .registers 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/h;->b:Lcom/sigmob/volley/toolbox/d;

    if-nez v0, :cond_12

    const-string v0, "Download Item is null"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_FILE_DOWNLOAD:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/SigmobError;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/h;->b:Lcom/sigmob/volley/toolbox/d;

    iget-object v0, v0, Lcom/sigmob/volley/toolbox/d;->i:Lcom/sigmob/volley/ae;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/h;->b:Lcom/sigmob/volley/toolbox/d;

    iget-object v0, v0, Lcom/sigmob/volley/toolbox/d;->i:Lcom/sigmob/volley/ae;

    invoke-virtual {v0}, Lcom/sigmob/volley/ae;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_21
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/h;->b:Lcom/sigmob/volley/toolbox/d;

    iget-object v0, v0, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/h;->b:Lcom/sigmob/volley/toolbox/d;

    iget-object v3, v3, Lcom/sigmob/volley/toolbox/d;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4c

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/h;->b:Lcom/sigmob/volley/toolbox/d;

    iget-object v3, v3, Lcom/sigmob/volley/toolbox/d;->d:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4c

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/h;->b:Lcom/sigmob/volley/toolbox/d;

    iput v5, v0, Lcom/sigmob/volley/toolbox/d;->g:I

    sget-object v0, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_FILE_MD5:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/SigmobError;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_4c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_69

    const-string v3, "mp4"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_69

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/h;->a:Lcom/sigmob/sdk/base/common/e;

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/e;->a(Lcom/sigmob/sdk/base/common/e;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/h;->b:Lcom/sigmob/volley/toolbox/d;

    iput v4, v0, Lcom/sigmob/volley/toolbox/d;->g:I

    :goto_67
    const/4 v0, 0x0

    goto :goto_11

    :cond_69
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a2

    const-string v2, "tgz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a2

    :try_start_77
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, ".tgz"

    const-string v4, "/"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/sigmob/sdk/base/common/utils/f;->a(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/h;->b:Lcom/sigmob/volley/toolbox/d;

    const/4 v1, 0x1

    iput v1, v0, Lcom/sigmob/volley/toolbox/d;->g:I
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_91} :catch_92

    goto :goto_67

    :catch_92
    move-exception v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/h;->b:Lcom/sigmob/volley/toolbox/d;

    iput v5, v1, Lcom/sigmob/volley/toolbox/d;->g:I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v0, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_FILE_DOWNLOAD:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/SigmobError;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_11

    :cond_a2
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/h;->b:Lcom/sigmob/volley/toolbox/d;

    iput v5, v0, Lcom/sigmob/volley/toolbox/d;->g:I

    sget-object v0, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_INFORMATION_LOSE:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/SigmobError;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_11
.end method

.method protected a(Ljava/lang/String;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/h;->b:Lcom/sigmob/volley/toolbox/d;

    iget-object v0, v0, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/e;->b(Ljava/lang/String;)Z

    :cond_10
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/h;->a:Lcom/sigmob/sdk/base/common/e;

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/e;->b(Lcom/sigmob/sdk/base/common/e;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1f
    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/h;->a:Lcom/sigmob/sdk/base/common/e;

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/e;->c(Lcom/sigmob/sdk/base/common/e;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_85

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/base/common/g;

    :goto_44
    iget-object v2, p0, Lcom/sigmob/sdk/base/common/h;->b:Lcom/sigmob/volley/toolbox/d;

    iget-object v2, v2, Lcom/sigmob/volley/toolbox/d;->b:Lcom/sigmob/volley/toolbox/e;

    sget-object v4, Lcom/sigmob/volley/toolbox/e;->a:Lcom/sigmob/volley/toolbox/e;

    if-ne v2, v4, :cond_68

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/h;->b:Lcom/sigmob/volley/toolbox/d;

    iget-object v4, v4, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/h;->a:Lcom/sigmob/sdk/base/common/e;

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/h;->b:Lcom/sigmob/volley/toolbox/d;

    const/4 v5, 0x0

    invoke-static {v2, v4, v0, p1, v5}, Lcom/sigmob/sdk/base/common/e;->a(Lcom/sigmob/sdk/base/common/e;Lcom/sigmob/volley/toolbox/d;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/h;->a:Lcom/sigmob/sdk/base/common/e;

    invoke-static {v2, v0, p1, v1}, Lcom/sigmob/sdk/base/common/e;->a(Lcom/sigmob/sdk/base/common/e;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Lcom/sigmob/sdk/base/common/g;)V

    goto :goto_1f

    :cond_68
    iget-object v2, p0, Lcom/sigmob/sdk/base/common/h;->b:Lcom/sigmob/volley/toolbox/d;

    iget-object v2, v2, Lcom/sigmob/volley/toolbox/d;->b:Lcom/sigmob/volley/toolbox/e;

    sget-object v4, Lcom/sigmob/volley/toolbox/e;->c:Lcom/sigmob/volley/toolbox/e;

    if-ne v2, v4, :cond_1f

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndCardZipPath()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/h;->b:Lcom/sigmob/volley/toolbox/d;

    iget-object v4, v4, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/h;->a:Lcom/sigmob/sdk/base/common/e;

    invoke-static {v2, v0, p1, v1}, Lcom/sigmob/sdk/base/common/e;->a(Lcom/sigmob/sdk/base/common/e;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Lcom/sigmob/sdk/base/common/g;)V

    goto :goto_1f

    :cond_84
    return-void

    :cond_85
    move-object v1, v2

    goto :goto_44
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/h;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/h;->a(Ljava/lang/String;)V

    return-void
.end method
