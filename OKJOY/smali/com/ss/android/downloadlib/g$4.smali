.class Lcom/ss/android/downloadlib/g$4;
.super Ljava/lang/Object;
.source "DownloadDispatcherImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/g;->b(Lcom/ss/android/socialbase/downloader/g/c;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/g/c;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ss/android/downloadlib/g;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/g;Lcom/ss/android/socialbase/downloader/g/c;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 287
    iput-object p1, p0, Lcom/ss/android/downloadlib/g$4;->c:Lcom/ss/android/downloadlib/g;

    iput-object p2, p0, Lcom/ss/android/downloadlib/g$4;->a:Lcom/ss/android/socialbase/downloader/g/c;

    iput-object p3, p0, Lcom/ss/android/downloadlib/g$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 290
    iget-object v0, p0, Lcom/ss/android/downloadlib/g$4;->c:Lcom/ss/android/downloadlib/g;

    invoke-static {v0}, Lcom/ss/android/downloadlib/g;->a(Lcom/ss/android/downloadlib/g;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/a/a/b/a/a;

    .line 291
    iget-object v2, p0, Lcom/ss/android/downloadlib/g$4;->a:Lcom/ss/android/socialbase/downloader/g/c;

    iget-object v3, p0, Lcom/ss/android/downloadlib/g$4;->b:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/ss/android/a/a/b/a/a;->b(Lcom/ss/android/socialbase/downloader/g/c;Ljava/lang/String;)V

    goto :goto_a

    .line 293
    :cond_1e
    return-void
.end method
