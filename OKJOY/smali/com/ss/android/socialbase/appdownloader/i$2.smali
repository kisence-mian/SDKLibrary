.class Lcom/ss/android/socialbase/appdownloader/i$2;
.super Ljava/lang/Object;
.source "InstallQueue.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/i;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/appdownloader/i;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/appdownloader/i;)V
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/i$2;->a:Lcom/ss/android/socialbase/appdownloader/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 7

    .prologue
    .line 55
    invoke-static {}, Lcom/ss/android/socialbase/downloader/k/a;->b()Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v0

    const-string v1, "install_on_resume_install_interval"

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/i$2;->a:Lcom/ss/android/socialbase/appdownloader/i;

    invoke-static {v4}, Lcom/ss/android/socialbase/appdownloader/i;->b(Lcom/ss/android/socialbase/appdownloader/i;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-gez v0, :cond_1d

    .line 62
    :goto_1c
    return-void

    .line 60
    :cond_1d
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/i$2;->a:Lcom/ss/android/socialbase/appdownloader/i;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/ss/android/socialbase/appdownloader/i;->a(Lcom/ss/android/socialbase/appdownloader/i;J)J

    .line 61
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/i$2;->a:Lcom/ss/android/socialbase/appdownloader/i;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/i;->a(Lcom/ss/android/socialbase/appdownloader/i;)V

    goto :goto_1c
.end method

.method public c()V
    .registers 1

    .prologue
    .line 66
    return-void
.end method
