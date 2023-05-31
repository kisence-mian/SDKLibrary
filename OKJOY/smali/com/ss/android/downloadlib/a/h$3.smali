.class Lcom/ss/android/downloadlib/a/h$3;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Lcom/ss/android/downloadlib/a/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/a/h;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/a/h;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/a/h;)V
    .registers 2

    .prologue
    .line 351
    iput-object p1, p0, Lcom/ss/android/downloadlib/a/h$3;->a:Lcom/ss/android/downloadlib/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 6

    .prologue
    .line 354
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/h$3;->a:Lcom/ss/android/downloadlib/a/h;

    invoke-static {v1}, Lcom/ss/android/downloadlib/a/h;->b(Lcom/ss/android/downloadlib/a/h;)J

    move-result-wide v2

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v3, v1, p1}, Lcom/ss/android/downloadlib/d/a;->a(JILcom/ss/android/socialbase/downloader/g/c;)V

    .line 355
    return-void
.end method
