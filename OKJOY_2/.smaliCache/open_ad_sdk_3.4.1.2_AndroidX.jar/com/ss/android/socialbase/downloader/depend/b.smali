.class public abstract Lcom/ss/android/socialbase/downloader/depend/b;
.super Ljava/lang/Object;
.source "AbsDownloadForbiddenCallback.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/w;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/depend/b;->a:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 15
    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_d

    .line 17
    :cond_9
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/depend/b;->a:Z

    .line 18
    return-void

    .line 16
    :cond_d
    :goto_d
    return-void
.end method

.method public a()Z
    .registers 2

    .line 21
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/depend/b;->a:Z

    return v0
.end method
