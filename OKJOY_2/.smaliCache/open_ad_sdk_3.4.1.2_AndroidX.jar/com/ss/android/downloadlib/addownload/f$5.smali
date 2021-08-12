.class Lcom/ss/android/downloadlib/addownload/f$5;
.super Ljava/lang/Object;
.source "CommonDownloadHandler.java"

# interfaces
.implements Lcom/ss/android/downloadlib/addownload/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/f;->o()V
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

    .line 696
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/f$5;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 699
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f$5;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/f;->c(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/downloadlib/addownload/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/e;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 700
    return-void

    .line 702
    :cond_d
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f$5;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/f;->g(Lcom/ss/android/downloadlib/addownload/f;)V

    .line 703
    return-void
.end method
