.class final Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$1;
.super Ljava/lang/Object;
.source "LibHolder.java"

# interfaces
.implements Lcom/ss/android/a/a/b/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/a;Lcom/ss/android/a/a/b/b;)V
    .registers 4

    .line 96
    const-string p1, "LibHolder"

    const-string p2, "completeListener: onDownloadStart"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 3

    .line 119
    const-string p1, "LibHolder"

    const-string v0, "completeListener: onCanceled"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;Ljava/lang/String;)V
    .registers 4

    .line 113
    const-string p1, "LibHolder"

    const-string p2, "completeListener: onDownloadFailed"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;)V
    .registers 3

    .line 102
    const-string p1, "LibHolder"

    const-string p2, "completeListener: onDownloadFinished"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;)V
    .registers 4

    .line 107
    const-string p1, "LibHolder"

    const-string v0, "completeListener: onInstalled"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->a(Ljava/lang/String;)V

    .line 109
    return-void
.end method
