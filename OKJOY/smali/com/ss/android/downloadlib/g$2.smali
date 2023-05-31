.class Lcom/ss/android/downloadlib/g$2;
.super Ljava/lang/Object;
.source "DownloadDispatcherImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/g;->a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/g/c;

.field final synthetic b:Lcom/ss/android/socialbase/downloader/e/a;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/ss/android/downloadlib/g;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/g;Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 265
    iput-object p1, p0, Lcom/ss/android/downloadlib/g$2;->d:Lcom/ss/android/downloadlib/g;

    iput-object p2, p0, Lcom/ss/android/downloadlib/g$2;->a:Lcom/ss/android/socialbase/downloader/g/c;

    iput-object p3, p0, Lcom/ss/android/downloadlib/g$2;->b:Lcom/ss/android/socialbase/downloader/e/a;

    iput-object p4, p0, Lcom/ss/android/downloadlib/g$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 268
    iget-object v0, p0, Lcom/ss/android/downloadlib/g$2;->d:Lcom/ss/android/downloadlib/g;

    invoke-static {v0}, Lcom/ss/android/downloadlib/g;->a(Lcom/ss/android/downloadlib/g;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/a/a/b/a/a;

    .line 269
    iget-object v2, p0, Lcom/ss/android/downloadlib/g$2;->a:Lcom/ss/android/socialbase/downloader/g/c;

    iget-object v3, p0, Lcom/ss/android/downloadlib/g$2;->b:Lcom/ss/android/socialbase/downloader/e/a;

    iget-object v4, p0, Lcom/ss/android/downloadlib/g$2;->c:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v4}, Lcom/ss/android/a/a/b/a/a;->a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;Ljava/lang/String;)V

    goto :goto_a

    .line 271
    :cond_20
    return-void
.end method
