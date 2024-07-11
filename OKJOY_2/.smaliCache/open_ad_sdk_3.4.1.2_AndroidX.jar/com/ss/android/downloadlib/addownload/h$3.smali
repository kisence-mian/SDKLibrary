.class Lcom/ss/android/downloadlib/addownload/h$3;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Lcom/ss/android/downloadlib/addownload/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/h;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/addownload/h;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/addownload/h;)V
    .registers 2

    .line 331
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/h$3;->a:Lcom/ss/android/downloadlib/addownload/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 6

    .line 334
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/h$3;->a:Lcom/ss/android/downloadlib/addownload/h;

    invoke-static {v1}, Lcom/ss/android/downloadlib/addownload/h;->b(Lcom/ss/android/downloadlib/addownload/h;)J

    move-result-wide v1

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/ss/android/downloadlib/e/a;->a(JILcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 335
    return-void
.end method
