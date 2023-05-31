.class Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$3;
.super Ljava/lang/Object;
.source "DownloadTaskDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/g/c;

.field final synthetic b:I

.field final synthetic c:Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;Lcom/ss/android/socialbase/downloader/g/c;I)V
    .registers 4

    .prologue
    .line 101
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$3;->c:Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;

    iput-object p2, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$3;->a:Lcom/ss/android/socialbase/downloader/g/c;

    iput p3, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    .prologue
    .line 104
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->h()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/d;->b()Lcom/ss/android/socialbase/appdownloader/c/d;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_f

    .line 106
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$3;->a:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/appdownloader/c/d;->a(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 109
    :cond_f
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$3;->b:I

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/f;->i(I)Lcom/ss/android/socialbase/downloader/d/z;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_2a

    .line 111
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$3;->a:Lcom/ss/android/socialbase/downloader/g/c;

    const-string v3, ""

    const-string v4, ""

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/ss/android/socialbase/downloader/d/z;->a(ILcom/ss/android/socialbase/downloader/g/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_2a
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 114
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$3;->b:I

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/f;->b(I)V

    .line 115
    :cond_3d
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$3;->c:Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->finish()V

    .line 116
    return-void
.end method
