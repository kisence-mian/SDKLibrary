.class Lcom/ss/android/downloadlib/c$1;
.super Ljava/lang/Object;
.source "BaseDownloadMonitorListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/c;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/c;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/c;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/ss/android/downloadlib/c$1;->a:Lcom/ss/android/downloadlib/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 68
    nop

    .line 69
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->d()Lcom/ss/android/a/a/a/k;

    move-result-object v0

    .line 70
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v2

    .line 69
    const/4 v1, 0x5

    const/4 v3, 0x0

    const-string v4, "\u65e0\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/ss/android/a/a/a/k;->a(ILandroid/content/Context;Lcom/ss/android/a/a/b/c;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 72
    return-void
.end method
