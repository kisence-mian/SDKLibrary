.class public Lcom/ss/android/downloadlib/b/i;
.super Ljava/lang/Object;
.source "KllkOptimiseHelper.java"


# direct methods
.method public static a(Lcom/ss/android/downloadad/a/b/a;)Z
    .registers 4

    .line 27
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/c;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_30

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_30

    .line 29
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->k()Lcom/ss/android/a/a/a/b;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 30
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->k()Lcom/ss/android/a/a/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/a/a/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 31
    invoke-static {p0}, Lcom/ss/android/downloadlib/h/e;->a(Lcom/ss/android/downloadad/a/b/a;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v2, "invoke_app_form_background_switch"

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_30

    .line 32
    invoke-interface {p0}, Lcom/ss/android/downloadad/a/b/a;->q()Z

    move-result p0

    if-eqz p0, :cond_30

    goto :goto_31

    :cond_30
    const/4 v1, 0x0

    .line 27
    :goto_31
    return v1
.end method
