.class Lcom/ss/android/socialbase/appdownloader/d$1;
.super Ljava/lang/Object;
.source "AppDownloader.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/d/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/d;->a(Lcom/ss/android/socialbase/appdownloader/g;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/appdownloader/d;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/appdownloader/d;)V
    .registers 2

    .prologue
    .line 486
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d$1;->a:Lcom/ss/android/socialbase/appdownloader/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;I)V
    .registers 5

    .prologue
    .line 489
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d$1;->a:Lcom/ss/android/socialbase/appdownloader/d;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/d;->a(Lcom/ss/android/socialbase/appdownloader/d;)Lcom/ss/android/socialbase/appdownloader/c/h;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 490
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d$1;->a:Lcom/ss/android/socialbase/appdownloader/d;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/d;->a(Lcom/ss/android/socialbase/appdownloader/d;)Lcom/ss/android/socialbase/appdownloader/c/h;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/ss/android/socialbase/appdownloader/c/h;->a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;I)V

    .line 491
    :cond_11
    return-void
.end method
