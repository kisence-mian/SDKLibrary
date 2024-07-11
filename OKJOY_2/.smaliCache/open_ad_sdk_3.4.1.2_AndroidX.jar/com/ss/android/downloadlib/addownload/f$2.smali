.class Lcom/ss/android/downloadlib/addownload/f$2;
.super Ljava/lang/Object;
.source "CommonDownloadHandler.java"

# interfaces
.implements Lcom/ss/android/downloadlib/addownload/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/f;->f(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/ss/android/downloadlib/addownload/f;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/addownload/f;II)V
    .registers 4

    .line 634
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/f$2;->c:Lcom/ss/android/downloadlib/addownload/f;

    iput p2, p0, Lcom/ss/android/downloadlib/addownload/f$2;->a:I

    iput p3, p0, Lcom/ss/android/downloadlib/addownload/f$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .line 637
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f$2;->c:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/f;->c(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/downloadlib/addownload/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/e;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 638
    return-void

    .line 640
    :cond_d
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/ss/android/downloadlib/addownload/f$2;->a:I

    iget v3, p0, Lcom/ss/android/downloadlib/addownload/f$2;->b:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/socialbase/appdownloader/d;->a(Landroid/content/Context;II)V

    .line 641
    return-void
.end method
