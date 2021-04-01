.class public Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/kwai/filedownloader/f0/c;

.field private b:Lcom/kwai/filedownloader/f0/b;

.field private c:Lcom/kwai/filedownloader/y;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/Integer;

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/lang/Boolean;

.field private h:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwai/filedownloader/f0/b;)Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;->b:Lcom/kwai/filedownloader/f0/b;

    return-object p0
.end method

.method public a(Lcom/kwai/filedownloader/f0/c;)Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;->a:Lcom/kwai/filedownloader/f0/c;

    return-object p0
.end method

.method public a(Lcom/kwai/filedownloader/y;)Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;->c:Lcom/kwai/filedownloader/y;

    return-object p0
.end method

.method public a(Ljava/lang/Boolean;)Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;->f:Ljava/lang/Boolean;

    return-object p0
.end method

.method public a(Ljava/lang/Integer;)Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method public a()Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;
    .registers 11

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;->a:Lcom/kwai/filedownloader/f0/c;

    if-eqz v1, :cond_41

    iget-object v3, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;->c:Lcom/kwai/filedownloader/y;

    if-eqz v3, :cond_41

    iget-object v4, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;->d:Ljava/lang/Integer;

    if-eqz v4, :cond_41

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;->h:Ljava/lang/Integer;

    if-eqz v0, :cond_41

    new-instance v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;

    iget-object v2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;->b:Lcom/kwai/filedownloader/f0/b;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;->e:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;->f:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v7, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;->g:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-object v8, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;->h:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;-><init>(Lcom/kwai/filedownloader/f0/c;Lcom/kwai/filedownloader/f0/b;Lcom/kwai/filedownloader/y;IIZZILcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;)V

    return-object v0

    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public b(Ljava/lang/Boolean;)Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;->g:Ljava/lang/Boolean;

    return-object p0
.end method

.method public b(Ljava/lang/Integer;)Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;->h:Ljava/lang/Integer;

    return-object p0
.end method

.method public c(Ljava/lang/Integer;)Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;->d:Ljava/lang/Integer;

    return-object p0
.end method
