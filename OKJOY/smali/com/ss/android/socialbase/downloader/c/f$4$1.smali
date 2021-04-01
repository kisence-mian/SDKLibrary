.class Lcom/ss/android/socialbase/downloader/c/f$4$1;
.super Lcom/ss/android/socialbase/downloader/c/b$a;
.source "SqlDownloadCacheAidlWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/c/f$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/c/f$4;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/c/f$4;)V
    .registers 2

    .prologue
    .line 145
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/c/f$4$1;->a:Lcom/ss/android/socialbase/downloader/c/f$4;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/c/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;Ljava/util/Map;)V
    .registers 5

    .prologue
    .line 148
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f$4$1;->a:Lcom/ss/android/socialbase/downloader/c/f$4;

    iget-object v0, v0, Lcom/ss/android/socialbase/downloader/c/f$4;->a:Landroid/util/SparseArray;

    invoke-static {v0, p1}, Lcom/ss/android/socialbase/downloader/m/f;->a(Landroid/util/SparseArray;Ljava/util/Map;)V

    .line 149
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f$4$1;->a:Lcom/ss/android/socialbase/downloader/c/f$4;

    iget-object v0, v0, Lcom/ss/android/socialbase/downloader/c/f$4;->b:Landroid/util/SparseArray;

    invoke-static {v0, p2}, Lcom/ss/android/socialbase/downloader/m/f;->a(Landroid/util/SparseArray;Ljava/util/Map;)V

    .line 150
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f$4$1;->a:Lcom/ss/android/socialbase/downloader/c/f$4;

    iget-object v0, v0, Lcom/ss/android/socialbase/downloader/c/f$4;->c:Lcom/ss/android/socialbase/downloader/c/d;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/c/d;->a()V

    .line 151
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f$4$1;->a:Lcom/ss/android/socialbase/downloader/c/f$4;

    iget-object v0, v0, Lcom/ss/android/socialbase/downloader/c/f$4;->d:Lcom/ss/android/socialbase/downloader/c/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/c/f;->a(Lcom/ss/android/socialbase/downloader/c/b;)V

    .line 152
    return-void
.end method
