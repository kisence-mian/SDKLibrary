.class Lcom/ss/android/socialbase/downloader/impls/a$4;
.super Ljava/lang/Object;
.source "AbsDownloadEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/a;->b(IILcom/ss/android/socialbase/downloader/d/w;Lcom/ss/android/socialbase/downloader/b/h;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/g/c;

.field final synthetic b:Lcom/ss/android/socialbase/downloader/d/w;

.field final synthetic c:Lcom/ss/android/socialbase/downloader/impls/a;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/impls/a;Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/d/w;)V
    .registers 4

    .prologue
    .line 695
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/a$4;->c:Lcom/ss/android/socialbase/downloader/impls/a;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a$4;->a:Lcom/ss/android/socialbase/downloader/g/c;

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/impls/a$4;->b:Lcom/ss/android/socialbase/downloader/d/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 698
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a$4;->a:Lcom/ss/android/socialbase/downloader/g/c;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a$4;->b:Lcom/ss/android/socialbase/downloader/d/w;

    if-eqz v0, :cond_18

    .line 699
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a$4;->a:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_19

    .line 700
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a$4;->b:Lcom/ss/android/socialbase/downloader/d/w;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a$4;->a:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/d/w;->e(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 704
    :cond_18
    :goto_18
    return-void

    .line 701
    :cond_19
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a$4;->a:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_18

    .line 702
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a$4;->b:Lcom/ss/android/socialbase/downloader/d/w;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a$4;->a:Lcom/ss/android/socialbase/downloader/g/c;

    new-instance v2, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v3, 0x3e8

    const-string v4, "\u5c1d\u8bd5\u4e3afailed\u7684\u4efb\u52a1add listener"

    invoke-direct {v2, v3, v4}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/d/w;->a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;)V

    goto :goto_18
.end method
