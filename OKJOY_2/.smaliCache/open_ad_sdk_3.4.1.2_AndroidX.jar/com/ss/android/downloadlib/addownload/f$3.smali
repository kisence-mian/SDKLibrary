.class Lcom/ss/android/downloadlib/addownload/f$3;
.super Ljava/lang/Object;
.source "CommonDownloadHandler.java"

# interfaces
.implements Lcom/ss/android/downloadlib/addownload/d/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/f;->f(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/ss/android/downloadlib/addownload/f;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/addownload/f;ZII)V
    .registers 5

    .line 648
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/f$3;->d:Lcom/ss/android/downloadlib/addownload/f;

    iput-boolean p2, p0, Lcom/ss/android/downloadlib/addownload/f$3;->a:Z

    iput p3, p0, Lcom/ss/android/downloadlib/addownload/f$3;->b:I

    iput p4, p0, Lcom/ss/android/downloadlib/addownload/f$3;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/downloadad/a/b/b;)V
    .registers 5

    .line 652
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/f$3;->d:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/f;->e(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/downloadlib/addownload/h;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f$3;->d:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/f;->d(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ss/android/downloadlib/addownload/f$3;->a:Z

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/downloadlib/addownload/h;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)V

    .line 653
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object p1

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/downloadlib/addownload/f$3;->b:I

    iget v2, p0, Lcom/ss/android/downloadlib/addownload/f$3;->c:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/ss/android/socialbase/appdownloader/d;->a(Landroid/content/Context;II)V

    .line 654
    return-void
.end method
