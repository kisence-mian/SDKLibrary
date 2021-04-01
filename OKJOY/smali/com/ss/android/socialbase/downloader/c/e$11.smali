.class Lcom/ss/android/socialbase/downloader/c/e$11;
.super Ljava/lang/Object;
.source "SqlDownloadCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/c/e;->f(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ss/android/socialbase/downloader/c/e;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/c/e;I)V
    .registers 3

    .prologue
    .line 835
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/c/e$11;->b:Lcom/ss/android/socialbase/downloader/c/e;

    iput p2, p0, Lcom/ss/android/socialbase/downloader/c/e$11;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 838
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$11;->b:Lcom/ss/android/socialbase/downloader/c/e;

    iget v1, p0, Lcom/ss/android/socialbase/downloader/c/e$11;->a:I

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/c/e;->e(I)Z

    .line 839
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$11;->b:Lcom/ss/android/socialbase/downloader/c/e;

    iget v1, p0, Lcom/ss/android/socialbase/downloader/c/e$11;->a:I

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/c/e;->d(I)V

    .line 840
    return-void
.end method
