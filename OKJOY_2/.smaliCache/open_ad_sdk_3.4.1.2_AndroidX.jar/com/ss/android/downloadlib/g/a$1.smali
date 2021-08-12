.class Lcom/ss/android/downloadlib/g/a$1;
.super Ljava/lang/Object;
.source "AppInstallInvokeInterceptor.java"

# interfaces
.implements Lcom/ss/android/downloadlib/guide/install/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/g/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/appdownloader/c/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/appdownloader/c/i;

.field final synthetic b:Lcom/ss/android/downloadlib/g/a;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/g/a;Lcom/ss/android/socialbase/appdownloader/c/i;)V
    .registers 3

    .line 27
    iput-object p1, p0, Lcom/ss/android/downloadlib/g/a$1;->b:Lcom/ss/android/downloadlib/g/a;

    iput-object p2, p0, Lcom/ss/android/downloadlib/g/a$1;->a:Lcom/ss/android/socialbase/appdownloader/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/ss/android/downloadlib/g/a$1;->a:Lcom/ss/android/socialbase/appdownloader/c/i;

    invoke-interface {v0}, Lcom/ss/android/socialbase/appdownloader/c/i;->a()V

    .line 31
    return-void
.end method
