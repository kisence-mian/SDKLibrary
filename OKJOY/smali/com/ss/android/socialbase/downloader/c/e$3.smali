.class Lcom/ss/android/socialbase/downloader/c/e$3;
.super Ljava/lang/Object;
.source "SqlDownloadCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/c/e;->a(ILandroid/content/ContentValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/content/ContentValues;

.field final synthetic c:Lcom/ss/android/socialbase/downloader/c/e;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/c/e;ILandroid/content/ContentValues;)V
    .registers 4

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/c/e$3;->c:Lcom/ss/android/socialbase/downloader/c/e;

    iput p2, p0, Lcom/ss/android/socialbase/downloader/c/e$3;->a:I

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/c/e$3;->b:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$3;->c:Lcom/ss/android/socialbase/downloader/c/e;

    iget v1, p0, Lcom/ss/android/socialbase/downloader/c/e$3;->a:I

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/c/e$3;->b:Landroid/content/ContentValues;

    invoke-static {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/c/e;->a(Lcom/ss/android/socialbase/downloader/c/e;ILandroid/content/ContentValues;)V

    .line 1023
    return-void
.end method
