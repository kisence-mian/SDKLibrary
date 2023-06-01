.class public Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;
.super Lcom/ssjj/fnsdk/core/update/FNDialog;

# interfaces
.implements Lcom/ssjj/fnsdk/core/update/ViewUpdate$ViewCallBack;


# instance fields
.field private a:Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;

.field private b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

.field private c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:J

.field private h:J

.field private i:I

.field private j:Lcom/ssjj/fnsdk/core/SsjjFNListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ssjj/fnsdk/core/update/FNDownloadItem;Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/update/FNDialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/ssjj/fnsdk/core/update/e;

    invoke-direct {v0, p0}, Lcom/ssjj/fnsdk/core/update/e;-><init>(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->j:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    iget-boolean p2, p2, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->e:Z

    invoke-direct {p0, p3, p2}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->a(Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;Z)V

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->a()V

    invoke-static {}, Lcom/ssjj/fnsdk/core/StatManager;->getInstance()Lcom/ssjj/fnsdk/core/StatManager;

    move-result-object p2

    const-string p3, "show"

    const-string v0, "dialog_update"

    const-string v1, "fn_update"

    invoke-virtual {p2, p1, v1, p3, v0}, Lcom/ssjj/fnsdk/core/StatManager;->recordEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a()V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->setVersion(Ljava/lang/String;)V

    iget v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->d:I

    if-lez v0, :cond_19

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/ssjj/fnsdk/core/UpdateUtil;->getStringSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->setSize(Ljava/lang/String;)V

    :cond_19
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->j()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->setMode(I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    const-string v2, "\u5df2\u6682\u505c"

    invoke-virtual {v0, v2}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->setProgressText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->setHtmlDesc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->setDescNormalTitle()V

    iget v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->d:I

    if-lez v0, :cond_47

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b()V

    goto :goto_5f

    :cond_47
    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->f:Z

    goto :goto_5f

    :cond_4a
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->setMode(I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->setHtmlDesc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->setDescNormalTitle()V

    :goto_5f
    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->i()V

    return-void
.end method

.method private a(II)V
    .registers 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->i:I

    if-eq v2, p1, :cond_1a

    iget-wide v3, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->g:J

    cmp-long v5, v0, v3

    if-eqz v5, :cond_1a

    sub-int v2, p1, v2

    int-to-long v5, v2

    sub-long v2, v0, v3

    div-long/2addr v5, v2

    long-to-int v2, v5

    iput p1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->i:I

    iput-wide v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->g:J

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    iget-wide v3, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->g:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_25

    iput-wide v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->g:J

    :cond_25
    iget v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->i:I

    if-nez v0, :cond_2b

    iput p1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->i:I

    :cond_2b
    if-lez v2, :cond_6e

    int-to-long v0, v2

    iput-wide v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->h:J

    sub-int/2addr p2, p1

    div-int/2addr p2, v2

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    if-eqz p1, :cond_6e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u4e0b\u8f7d\u901f\u5ea6\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v1, v2

    invoke-static {v1, v2}, Lcom/ssjj/fnsdk/core/UpdateUtil;->getStringSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->setSpeedText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5269\u4f59\u65f6\u95f4\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v1, p2

    invoke-static {v1, v2}, Lcom/ssjj/fnsdk/core/UpdateUtil;->getTimeLeftStr(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->setLeftTimeText(Ljava/lang/String;)V

    :cond_6e
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->getTotalSize()J

    move-result-wide v0

    long-to-int v1, v0

    if-lez v1, :cond_e

    iput v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->d:I

    goto :goto_2c

    :cond_e
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->a()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->a:Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;

    check-cast v0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ssjj/fnsdk/core/update/f;

    invoke-direct {v2, p0}, Lcom/ssjj/fnsdk/core/update/f;-><init>(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->getDownloadSize(Landroid/content/Context;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method private a(Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 9

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    if-eqz v0, :cond_d5

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->setMode(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "progress"

    invoke-virtual {p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->getObj(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursize"

    invoke-virtual {p1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->getObj(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "totalsize"

    invoke-virtual {p1, v3}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->getObj(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget v2, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->d:I

    if-nez v2, :cond_5f

    iput p1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->d:I

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    if-eqz v2, :cond_5f

    int-to-long v3, p1

    invoke-static {v3, v4}, Lcom/ssjj/fnsdk/core/UpdateUtil;->getStringSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->setSize(Ljava/lang/String;)V

    :cond_5f
    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-virtual {v2, v0}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->setProgress(I)V

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/ssjj/fnsdk/core/UpdateUtil;->getStringSize(J)Ljava/lang/String;

    move-result-object v2

    int-to-long v3, p1

    invoke-static {v3, v4}, Lcom/ssjj/fnsdk/core/UpdateUtil;->getStringSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_88

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    const-string v3, "\u4e0b\u8f7d\u5b8c\u6210\uff0c\u5904\u7406\u4e2d..."

    invoke-virtual {v2, v3}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->setProgressText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->setSpeedText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-virtual {v2, v3}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->setLeftTimeText(Ljava/lang/String;)V

    goto :goto_af

    :cond_88
    iget-object v4, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u4e0b\u8f7d\u4e2d ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->setProgressText(Ljava/lang/String;)V

    invoke-direct {p0, v1, p1}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->a(II)V

    :goto_af
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "progess is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " curSize is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " totalsize is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :cond_d5
    return-void
.end method

.method private a(Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;Z)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->a:Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;

    invoke-virtual {p1, p2}, Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;->a(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->f:Z

    iput-boolean p1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)V
    .registers 1

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->f()V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;I)V
    .registers 2

    iput p1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->d:I

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->a(Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->a:Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    if-eqz v0, :cond_29

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->setMode(I)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p1, "\u4e0b\u8f7d\u5df2\u4e2d\u65ad\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc\uff0c\u5c1d\u8bd5\u91cd\u65b0\u4e0b\u8f7d\u3002"

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u3000\u3000"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->setTextDesc(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->setDescRemindTitle()V

    :cond_29
    if-eqz p2, :cond_2f

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->onUpdateFinishFail(Ljava/lang/String;)V

    goto :goto_32

    :cond_2f
    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->onUpdatingFail(Ljava/lang/String;)V

    :goto_32
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "Update comment"

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/CommentHnadler;->readComment(Ljava/io/File;)[B

    move-result-object p1

    if-nez p1, :cond_13

    new-array p1, v0, [B

    :cond_13
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/ssjj/fnsdk/core/CommentHnadler;->updateComment(Ljava/io/File;[B)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1b} :catch_1d

    const/4 p1, 0x1

    return p1

    :catch_1d
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return v0
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->a:Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;

    return-object p0
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    if-eqz v0, :cond_1d

    iget v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->d:I

    if-lez v0, :cond_1d

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->getHadDownloadedSize()J

    move-result-wide v0

    long-to-float v0, v0

    iget v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->d:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-virtual {v1, v0}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->setProgress(I)V

    :cond_1d
    return-void
.end method

.method private b(Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 13

    const-string v0, "tempfile"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_18

    const-string p1, "\u4e0b\u8f7d\u6587\u4ef6\u4e0d\u5b58\u5728\uff01"

    :goto_14
    invoke-direct {p0, p1, v3}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->a(Ljava/lang/String;Z)V

    return-void

    :cond_18
    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    invoke-virtual {v4}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->d()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_171

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xa

    if-le v5, v6, :cond_171

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->a:Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;

    iget v5, v5, Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;->a:I

    const-string v6, "download_error#"

    const-string v7, "error"

    const-string v8, "downurl"

    const-string v9, "fn_update"

    if-nez v5, :cond_a9

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a9

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_a9

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a9

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->context:Landroid/content/Context;

    const-string v2, "\u4e0b\u8f7d\u6210\u529f\uff0c\u4f46\u6821\u9a8c\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u4e0b\u8f7d"

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u4e0b\u8f7d\u6210\u529f\uff0c\u4f46md5\u6821\u9a8c\u5931\u8d25, size = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B, url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v8}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/ssjj/fnsdk/core/StatManager;->getInstance()Lcom/ssjj/fnsdk/core/StatManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v9, v7, p1}, Lcom/ssjj/fnsdk/core/StatManager;->sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->i()V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    if-eqz p1, :cond_a8

    const-string p1, "\u4e0b\u8f7d\u6587\u4ef6\u6821\u9a8c\u5931\u8d25\uff0c\u4e3a\u4e86\u60a8\u7684\u4e0b\u8f7d\u5b89\u5168\uff0c\u8bf7\u60a8\u91cd\u65b0\u4e0b\u8f7d\u3002"

    invoke-direct {p0, p1, v3}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->a(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->setProgress(I)V

    :cond_a8
    return-void

    :cond_a9
    iget-object v4, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    iget-boolean v4, v4, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->e:Z

    if-eqz v4, :cond_c4

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/ssjj/fnsdk/core/util/ApkUtil;->getSrcApkPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c4

    const-string p1, "\u8986\u76d6\u6e20\u9053\u53f7\u5931\u8d25"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    const-string p1, "\u4e0b\u8f7d\u6587\u4ef6\u5904\u7406\u5931\u8d25\uff0c\u4e3a\u4e86\u60a8\u7684\u5b89\u5168\uff0c\u8bf7\u60a8\u91cd\u65b0\u4e0b\u8f7d"

    goto/16 :goto_14

    :cond_c4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "rename to: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " -> "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    if-nez v0, :cond_11e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u4e0b\u8f7d\u6210\u529f\uff0c\u4f46\u91cd\u547d\u540d\u5931\u8d25 url = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/ssjj/fnsdk/core/StatManager;->getInstance()Lcom/ssjj/fnsdk/core/StatManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v9, v7, p1}, Lcom/ssjj/fnsdk/core/StatManager;->sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    if-eqz p1, :cond_11d

    const-string p1, "\u4e0b\u8f7d\u6587\u4ef6\u91cd\u547d\u540d\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\u4e0b\u8f7d\u3002"

    invoke-direct {p0, p1, v3}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->a(Ljava/lang/String;Z)V

    :cond_11d
    return-void

    :cond_11e
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    if-eqz p1, :cond_13e

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->setMode(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->setProgress(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    const-string v0, "\u4e0b\u8f7d\u5b8c\u6210"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->setProgressText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    new-instance v0, Lcom/ssjj/fnsdk/core/update/g;

    invoke-direct {v0, p0, v2}, Lcom/ssjj/fnsdk/core/update/g;-><init>(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->setProgressClickListener(Landroid/view/View$OnClickListener;)V

    :cond_13e
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->a:Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;

    if-eqz p1, :cond_15c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->a:Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;->getSpendTime(Landroid/content/Context;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x96

    invoke-static {v0, p1}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    :cond_15c
    invoke-static {}, Lcom/ssjj/fnsdk/core/StatManager;->getInstance()Lcom/ssjj/fnsdk/core/StatManager;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->context:Landroid/content/Context;

    const-string v1, "show"

    const-string v3, "activity_install"

    invoke-virtual {p1, v0, v9, v1, v3}, Lcom/ssjj/fnsdk/core/StatManager;->recordEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->context:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/ssjj/fnsdk/core/UpdateUtil;->installApk(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->onUpdateFinishSuccess()V

    :cond_171
    return-void
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b(Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void
.end method

.method static synthetic c(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)Lcom/ssjj/fnsdk/core/update/FNDownloadItem;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    return-object p0
.end method

.method private c()Z
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->l()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private d()V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/UpdateUtil;->checkSD(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->m()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/UpdateUtil;->isSDStorageEnough(J)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->o()V

    return-void

    :cond_18
    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->onNotSDCard()V

    :cond_1b
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->a:Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->j:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;->startDownload(Landroid/content/Context;Lcom/ssjj/fnsdk/core/update/FNDownloadItem;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->g()V

    return-void
.end method

.method static synthetic d(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)V
    .registers 1

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->a()V

    return-void
.end method

.method private e()V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->a:Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;->stopDownload()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    if-eqz v0, :cond_14

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->setMode(I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    const-string v1, "\u5df2\u6682\u505c"

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->setProgressText(Ljava/lang/String;)V

    :cond_14
    return-void
.end method

.method static synthetic e(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)V
    .registers 1

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->d()V

    return-void
.end method

.method private f()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->a:Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;->clearDownload()V

    :cond_7
    return-void
.end method

.method static synthetic f(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)V
    .registers 1

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->h()V

    return-void
.end method

.method static synthetic g(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)Lcom/ssjj/fnsdk/core/update/ViewUpdate;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    return-object p0
.end method

.method private g()V
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->g:J

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    if-eqz v0, :cond_21

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->setMode(I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    const-string v1, "\u7b49\u5f85\u4e0b\u8f7d..."

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->setProgressText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->setSpeedText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->setLeftTimeText(Ljava/lang/String;)V

    :cond_21
    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->e:Z

    if-eqz v0, :cond_26

    return-void

    :cond_26
    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->onForceUpdateLoading()V

    goto :goto_33

    :cond_30
    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->onNormalUpdateLoading()V

    :goto_33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->e:Z

    return-void
.end method

.method static synthetic h(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)I
    .registers 1

    iget p0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->d:I

    return p0
.end method

.method private h()V
    .registers 1

    return-void
.end method

.method private i()V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    iget-object v1, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->a:Ljava/lang/String;

    goto :goto_15

    :cond_11
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    const-string v1, "\u8054\u7cfb\u5ba2\u670d"

    :goto_15
    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->setLeftButtonText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic i(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->f:Z

    return p0
.end method

.method private j()V
    .registers 3

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->hide()V

    new-instance v0, Lcom/ssjj/fnsdk/core/update/h;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/ssjj/fnsdk/core/update/h;-><init>(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdateDetail;->setDesc(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdateDetail;->show()V

    return-void
.end method

.method static synthetic j(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)V
    .registers 1

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b()V

    return-void
.end method

.method private k()V
    .registers 9

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    const/4 v1, 0x1

    if-eqz v0, :cond_a1

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->getMode()I

    move-result v0

    const/4 v2, 0x4

    const-string v3, ","

    const-string v4, "%"

    const/16 v5, 0x94

    if-ne v0, v2, :cond_37

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->getProgress()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-1"

    :goto_2b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    goto :goto_a1

    :cond_37
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->getMode()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->getProgress()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-2"

    goto :goto_2b

    :cond_5a
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->getMode()I

    move-result v0

    if-ne v0, v1, :cond_7c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->getProgress()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "0"

    goto :goto_2b

    :cond_7c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->getProgress()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->h:J

    const-wide/16 v6, 0x3e8

    mul-long v2, v2, v6

    const-wide/16 v6, 0x400

    div-long/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_2f

    :cond_a1
    :goto_a1
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->a:Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;->isDownloading()Z

    move-result v0

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->a:Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;->stopDownload()V

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->hide()V

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->a(Z)Z

    move-result v2

    if-eqz v2, :cond_bb

    const-string v2, "\u7acb\u5373\u5b89\u88c5"

    goto :goto_bd

    :cond_bb
    const-string v2, "\u7ee7\u7eed\u4e0b\u8f7d"

    :goto_bd
    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c()Z

    move-result v3

    if-eqz v3, :cond_c6

    const-string v3, "\u9000\u51fa\u6e38\u620f"

    goto :goto_c8

    :cond_c6
    const-string v3, "\u9000\u51fa\u66f4\u65b0"

    :goto_c8
    new-instance v4, Lcom/ssjj/fnsdk/core/update/i;

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->context:Landroid/content/Context;

    invoke-direct {v4, p0, v5, v1, v0}, Lcom/ssjj/fnsdk/core/update/i;-><init>(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;Landroid/content/Context;IZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u7ec8\u6b62\u66f4\u65b0\u5c06\u76f4\u63a5"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uff0c\u662f\u5426"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uff1f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v4, v1}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->setTitle(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u3000\u3000"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->setMsg(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->setLeftButtonText(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->setRightButtonText(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    invoke-virtual {v4}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->show()V

    return-void
.end method

.method static synthetic k(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)Z
    .registers 1

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c()Z

    move-result p0

    return p0
.end method

.method private l()V
    .registers 5

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->hide()V

    new-instance v0, Lcom/ssjj/fnsdk/core/update/j;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/ssjj/fnsdk/core/update/j;-><init>(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;Landroid/content/Context;I)V

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->setTitle(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u3000\u3000"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u60a8\u786e\u5b9a\u8981\u5220\u9664\u7f13\u5b58\u5305\u5e76\u4e14\u91cd\u65b0\u4e0b\u8f7d\u5417\uff1f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->setMsg(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    move-result-object v1

    const-string v2, "\u8fd4\u56de"

    invoke-virtual {v1, v2}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->setLeftButtonText(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    move-result-object v1

    const-string v2, "\u786e\u5b9a"

    invoke-virtual {v1, v2}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->setRightButtonText(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->show()V

    return-void
.end method

.method static synthetic l(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)V
    .registers 1

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->i()V

    return-void
.end method

.method private m()V
    .registers 6

    const/16 v0, 0x8e

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->hide()V

    new-instance v0, Lcom/ssjj/fnsdk/core/update/k;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/ssjj/fnsdk/core/update/k;-><init>(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;Landroid/content/Context;I)V

    iget v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->d:I

    if-gtz v1, :cond_19

    const-string v1, "50M"

    goto :goto_1e

    :cond_19
    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/ssjj/fnsdk/core/UpdateUtil;->getStringSize(J)Ljava/lang/String;

    move-result-object v1

    :goto_1e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u60a8\u76ee\u524d\u6b63\u5728\u4f7f\u7528\u6d41\u91cf\u4e0b\u8f7d\uff0c\u66f4\u65b0\u5305\u5927\u5c0f\u4e3a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff0c\u662f\u5426\u7ee7\u7eed\u4e0b\u8f7d\uff1f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u63d0\u793a"

    invoke-virtual {v0, v2}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->setTitle(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u3000\u3000"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->setMsg(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    move-result-object v1

    const-string v2, "\u53d6\u6d88"

    invoke-virtual {v1, v2}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->setLeftButtonText(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    move-result-object v1

    const-string v2, "\u7ee7\u7eed\u4e0b\u8f7d"

    invoke-virtual {v1, v2}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->setRightButtonText(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->show()V

    return-void
.end method

.method private n()V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->a:Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;->isDownloading()Z

    move-result v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->a:Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;->stopDownload()V

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->hide()V

    new-instance v1, Lcom/ssjj/fnsdk/core/update/l;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->context:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/ssjj/fnsdk/core/update/l;-><init>(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;Landroid/content/Context;IZ)V

    const-string v0, "\u63d0\u793a"

    invoke-virtual {v1, v0}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->setTitle(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u3000\u3000"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u957f\u6309\u6807\u9898\u53ef\u4ee5\u89e6\u53d1\u8be5\u5220\u9664\u63d0\u793a\u3002\u60a8\u786e\u5b9a\u8981\u5220\u9664\u4e0b\u8f7d\u7f13\u5b58\u5305\uff0c\u91cd\u65b0\u4e0b\u8f7d\u5417\uff1f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->setMsg(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    move-result-object v0

    const-string v2, "\u53d6\u6d88"

    invoke-virtual {v0, v2}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->setLeftButtonText(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    move-result-object v0

    const-string v2, "\u786e\u5b9a"

    invoke-virtual {v0, v2}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->setRightButtonText(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->show()V

    return-void
.end method

.method private o()V
    .registers 6

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->hide()V

    new-instance v0, Lcom/ssjj/fnsdk/core/update/m;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/ssjj/fnsdk/core/update/m;-><init>(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;Landroid/content/Context;I)V

    iget v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->d:I

    if-gtz v1, :cond_12

    const-string v1, "50M"

    goto :goto_17

    :cond_12
    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/ssjj/fnsdk/core/UpdateUtil;->getStringSize(J)Ljava/lang/String;

    move-result-object v1

    :goto_17
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u60a8\u624b\u673a\u7684SD\u5361\u5bb9\u91cf\u4e0d\u8db3\u3002\u5f53\u524d\u66f4\u65b0\u5305\u7684\u5927\u5c0f\u662f"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff0c\u8bf7\u60a8\u9884\u7559\u51fa\u8db3\u591f\u7684SD\u5361\u5bb9\u91cf\u3002"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u63d0\u793a"

    invoke-virtual {v0, v2}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->setTitle(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u3000\u3000"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->setMsg(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    move-result-object v1

    const-string v2, "\u8fd4\u56de"

    invoke-virtual {v1, v2}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->setLeftButtonText(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    move-result-object v1

    const-string v2, "\u786e\u5b9a"

    invoke-virtual {v1, v2}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->setRightButtonText(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->show()V

    return-void
.end method


# virtual methods
.method public checkNetAndDownload(Landroid/app/Activity;)V
    .registers 3

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->checkNet2(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string p1, "\u5df2\u7ecf\u65ad\u5f00\u7f51\u7edc\uff01"

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->a(Ljava/lang/String;Z)V

    goto :goto_22

    :cond_11
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/UpdateUtil;->isWifi(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1f

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->m()V

    goto :goto_22

    :cond_1f
    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->d()V

    :goto_22
    return-void
.end method

.method protected getResId()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected inflate()V
    .registers 5

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->context:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;-><init>(Landroid/content/Context;Lcom/ssjj/fnsdk/core/update/ViewUpdate$ViewCallBack;)V

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xe

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v2, 0x17c

    goto :goto_2c

    :cond_2a
    const/16 v2, 0x154

    :goto_2c
    int-to-float v2, v2

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-static {}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->isLandscape()Z

    const/16 v2, 0x112

    int-to-float v2, v2

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->view:Landroid/view/View;

    return-void
.end method

.method protected onBackPressed()V
    .registers 1

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->k()V

    return-void
.end method

.method protected onCancelForceUpdate()V
    .registers 1

    return-void
.end method

.method protected onCancelNormalUpdate()V
    .registers 1

    return-void
.end method

.method public onClickContinue()V
    .registers 3

    const/16 v0, 0x91

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->checkNetAndDownload(Landroid/app/Activity;)V

    return-void
.end method

.method public onClickDownload()V
    .registers 6

    invoke-static {}, Lcom/ssjj/fnsdk/core/StatManager;->getInstance()Lcom/ssjj/fnsdk/core/StatManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->context:Landroid/content/Context;

    const-string v2, "click"

    const-string v3, "download"

    const-string v4, "fn_update"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/ssjj/fnsdk/core/StatManager;->recordEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->checkNetAndDownload(Landroid/app/Activity;)V

    return-void
.end method

.method public onClickInstall()V
    .registers 6

    const/16 v0, 0x76

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/StatManager;->getInstance()Lcom/ssjj/fnsdk/core/StatManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->context:Landroid/content/Context;

    const-string v2, "click"

    const-string v3, "install"

    const-string v4, "fn_update"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/ssjj/fnsdk/core/StatManager;->recordEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/UpdateUtil;->installApk(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onClickLeftButton()V
    .registers 6

    invoke-static {}, Lcom/ssjj/fnsdk/core/StatManager;->getInstance()Lcom/ssjj/fnsdk/core/StatManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->context:Landroid/content/Context;

    const-string v2, "click"

    const-string v3, "show_ocs"

    const-string v4, "fn_update"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/ssjj/fnsdk/core/StatManager;->recordEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_f
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_17} :catch_18

    goto :goto_1a

    :catch_18
    move-exception v0

    const/4 v0, 0x2

    :goto_1a
    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    iget-object v1, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->a:Ljava/lang/String;

    const/16 v2, 0x75

    invoke-static {v2, v1}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    packed-switch v0, :pswitch_data_5a

    :pswitch_26
    const-string v0, "\u8054\u7cfb\u5ba2\u670d"

    invoke-static {v2, v0}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    iget-object v1, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/UpdateUtil;->newOpenOcsQQ(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_4a

    :pswitch_37
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    iget-object v1, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/UpdateUtil;->openUrl(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    const/4 v0, 0x1

    goto :goto_4b

    :pswitch_47
    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->k()V

    :cond_4a
    :goto_4a
    const/4 v0, 0x0

    :goto_4b
    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    iget-object v1, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/UpdateUtil;->newOpenOcsQQ(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_58
    return-void

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_47
        :pswitch_26
        :pswitch_37
    .end packed-switch
.end method

.method public onClickPause()V
    .registers 6

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    if-eqz v0, :cond_35

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->h:J

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x90

    invoke-static {v1, v0}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    :cond_35
    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->e()V

    return-void
.end method

.method public onClickReDown()V
    .registers 6

    invoke-static {}, Lcom/ssjj/fnsdk/core/StatManager;->getInstance()Lcom/ssjj/fnsdk/core/StatManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->context:Landroid/content/Context;

    const-string v2, "click"

    const-string v3, "redownload"

    const-string v4, "fn_update"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/ssjj/fnsdk/core/StatManager;->recordEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->l()V

    return-void
.end method

.method public onClickRetryDown()V
    .registers 6

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x93

    invoke-static {v1, v0}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    :cond_1c
    invoke-static {}, Lcom/ssjj/fnsdk/core/StatManager;->getInstance()Lcom/ssjj/fnsdk/core/StatManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->context:Landroid/content/Context;

    const-string v2, "click"

    const-string v3, "retrydownload"

    const-string v4, "fn_update"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/ssjj/fnsdk/core/StatManager;->recordEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->checkNetAndDownload(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->onRetryUpdate()V

    return-void
.end method

.method public onClickToDetail()V
    .registers 6

    const/16 v0, 0x8d

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/StatManager;->getInstance()Lcom/ssjj/fnsdk/core/StatManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->context:Landroid/content/Context;

    const-string v2, "click"

    const-string v3, "show_detail"

    const-string v4, "fn_update"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/ssjj/fnsdk/core/StatManager;->recordEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->j()V

    return-void
.end method

.method public onClickWebDownload()V
    .registers 4

    const/16 v0, 0x9a

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->a()Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_26} :catch_27

    goto :goto_2b

    :catch_27
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2b
    return-void
.end method

.method protected onForceUpdateLoading()V
    .registers 1

    return-void
.end method

.method public onLongClickSize()V
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->a()Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->context:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5b89\u88c5\u5305\u4e0b\u8f7d\u94fe\u63a5\u5df2\u590d\u5236\u5230\u7c98\u8d34\u677f\uff1a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_48
    return-void
.end method

.method public onLongClickTitle()V
    .registers 1

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->n()V

    return-void
.end method

.method protected onNormalUpdateLoading()V
    .registers 1

    return-void
.end method

.method protected onNotSDCard()V
    .registers 1

    return-void
.end method

.method protected onRetryUpdate()V
    .registers 1

    return-void
.end method

.method protected onUpdateFinishFail(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method protected onUpdateFinishSuccess()V
    .registers 1

    return-void
.end method

.method protected onUpdatingFail(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method protected release()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->a:Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;->clearDownload()V

    :cond_7
    invoke-super {p0}, Lcom/ssjj/fnsdk/core/update/FNDialog;->release()V

    return-void
.end method
