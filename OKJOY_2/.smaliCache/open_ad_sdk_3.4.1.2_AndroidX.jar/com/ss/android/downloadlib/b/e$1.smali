.class Lcom/ss/android/downloadlib/b/e$1;
.super Ljava/lang/Object;
.source "AppLinkMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/ss/android/downloadlib/b/d;

.field final synthetic c:Lcom/ss/android/downloadlib/b/e;


# virtual methods
.method public run()V
    .registers 5

    .line 56
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ss/android/downloadlib/b/e$1;->c:Lcom/ss/android/downloadlib/b/e;

    invoke-static {v2}, Lcom/ss/android/downloadlib/b/e;->a(Lcom/ss/android/downloadlib/b/e;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/ss/android/downloadlib/b/e$1;->a:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1c

    goto :goto_23

    .line 60
    :cond_1c
    iget-object v0, p0, Lcom/ss/android/downloadlib/b/e$1;->b:Lcom/ss/android/downloadlib/b/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ss/android/downloadlib/b/d;->a(Z)V

    goto :goto_29

    .line 58
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/ss/android/downloadlib/b/e$1;->b:Lcom/ss/android/downloadlib/b/d;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/ss/android/downloadlib/b/d;->a(Z)V

    .line 62
    :goto_29
    return-void
.end method
