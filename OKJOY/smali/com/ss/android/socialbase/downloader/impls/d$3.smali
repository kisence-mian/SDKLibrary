.class Lcom/ss/android/socialbase/downloader/impls/d$3;
.super Ljava/lang/Object;
.source "DefaultDownloadCache.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/d;->f()V
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

    .prologue
    .line 113
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/d$3;->a:Lcom/ss/android/socialbase/downloader/impls/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d$3;->a:Lcom/ss/android/socialbase/downloader/impls/d;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/d;->a(Lcom/ss/android/socialbase/downloader/impls/d;)V

    .line 117
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d$3;->a:Lcom/ss/android/socialbase/downloader/impls/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/impls/d;->g()V

    .line 118
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/d;->c:Lcom/ss/android/socialbase/downloader/b/d;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/b/d;)V

    .line 119
    return-void
.end method
