.class Lcom/ss/android/socialbase/downloader/impls/a$3;
.super Ljava/lang/Object;
.source "AbsDownloadEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/a;->b(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/ss/android/socialbase/downloader/impls/a;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/impls/a;IZ)V
    .registers 4

    .prologue
    .line 612
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/a$3;->c:Lcom/ss/android/socialbase/downloader/impls/a;

    iput p2, p0, Lcom/ss/android/socialbase/downloader/impls/a$3;->a:I

    iput-boolean p3, p0, Lcom/ss/android/socialbase/downloader/impls/a$3;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 615
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a$3;->c:Lcom/ss/android/socialbase/downloader/impls/a;

    iget v1, p0, Lcom/ss/android/socialbase/downloader/impls/a$3;->a:I

    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/impls/a$3;->b:Z

    invoke-static {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/impls/a;IZ)V

    .line 616
    return-void
.end method
