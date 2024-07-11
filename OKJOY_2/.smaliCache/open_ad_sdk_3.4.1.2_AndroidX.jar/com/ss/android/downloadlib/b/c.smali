.class public Lcom/ss/android/downloadlib/b/c;
.super Ljava/lang/Object;
.source "AppInstallOptimiseHelper.java"


# direct methods
.method public static a(Lcom/ss/android/downloadad/a/b/b;Lcom/ss/android/downloadlib/guide/install/a;)V
    .registers 5

    .line 32
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/a/a;->b()Z

    move-result v0

    .line 34
    if-nez v0, :cond_13

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_13

    .line 35
    invoke-static {}, Lcom/ss/android/downloadlib/h/k;->c()V

    .line 38
    :cond_13
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/a/a;->b()Z

    move-result v1

    .line 40
    if-nez v0, :cond_25

    if-eqz v1, :cond_25

    .line 41
    if-eqz p0, :cond_25

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadad/a/b/b;->l(Z)V

    .line 45
    :cond_25
    invoke-interface {p1}, Lcom/ss/android/downloadlib/guide/install/a;->a()V

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppInstallOptimiseHelper-->isAppForegroundSecond:::"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppInstallOptimiseHelper"

    invoke-static {v2, v0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    if-nez v1, :cond_4e

    .line 51
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/b/c$1;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/downloadlib/b/c$1;-><init>(Lcom/ss/android/downloadad/a/b/b;Lcom/ss/android/downloadlib/guide/install/a;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/a/a;->a(Lcom/ss/android/socialbase/downloader/a/a$a;)V

    .line 70
    :cond_4e
    return-void
.end method
