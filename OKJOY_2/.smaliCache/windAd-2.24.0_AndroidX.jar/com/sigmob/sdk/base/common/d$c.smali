.class Lcom/sigmob/sdk/base/common/d$c;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/common/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/common/d;

.field private b:Lcom/sigmob/volley/toolbox/d;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/d;Lcom/sigmob/volley/toolbox/d;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/d$c;->a:Lcom/sigmob/sdk/base/common/d;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/d$c;->b:Lcom/sigmob/volley/toolbox/d;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/d$c;->b:Lcom/sigmob/volley/toolbox/d;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/String;
    .registers 8

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/d$c;->b:Lcom/sigmob/volley/toolbox/d;

    if-nez p1, :cond_10

    const-string p1, "Download Item is null"

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    sget-object p1, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_FILE_DOWNLOAD:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/SigmobError;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_10
    iget-object p1, p1, Lcom/sigmob/volley/toolbox/d;->i:Lcom/sigmob/volley/t;

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/d$c;->b:Lcom/sigmob/volley/toolbox/d;

    iget-object p1, p1, Lcom/sigmob/volley/toolbox/d;->i:Lcom/sigmob/volley/t;

    invoke-virtual {p1}, Lcom/sigmob/volley/t;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1d
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/d$c;->b:Lcom/sigmob/volley/toolbox/d;

    iget-object p1, p1, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/d$c;->b:Lcom/sigmob/volley/toolbox/d;

    iget-object v2, v2, Lcom/sigmob/volley/toolbox/d;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_49

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/d$c;->b:Lcom/sigmob/volley/toolbox/d;

    iget-object v2, v2, Lcom/sigmob/volley/toolbox/d;->d:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_49

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/d$c;->b:Lcom/sigmob/volley/toolbox/d;

    iput v3, p1, Lcom/sigmob/volley/toolbox/d;->g:I

    sget-object p1, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_FILE_MD5:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/SigmobError;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_66

    const-string v2, "mp4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_66

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/d$c;->a:Lcom/sigmob/sdk/base/common/d;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/d;->a(Lcom/sigmob/sdk/base/common/d;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/d$c;->b:Lcom/sigmob/volley/toolbox/d;

    iput v4, p1, Lcom/sigmob/volley/toolbox/d;->g:I

    goto :goto_8d

    :cond_66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a2

    const-string v1, "tgz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a2

    :try_start_74
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, ".tgz"

    const-string v5, "/"

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sigmob/sdk/common/f/f;->a(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/d$c;->b:Lcom/sigmob/volley/toolbox/d;

    iput v4, p1, Lcom/sigmob/volley/toolbox/d;->g:I
    :try_end_8d
    .catchall {:try_start_74 .. :try_end_8d} :catchall_8f

    :goto_8d
    const/4 p1, 0x0

    return-object p1

    :catchall_8f
    move-exception p1

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/d$c;->b:Lcom/sigmob/volley/toolbox/d;

    iput v3, v0, Lcom/sigmob/volley/toolbox/d;->g:I

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    sget-object p1, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_FILE_DOWNLOAD:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/SigmobError;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_a2
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/d$c;->b:Lcom/sigmob/volley/toolbox/d;

    iput v3, p1, Lcom/sigmob/volley/toolbox/d;->g:I

    sget-object p1, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_INFORMATION_LOSE:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/SigmobError;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/String;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/d$c;->b:Lcom/sigmob/volley/toolbox/d;

    iget-object v0, v0, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/e;->b(Ljava/lang/String;)Z

    :cond_10
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/d$c;->a:Lcom/sigmob/sdk/base/common/d;

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/d;->b(Lcom/sigmob/sdk/base/common/d;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/d$c;->a:Lcom/sigmob/sdk/base/common/d;

    invoke-static {v2}, Lcom/sigmob/sdk/base/common/d;->c(Lcom/sigmob/sdk/base/common/d;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    const/4 v3, 0x0

    if-eqz v2, :cond_45

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/sigmob/sdk/base/common/d$b;

    :cond_45
    iget-object v2, p0, Lcom/sigmob/sdk/base/common/d$c;->b:Lcom/sigmob/volley/toolbox/d;

    iget-object v2, v2, Lcom/sigmob/volley/toolbox/d;->b:Lcom/sigmob/volley/toolbox/d$a;

    sget-object v4, Lcom/sigmob/volley/toolbox/d$a;->a:Lcom/sigmob/volley/toolbox/d$a;

    if-ne v2, v4, :cond_67

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/d$c;->b:Lcom/sigmob/volley/toolbox/d;

    iget-object v4, v4, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/d$c;->b:Lcom/sigmob/volley/toolbox/d;

    const/4 v4, 0x0

    invoke-static {v2, v1, p1, v4}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/volley/toolbox/d;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Z)V

    :goto_61
    iget-object v2, p0, Lcom/sigmob/sdk/base/common/d$c;->a:Lcom/sigmob/sdk/base/common/d;

    invoke-static {v2, v1, p1, v3}, Lcom/sigmob/sdk/base/common/d;->a(Lcom/sigmob/sdk/base/common/d;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Lcom/sigmob/sdk/base/common/d$b;)V

    goto :goto_1f

    :cond_67
    iget-object v2, p0, Lcom/sigmob/sdk/base/common/d$c;->b:Lcom/sigmob/volley/toolbox/d;

    iget-object v2, v2, Lcom/sigmob/volley/toolbox/d;->b:Lcom/sigmob/volley/toolbox/d$a;

    sget-object v4, Lcom/sigmob/volley/toolbox/d$a;->c:Lcom/sigmob/volley/toolbox/d$a;

    if-ne v2, v4, :cond_1f

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndCardZipPath()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/d$c;->b:Lcom/sigmob/volley/toolbox/d;

    iget-object v4, v4, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_61

    :cond_7e
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/d$c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/d$c;->a(Ljava/lang/String;)V

    return-void
.end method
