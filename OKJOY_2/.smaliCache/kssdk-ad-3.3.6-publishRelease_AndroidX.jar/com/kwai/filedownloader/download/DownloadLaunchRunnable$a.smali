.class public Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/kwai/filedownloader/d/c;

.field private b:Lcom/kwai/filedownloader/d/b;

.field private c:Lcom/kwai/filedownloader/x;

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
.method public a(Lcom/kwai/filedownloader/d/b;)Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;->b:Lcom/kwai/filedownloader/d/b;

    return-object p0
.end method

.method public a(Lcom/kwai/filedownloader/d/c;)Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;->a:Lcom/kwai/filedownloader/d/c;

    return-object p0
.end method

.method public a(Lcom/kwai/filedownloader/x;)Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;->c:Lcom/kwai/filedownloader/x;

    return-object p0
.end method

.method public a(Ljava/lang/Boolean;)Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;->f:Ljava/lang/Boolean;

    return-object p0
.end method

.method public a(Ljava/lang/Integer;)Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public a()Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;
    .registers 12

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;->a:Lcom/kwai/filedownloader/d/c;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;->c:Lcom/kwai/filedownloader/x;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;->h:Ljava/lang/Integer;

    if-eqz v0, :cond_48

    new-instance v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;

    iget-object v2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;->a:Lcom/kwai/filedownloader/d/c;

    iget-object v3, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;->b:Lcom/kwai/filedownloader/d/b;

    iget-object v4, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;->c:Lcom/kwai/filedownloader/x;

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;->h:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;-><init>(Lcom/kwai/filedownloader/d/c;Lcom/kwai/filedownloader/d/b;Lcom/kwai/filedownloader/x;IIZZILcom/kwai/filedownloader/download/DownloadLaunchRunnable$1;)V

    return-object v0

    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public b(Ljava/lang/Boolean;)Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;->g:Ljava/lang/Boolean;

    return-object p0
.end method

.method public b(Ljava/lang/Integer;)Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method public c(Ljava/lang/Integer;)Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;->h:Ljava/lang/Integer;

    return-object p0
.end method
