.class final Lcom/ss/android/socialbase/downloader/downloader/b$1;
.super Ljava/lang/Object;
.source "DownloadComponentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/downloader/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 177
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_9

    .line 179
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/f;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 181
    :cond_9
    return-void
.end method
