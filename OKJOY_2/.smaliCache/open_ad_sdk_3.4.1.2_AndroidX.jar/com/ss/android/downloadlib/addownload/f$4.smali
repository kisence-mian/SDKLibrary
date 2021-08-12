.class Lcom/ss/android/downloadlib/addownload/f$4;
.super Ljava/lang/Object;
.source "CommonDownloadHandler.java"

# interfaces
.implements Lcom/ss/android/a/a/a/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/f;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/addownload/f;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/addownload/f;)V
    .registers 2

    .line 676
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/f$4;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 679
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/f;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "performButtonClickWithNewDownloader start download"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/h/j;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 680
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f$4;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/f;->f(Lcom/ss/android/downloadlib/addownload/f;)V

    .line 681
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .line 685
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/f;->h()Ljava/lang/String;

    move-result-object p1

    const-string v0, "performButtonClickWithNewDownloader onDenied"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/ss/android/downloadlib/h/j;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 686
    return-void
.end method
