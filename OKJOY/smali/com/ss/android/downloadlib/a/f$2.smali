.class Lcom/ss/android/downloadlib/a/f$2;
.super Ljava/lang/Object;
.source "CommonDownloadHandler.java"

# interfaces
.implements Lcom/ss/android/a/a/a/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/a/f;->f(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/a/f;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/a/f;)V
    .registers 2

    .prologue
    .line 502
    iput-object p1, p0, Lcom/ss/android/downloadlib/a/f$2;->a:Lcom/ss/android/downloadlib/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 505
    invoke-static {}, Lcom/ss/android/downloadlib/a/f;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "performButtonClickWithNewDownloader start download"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/e/f;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 506
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f$2;->a:Lcom/ss/android/downloadlib/a/f;

    invoke-static {v0}, Lcom/ss/android/downloadlib/a/f;->c(Lcom/ss/android/downloadlib/a/f;)V

    .line 507
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 511
    invoke-static {}, Lcom/ss/android/downloadlib/a/f;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "performButtonClickWithNewDownloader onDenied"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/e/f;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 512
    return-void
.end method
