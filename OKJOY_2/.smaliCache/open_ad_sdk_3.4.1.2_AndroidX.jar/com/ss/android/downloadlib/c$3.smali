.class Lcom/ss/android/downloadlib/c$3;
.super Ljava/lang/Object;
.source "BaseDownloadMonitorListener.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/c;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadad/a/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadad/a/b/b;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:D

.field final synthetic e:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

.field final synthetic f:Lcom/ss/android/downloadlib/c;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/c;Lcom/ss/android/downloadad/a/b/b;JJDLcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 10

    .line 148
    iput-object p1, p0, Lcom/ss/android/downloadlib/c$3;->f:Lcom/ss/android/downloadlib/c;

    iput-object p2, p0, Lcom/ss/android/downloadlib/c$3;->a:Lcom/ss/android/downloadad/a/b/b;

    iput-wide p3, p0, Lcom/ss/android/downloadlib/c$3;->b:J

    iput-wide p5, p0, Lcom/ss/android/downloadlib/c$3;->c:J

    iput-wide p7, p0, Lcom/ss/android/downloadlib/c$3;->d:D

    iput-object p9, p0, Lcom/ss/android/downloadlib/c$3;->e:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 7

    .line 152
    iget-object v0, p0, Lcom/ss/android/downloadlib/c$3;->a:Lcom/ss/android/downloadad/a/b/b;

    invoke-static {v0}, Lcom/ss/android/downloadlib/h/k;->b(Lcom/ss/android/downloadad/a/b/b;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 153
    iget-wide v0, p0, Lcom/ss/android/downloadlib/c$3;->b:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_51

    iget-wide v4, p0, Lcom/ss/android/downloadlib/c$3;->c:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_51

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/ss/android/downloadlib/c$3;->d:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_51

    .line 155
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v0

    const-string v1, "install_no_enough_space"

    invoke-static {v1}, Lcom/ss/android/downloadlib/addownload/e;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/c$3;->a:Lcom/ss/android/downloadad/a/b/b;

    const-string v3, "clean_space_install"

    invoke-virtual {v0, v3, v1, v2}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/b;)V

    .line 156
    iget-object v0, p0, Lcom/ss/android/downloadlib/c$3;->e:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-wide v1, p0, Lcom/ss/android/downloadlib/c$3;->d:D

    double-to-long v1, v1

    iget-wide v3, p0, Lcom/ss/android/downloadlib/c$3;->b:J

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/addownload/e;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;J)Z

    move-result v0

    .line 157
    if-eqz v0, :cond_49

    .line 158
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/downloader/a/a;->b(Lcom/ss/android/socialbase/downloader/a/a$a;)V

    .line 159
    iget-object v0, p0, Lcom/ss/android/downloadlib/c$3;->a:Lcom/ss/android/downloadad/a/b/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/b/b;->g(Z)V

    .line 161
    :cond_49
    goto :goto_51

    .line 163
    :cond_4a
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/downloader/a/a;->b(Lcom/ss/android/socialbase/downloader/a/a$a;)V

    .line 165
    :cond_51
    :goto_51
    return-void
.end method

.method public c()V
    .registers 1

    .line 169
    return-void
.end method
