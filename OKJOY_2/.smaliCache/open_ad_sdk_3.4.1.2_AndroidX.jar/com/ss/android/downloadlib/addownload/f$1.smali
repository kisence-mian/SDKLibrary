.class Lcom/ss/android/downloadlib/addownload/f$1;
.super Ljava/lang/Object;
.source "CommonDownloadHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/f;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/addownload/f;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/addownload/f;)V
    .registers 2

    .line 492
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/f$1;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 495
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f$1;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/f;->a(Lcom/ss/android/downloadlib/addownload/f;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/h;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 496
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/a/a/b/d;

    .line 497
    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/f$1;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {v2}, Lcom/ss/android/downloadlib/addownload/f;->b(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/a/a/c/e;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ss/android/a/a/b/d;->b(Lcom/ss/android/a/a/c/e;)V

    .line 498
    goto :goto_e

    .line 499
    :cond_24
    return-void
.end method
