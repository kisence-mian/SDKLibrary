.class Lcom/ss/android/socialbase/downloader/impls/d$2;
.super Ljava/lang/Object;
.source "DefaultDownloadCache.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/b/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/d;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/impls/d;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/impls/d;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/d$2;->a:Lcom/ss/android/socialbase/downloader/impls/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d$2;->a:Lcom/ss/android/socialbase/downloader/impls/d;

    new-instance v1, Lcom/ss/android/socialbase/downloader/b/e;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/b/e;-><init>()V

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/impls/d;->a(Lcom/ss/android/socialbase/downloader/impls/d;Lcom/ss/android/socialbase/downloader/downloader/r;)Lcom/ss/android/socialbase/downloader/downloader/r;

    .line 84
    const-string v0, "DefaultDownloadCache"

    const-string v1, "rebind error,use backup sqlDownloadCache"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method
