.class Lcom/ss/android/downloadlib/g/a$2;
.super Ljava/lang/Object;
.source "AppInstallInvokeInterceptor.java"

# interfaces
.implements Lcom/ss/android/downloadlib/guide/install/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/g/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadlib/guide/install/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

.field final synthetic b:Lcom/ss/android/downloadlib/guide/install/a;

.field final synthetic c:Lcom/ss/android/downloadlib/g/a;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/g/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadlib/guide/install/a;)V
    .registers 4

    .line 38
    iput-object p1, p0, Lcom/ss/android/downloadlib/g/a$2;->c:Lcom/ss/android/downloadlib/g/a;

    iput-object p2, p0, Lcom/ss/android/downloadlib/g/a$2;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iput-object p3, p0, Lcom/ss/android/downloadlib/g/a$2;->b:Lcom/ss/android/downloadlib/guide/install/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 41
    iget-object v0, p0, Lcom/ss/android/downloadlib/g/a$2;->c:Lcom/ss/android/downloadlib/g/a;

    iget-object v1, p0, Lcom/ss/android/downloadlib/g/a$2;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v2, p0, Lcom/ss/android/downloadlib/g/a$2;->b:Lcom/ss/android/downloadlib/guide/install/a;

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/g/a;->a(Lcom/ss/android/downloadlib/g/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadlib/guide/install/a;)V

    .line 42
    return-void
.end method
