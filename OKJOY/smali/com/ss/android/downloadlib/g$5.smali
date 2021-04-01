.class Lcom/ss/android/downloadlib/g$5;
.super Ljava/lang/Object;
.source "DownloadDispatcherImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/g;->a(Lcom/ss/android/socialbase/downloader/g/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/g/c;

.field final synthetic b:Lcom/ss/android/downloadlib/g;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/g;Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 3

    .prologue
    .line 298
    iput-object p1, p0, Lcom/ss/android/downloadlib/g$5;->b:Lcom/ss/android/downloadlib/g;

    iput-object p2, p0, Lcom/ss/android/downloadlib/g$5;->a:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 301
    iget-object v0, p0, Lcom/ss/android/downloadlib/g$5;->b:Lcom/ss/android/downloadlib/g;

    invoke-static {v0}, Lcom/ss/android/downloadlib/g;->a(Lcom/ss/android/downloadlib/g;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/a/a/b/a/a;

    .line 302
    iget-object v2, p0, Lcom/ss/android/downloadlib/g$5;->a:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-interface {v0, v2}, Lcom/ss/android/a/a/b/a/a;->a(Lcom/ss/android/socialbase/downloader/g/c;)V

    goto :goto_a

    .line 304
    :cond_1c
    return-void
.end method
