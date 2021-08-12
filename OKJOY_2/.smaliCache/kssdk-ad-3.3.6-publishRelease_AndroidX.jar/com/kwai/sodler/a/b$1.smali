.class final Lcom/kwai/sodler/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwai/sodler/lib/a/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwai/sodler/a/b;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwai/sodler/lib/a/f;Ljava/io/File;)V
    .registers 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==============start download:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Sodler.helper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x4

    const/4 v3, 0x0

    :try_start_1e
    invoke-virtual {p1}, Lcom/kwai/sodler/lib/a/f;->q()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, p2, v3, v5}, Lcom/kwad/sdk/core/download/e;->a(Ljava/lang/String;Ljava/io/File;Lcom/kwad/sdk/core/download/e$b;I)Z

    invoke-virtual {p1}, Lcom/kwai/sodler/lib/a/f;->p()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_47

    invoke-static {p2}, Lcom/kwai/sodler/lib/c/a;->f(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/kwai/sodler/lib/a/f;->p()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3f

    goto :goto_47

    :cond_3f
    new-instance p1, Lcom/kwai/sodler/lib/ext/PluginError$UpdateError;

    const-string p2, "file md5 not equal"

    invoke-direct {p1, p2, v2}, Lcom/kwai/sodler/lib/ext/PluginError$UpdateError;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_47
    .catchall {:try_start_1e .. :try_end_47} :catchall_66

    :cond_47
    :goto_47
    invoke-static {v3}, Lcom/kwai/sodler/a/a;->a(Ljava/io/InputStream;)V

    invoke-static {v3}, Lcom/kwai/sodler/a/a;->a(Ljava/io/OutputStream;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-static {}, Lcom/kwai/sodler/lib/j;->a()Lcom/kwai/sodler/lib/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/sodler/lib/j;->h()Lcom/kwai/sodler/lib/j$a;

    move-result-object v0

    if-eqz v0, :cond_65

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "sodler_download"

    invoke-interface {v0, p2, p1}, Lcom/kwai/sodler/lib/j$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_65
    return-void

    :catchall_66
    move-exception p1

    :try_start_67
    new-instance p2, Lcom/kwai/sodler/lib/ext/PluginError$UpdateError;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v2}, Lcom/kwai/sodler/lib/ext/PluginError$UpdateError;-><init>(Ljava/lang/String;I)V

    throw p2
    :try_end_71
    .catchall {:try_start_67 .. :try_end_71} :catchall_71

    :catchall_71
    move-exception p1

    invoke-static {v3}, Lcom/kwai/sodler/a/a;->a(Ljava/io/InputStream;)V

    invoke-static {v3}, Lcom/kwai/sodler/a/a;->a(Ljava/io/OutputStream;)V

    throw p1
.end method
