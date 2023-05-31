.class Lcom/ss/android/socialbase/downloader/c/f$4;
.super Ljava/lang/Object;
.source "SqlDownloadCacheAidlWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/c/f;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/ss/android/socialbase/downloader/c/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/util/SparseArray;

.field final synthetic b:Landroid/util/SparseArray;

.field final synthetic c:Lcom/ss/android/socialbase/downloader/c/d;

.field final synthetic d:Lcom/ss/android/socialbase/downloader/c/f;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/c/f;Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/ss/android/socialbase/downloader/c/d;)V
    .registers 5

    .prologue
    .line 142
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/c/f$4;->d:Lcom/ss/android/socialbase/downloader/c/f;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/c/f$4;->a:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/c/f$4;->b:Landroid/util/SparseArray;

    iput-object p4, p0, Lcom/ss/android/socialbase/downloader/c/f$4;->c:Lcom/ss/android/socialbase/downloader/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f$4;->d:Lcom/ss/android/socialbase/downloader/c/f;

    new-instance v1, Lcom/ss/android/socialbase/downloader/c/f$4$1;

    invoke-direct {v1, p0}, Lcom/ss/android/socialbase/downloader/c/f$4$1;-><init>(Lcom/ss/android/socialbase/downloader/c/f$4;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/c/f;->a(Lcom/ss/android/socialbase/downloader/c/b;)V

    .line 154
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f$4;->d:Lcom/ss/android/socialbase/downloader/c/f;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/c/f;->a()V

    .line 155
    return-void
.end method
