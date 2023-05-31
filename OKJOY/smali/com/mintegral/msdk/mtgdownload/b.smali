.class public Lcom/mintegral/msdk/mtgdownload/b;
.super Ljava/lang/Object;
.source "DownloadAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/mtgdownload/b$a;,
        Lcom/mintegral/msdk/mtgdownload/b$b;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field final a:Landroid/os/Messenger;

.field private c:Landroid/content/Context;

.field private d:Lcom/mintegral/msdk/out/IDownloadListener;

.field private e:Landroid/os/Messenger;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:[Ljava/lang/String;

.field private n:[Ljava/lang/String;

.field private o:[Ljava/lang/String;

.field private p:[Ljava/lang/String;

.field private q:[Ljava/lang/String;

.field private r:[Ljava/lang/String;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-class v0, Lcom/mintegral/msdk/mtgdownload/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/mtgdownload/b;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "none"

    iput-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b;->f:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b;->g:Ljava/lang/String;

    .line 50
    iput-boolean v1, p0, Lcom/mintegral/msdk/mtgdownload/b;->s:Z

    .line 52
    iput-boolean v1, p0, Lcom/mintegral/msdk/mtgdownload/b;->t:Z

    .line 54
    iput-boolean v1, p0, Lcom/mintegral/msdk/mtgdownload/b;->u:Z

    .line 109
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/mintegral/msdk/mtgdownload/b$b;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/mtgdownload/b$b;-><init>(Lcom/mintegral/msdk/mtgdownload/b;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b;->a:Landroid/os/Messenger;

    .line 176
    new-instance v0, Lcom/mintegral/msdk/mtgdownload/b$1;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/mtgdownload/b$1;-><init>(Lcom/mintegral/msdk/mtgdownload/b;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b;->v:Landroid/content/ServiceConnection;

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b;->c:Landroid/content/Context;

    .line 223
    iput-object p2, p0, Lcom/mintegral/msdk/mtgdownload/b;->f:Ljava/lang/String;

    .line 224
    iput-object p3, p0, Lcom/mintegral/msdk/mtgdownload/b;->h:Ljava/lang/String;

    .line 225
    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgdownload/b;Landroid/os/Messenger;)Landroid/os/Messenger;
    .registers 2

    .prologue
    .line 26
    iput-object p1, p0, Lcom/mintegral/msdk/mtgdownload/b;->e:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgdownload/b;)Lcom/mintegral/msdk/out/IDownloadListener;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b;->d:Lcom/mintegral/msdk/out/IDownloadListener;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/mintegral/msdk/mtgdownload/b;)Landroid/content/ServiceConnection;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b;->v:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic c(Lcom/mintegral/msdk/mtgdownload/b;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/mintegral/msdk/mtgdownload/b;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/mintegral/msdk/mtgdownload/b;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/mintegral/msdk/mtgdownload/b;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/mintegral/msdk/mtgdownload/b;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/mintegral/msdk/mtgdownload/b;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/mintegral/msdk/mtgdownload/b;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/mintegral/msdk/mtgdownload/b;)[Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b;->m:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/mintegral/msdk/mtgdownload/b;)[Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b;->q:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/mintegral/msdk/mtgdownload/b;)[Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b;->n:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/mintegral/msdk/mtgdownload/b;)[Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b;->o:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/mintegral/msdk/mtgdownload/b;)[Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b;->p:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/mintegral/msdk/mtgdownload/b;)[Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b;->r:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p(Lcom/mintegral/msdk/mtgdownload/b;)Z
    .registers 2

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgdownload/b;->s:Z

    return v0
.end method

.method static synthetic q(Lcom/mintegral/msdk/mtgdownload/b;)Z
    .registers 2

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgdownload/b;->t:Z

    return v0
.end method

.method static synthetic r(Lcom/mintegral/msdk/mtgdownload/b;)Z
    .registers 2

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgdownload/b;->u:Z

    return v0
.end method

.method static synthetic s(Lcom/mintegral/msdk/mtgdownload/b;)Landroid/os/Messenger;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b;->e:Landroid/os/Messenger;

    return-object v0
.end method


# virtual methods
.method public varargs setCancelUrls([Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 85
    iput-object p1, p0, Lcom/mintegral/msdk/mtgdownload/b;->p:[Ljava/lang/String;

    .line 86
    return-void
.end method

.method public varargs setCarryOnUrls([Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 89
    iput-object p1, p0, Lcom/mintegral/msdk/mtgdownload/b;->r:[Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setDownloadClz(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 247
    iput-object p1, p0, Lcom/mintegral/msdk/mtgdownload/b;->l:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setDownloadListener(Lcom/mintegral/msdk/out/IDownloadListener;)V
    .registers 2

    .prologue
    .line 243
    iput-object p1, p0, Lcom/mintegral/msdk/mtgdownload/b;->d:Lcom/mintegral/msdk/out/IDownloadListener;

    .line 244
    return-void
.end method

.method public varargs setFaiUrls([Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 73
    iput-object p1, p0, Lcom/mintegral/msdk/mtgdownload/b;->q:[Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 57
    iput-object p1, p0, Lcom/mintegral/msdk/mtgdownload/b;->i:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public varargs setPauseUrls([Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mintegral/msdk/mtgdownload/b;->o:[Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setReportClz(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 65
    iput-object p1, p0, Lcom/mintegral/msdk/mtgdownload/b;->k:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setRichNotification(Z)V
    .registers 2

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/mintegral/msdk/mtgdownload/b;->s:Z

    .line 99
    return-void
.end method

.method public setSilentDownload(Z)V
    .registers 2

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/mintegral/msdk/mtgdownload/b;->t:Z

    .line 103
    return-void
.end method

.method public varargs setStartUrls([Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 77
    iput-object p1, p0, Lcom/mintegral/msdk/mtgdownload/b;->n:[Ljava/lang/String;

    .line 78
    return-void
.end method

.method public varargs setSuccUrls([Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 69
    iput-object p1, p0, Lcom/mintegral/msdk/mtgdownload/b;->m:[Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setTargetMd5(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 61
    iput-object p1, p0, Lcom/mintegral/msdk/mtgdownload/b;->j:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setTitle(Ljava/lang/String;)Lcom/mintegral/msdk/mtgdownload/b;
    .registers 2

    .prologue
    .line 233
    iput-object p1, p0, Lcom/mintegral/msdk/mtgdownload/b;->g:Ljava/lang/String;

    .line 234
    return-object p0
.end method

.method public setWifiOnly(Z)V
    .registers 2

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/mintegral/msdk/mtgdownload/b;->u:Z

    .line 107
    return-void
.end method

.method public start()V
    .registers 6

    .prologue
    .line 251
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b;->l:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot find MTGService"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 257
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/b;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 258
    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/b;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/mintegral/msdk/mtgdownload/b;->v:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 267
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/b;->c:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/mintegral/msdk/mtgdownload/b;->c:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_2d} :catch_2e

    .line 271
    return-void

    .line 269
    :catch_2e
    move-exception v0

    .line 270
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
