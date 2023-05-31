.class public Lcom/ss/android/socialbase/appdownloader/h;
.super Lcom/ss/android/socialbase/downloader/d/d;
.source "DownloadNotificationListener.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/ss/android/socialbase/downloader/notification/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/d/d;-><init>()V

    .line 41
    if-eqz p1, :cond_16

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/h;->a:Landroid/content/Context;

    .line 45
    :goto_b
    iput p2, p0, Lcom/ss/android/socialbase/appdownloader/h;->b:I

    .line 46
    iput-object p3, p0, Lcom/ss/android/socialbase/appdownloader/h;->c:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/ss/android/socialbase/appdownloader/h;->d:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lcom/ss/android/socialbase/appdownloader/h;->e:Ljava/lang/String;

    .line 49
    iput-object p6, p0, Lcom/ss/android/socialbase/appdownloader/h;->f:Ljava/lang/String;

    .line 51
    return-void

    .line 44
    :cond_16
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/h;->a:Landroid/content/Context;

    goto :goto_b
.end method

.method public constructor <init>(Lcom/ss/android/socialbase/downloader/notification/a;)V
    .registers 3

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/d/d;-><init>()V

    .line 54
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/h;->a:Landroid/content/Context;

    .line 55
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/h;->g:Lcom/ss/android/socialbase/downloader/notification/a;

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/appdownloader/h;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/h;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/ss/android/socialbase/downloader/notification/a;
    .registers 8

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/h;->g:Lcom/ss/android/socialbase/downloader/notification/a;

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/h;->a:Landroid/content/Context;

    if-eqz v0, :cond_1a

    .line 75
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/e;

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/h;->a:Landroid/content/Context;

    iget v2, p0, Lcom/ss/android/socialbase/appdownloader/h;->b:I

    iget-object v3, p0, Lcom/ss/android/socialbase/appdownloader/h;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/h;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/ss/android/socialbase/appdownloader/h;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/ss/android/socialbase/appdownloader/h;->f:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/socialbase/appdownloader/e;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_19
    return-object v0

    :cond_1a
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/h;->g:Lcom/ss/android/socialbase/downloader/notification/a;

    goto :goto_19
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 3

    .prologue
    .line 82
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 85
    :cond_c
    :goto_c
    return-void

    .line 84
    :cond_d
    invoke-super {p0, p1}, Lcom/ss/android/socialbase/downloader/d/d;->a(Lcom/ss/android/socialbase/downloader/g/c;)V

    goto :goto_c
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;)V
    .registers 4

    .prologue
    .line 168
    if-eqz p1, :cond_16

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/h;->a:Landroid/content/Context;

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->af()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 171
    :cond_16
    :goto_16
    return-void

    .line 170
    :cond_17
    invoke-super {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/d/d;->a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;)V

    goto :goto_16
.end method

.method public b(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 3

    .prologue
    .line 89
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 92
    :cond_c
    :goto_c
    return-void

    .line 91
    :cond_d
    invoke-super {p0, p1}, Lcom/ss/android/socialbase/downloader/d/d;->b(Lcom/ss/android/socialbase/downloader/g/c;)V

    goto :goto_c
.end method

.method public c(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 3

    .prologue
    .line 103
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 106
    :cond_c
    :goto_c
    return-void

    .line 105
    :cond_d
    invoke-super {p0, p1}, Lcom/ss/android/socialbase/downloader/d/d;->c(Lcom/ss/android/socialbase/downloader/g/c;)V

    goto :goto_c
.end method

.method public d(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 3

    .prologue
    .line 96
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 99
    :cond_c
    :goto_c
    return-void

    .line 98
    :cond_d
    invoke-super {p0, p1}, Lcom/ss/android/socialbase/downloader/d/d;->d(Lcom/ss/android/socialbase/downloader/g/c;)V

    goto :goto_c
.end method

.method public e(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 110
    if-eqz p1, :cond_8

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/h;->a:Landroid/content/Context;

    if-nez v2, :cond_9

    .line 164
    :cond_8
    :goto_8
    return-void

    .line 112
    :cond_9
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->af()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->y()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/c;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 113
    invoke-super {p0, p1}, Lcom/ss/android/socialbase/downloader/d/d;->e(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 117
    :cond_1c
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->u()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->v()Z

    move-result v2

    if-eqz v2, :cond_48

    :cond_28
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->y()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/c;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_48

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->ah()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_48

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->ah()Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 120
    :cond_48
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/k/a;->a(I)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v2

    const-string v3, "auto_install_when_resume"

    invoke-virtual {v2, v3, v1}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_59

    move v0, v1

    .line 126
    :cond_59
    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/h;->a:Landroid/content/Context;

    .line 127
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;IZ)I

    move-result v0

    .line 130
    :goto_65
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->k()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 131
    new-instance v2, Lcom/ss/android/socialbase/appdownloader/h$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/ss/android/socialbase/appdownloader/h$1;-><init>(Lcom/ss/android/socialbase/appdownloader/h;Lcom/ss/android/socialbase/downloader/g/c;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_8

    .line 127
    :cond_72
    const/4 v0, 0x2

    goto :goto_65
.end method
