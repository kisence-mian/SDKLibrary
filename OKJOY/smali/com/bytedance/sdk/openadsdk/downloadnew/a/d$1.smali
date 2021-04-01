.class final Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;
.super Ljava/lang/Object;
.source "LibHolder.java"

# interfaces
.implements Lcom/ss/android/a/a/b/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/a;Lcom/ss/android/a/a/b/b;)V
    .registers 6
    .param p1    # Lcom/ss/android/a/a/b/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ss/android/a/a/b/a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/ss/android/a/a/b/b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 70
    const-string v0, "LibHolder"

    const-string v1, "completeListener: onDownloadStart"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 4
    .param p1    # Lcom/ss/android/socialbase/downloader/g/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 99
    const-string v0, "LibHolder"

    const-string v1, "completeListener: onCanceled"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;Ljava/lang/String;)V
    .registers 6
    .param p1    # Lcom/ss/android/socialbase/downloader/g/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 93
    const-string v0, "LibHolder"

    const-string v1, "completeListener: onDownloadFailed"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/c;Ljava/lang/String;)V
    .registers 5
    .param p1    # Lcom/ss/android/socialbase/downloader/g/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 76
    const-string v0, "LibHolder"

    const-string v1, "completeListener: onDownloadFinished"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/g/c;Ljava/lang/String;)V
    .registers 6
    .param p1    # Lcom/ss/android/socialbase/downloader/g/c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 81
    const-string v0, "LibHolder"

    const-string v1, "completeListener: onInstalled"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :try_start_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->M()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 84
    invoke-static {}, Lcom/ss/android/downloadlib/a/a/a;->a()Lcom/ss/android/downloadlib/a/a/a;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/a/a/a;->b(Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_1c} :catch_1d

    .line 89
    :cond_1c
    :goto_1c
    return-void

    .line 86
    :catch_1d
    move-exception v0

    .line 87
    const-string v1, "LibHolder"

    const-string v2, "show market open app error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1c
.end method
