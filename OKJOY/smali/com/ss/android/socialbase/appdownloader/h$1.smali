.class Lcom/ss/android/socialbase/appdownloader/h$1;
.super Ljava/lang/Object;
.source "DownloadNotificationListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/h;->e(Lcom/ss/android/socialbase/downloader/g/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/g/c;

.field final synthetic b:I

.field final synthetic c:Lcom/ss/android/socialbase/appdownloader/h;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/appdownloader/h;Lcom/ss/android/socialbase/downloader/g/c;I)V
    .registers 4

    .prologue
    .line 131
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/h$1;->c:Lcom/ss/android/socialbase/appdownloader/h;

    iput-object p2, p0, Lcom/ss/android/socialbase/appdownloader/h$1;->a:Lcom/ss/android/socialbase/downloader/g/c;

    iput p3, p0, Lcom/ss/android/socialbase/appdownloader/h$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v5, 0x1

    .line 134
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->h()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/d;->b()Lcom/ss/android/socialbase/appdownloader/c/d;

    move-result-object v1

    .line 136
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/h$1;->c:Lcom/ss/android/socialbase/appdownloader/h;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/h;->a(Lcom/ss/android/socialbase/appdownloader/h;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/h$1;->a:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/downloader/f;->i(I)Lcom/ss/android/socialbase/downloader/d/z;

    move-result-object v0

    .line 138
    if-nez v1, :cond_21

    if-eqz v0, :cond_85

    .line 139
    :cond_21
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/ss/android/socialbase/appdownloader/h$1;->a:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/h$1;->a:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_85

    .line 142
    :try_start_38
    iget-object v3, p0, Lcom/ss/android/socialbase/appdownloader/h$1;->c:Lcom/ss/android/socialbase/appdownloader/h;

    invoke-static {v3}, Lcom/ss/android/socialbase/appdownloader/h;->a(Lcom/ss/android/socialbase/appdownloader/h;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 143
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->a()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 144
    if-eqz v2, :cond_85

    .line 145
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 146
    iget v2, p0, Lcom/ss/android/socialbase/appdownloader/h$1;->b:I

    if-eq v2, v5, :cond_68

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/h$1;->a:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->z()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_68

    .line 147
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/h$1;->a:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->z()Ljava/lang/String;

    move-result-object v4

    .line 149
    :cond_68
    if-eqz v1, :cond_7b

    .line 150
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/h$1;->a:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v2

    const/4 v3, 0x1

    const/4 v5, -0x3

    iget-object v6, p0, Lcom/ss/android/socialbase/appdownloader/h$1;->a:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/g/c;->aw()J

    move-result-wide v6

    invoke-interface/range {v1 .. v7}, Lcom/ss/android/socialbase/appdownloader/c/d;->a(IILjava/lang/String;IJ)V

    .line 152
    :cond_7b
    if-eqz v0, :cond_85

    .line 153
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/h$1;->a:Lcom/ss/android/socialbase/downloader/g/c;

    const-string v3, ""

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/ss/android/socialbase/downloader/d/z;->a(ILcom/ss/android/socialbase/downloader/g/c;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_85} :catch_86

    .line 160
    :cond_85
    :goto_85
    return-void

    .line 155
    :catch_86
    move-exception v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_85
.end method
