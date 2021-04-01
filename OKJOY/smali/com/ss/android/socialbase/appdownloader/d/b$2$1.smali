.class Lcom/ss/android/socialbase/appdownloader/d/b$2$1;
.super Ljava/lang/Object;
.source "DefaultDownloadLaunchHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/d/b$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/ss/android/socialbase/appdownloader/d/b$2;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/appdownloader/d/b$2;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 108
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d/b$2$1;->b:Lcom/ss/android/socialbase/appdownloader/d/b$2;

    iput-object p2, p0, Lcom/ss/android/socialbase/appdownloader/d/b$2$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d/b$2$1;->b:Lcom/ss/android/socialbase/appdownloader/d/b$2;

    iget-object v0, v0, Lcom/ss/android/socialbase/appdownloader/d/b$2;->a:Lcom/ss/android/socialbase/appdownloader/d/b;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/d/b;->a(Lcom/ss/android/socialbase/appdownloader/d/b;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d/b$2$1;->b:Lcom/ss/android/socialbase/appdownloader/d/b$2;

    iget-object v0, v0, Lcom/ss/android/socialbase/appdownloader/d/b$2;->a:Lcom/ss/android/socialbase/appdownloader/d/b;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/d/b;->a(Lcom/ss/android/socialbase/appdownloader/d/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 128
    :cond_18
    :goto_18
    return-void

    .line 115
    :cond_19
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d/b$2$1;->b:Lcom/ss/android/socialbase/appdownloader/d/b$2;

    iget-object v0, v0, Lcom/ss/android/socialbase/appdownloader/d/b$2;->a:Lcom/ss/android/socialbase/appdownloader/d/b;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/d/b;->a(Lcom/ss/android/socialbase/appdownloader/d/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Integer;

    .line 116
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d/b$2$1;->b:Lcom/ss/android/socialbase/appdownloader/d/b$2;

    iget-object v0, v0, Lcom/ss/android/socialbase/appdownloader/d/b$2;->a:Lcom/ss/android/socialbase/appdownloader/d/b;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/d/b;->a(Lcom/ss/android/socialbase/appdownloader/d/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d/b$2$1;->b:Lcom/ss/android/socialbase/appdownloader/d/b$2;

    iget-object v0, v0, Lcom/ss/android/socialbase/appdownloader/d/b$2;->a:Lcom/ss/android/socialbase/appdownloader/d/b;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/d/b;->a(Lcom/ss/android/socialbase/appdownloader/d/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 118
    array-length v2, v1

    const/4 v0, 0x0

    :goto_3f
    if-ge v0, v2, :cond_18

    aget-object v3, v1, v0

    .line 119
    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/d/b$2$1;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/ss/android/socialbase/downloader/downloader/f;->h(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v3

    .line 120
    if-eqz v3, :cond_5a

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/c;->w()I

    move-result v4

    const/4 v5, -0x5

    if-eq v4, v5, :cond_5d

    .line 118
    :cond_5a
    :goto_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 123
    :cond_5d
    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/d/b$2$1;->b:Lcom/ss/android/socialbase/appdownloader/d/b$2;

    iget-object v4, v4, Lcom/ss/android/socialbase/appdownloader/d/b$2;->a:Lcom/ss/android/socialbase/appdownloader/d/b;

    iget-object v5, p0, Lcom/ss/android/socialbase/appdownloader/d/b$2$1;->a:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v4, v5, v3, v6}, Lcom/ss/android/socialbase/appdownloader/d/b;->a(Lcom/ss/android/socialbase/appdownloader/d/b;Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/c;Z)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_67} :catch_68

    goto :goto_5a

    .line 125
    :catch_68
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method
