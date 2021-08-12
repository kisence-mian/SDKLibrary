.class Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$1;
.super Ljava/lang/Object;
.source "DownloadTaskDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$1;->a:Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    .line 149
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$1;->a:Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->finish()V

    .line 150
    return-void
.end method
