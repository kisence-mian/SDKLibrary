.class public abstract Lcom/ss/android/socialbase/downloader/d/a;
.super Ljava/lang/Object;
.source "AbsDownloadForbiddenCallback.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/d/t;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/d/a;->a:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 18
    :cond_8
    :goto_8
    return-void

    .line 17
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/d/a;->a:Z

    goto :goto_8
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/d/a;->a:Z

    return v0
.end method
