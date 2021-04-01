.class public abstract Lcom/kwai/filedownloader/message/d;
.super Lcom/kwai/filedownloader/message/MessageSnapshot;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/message/d$e;,
        Lcom/kwai/filedownloader/message/d$j;,
        Lcom/kwai/filedownloader/message/d$i;,
        Lcom/kwai/filedownloader/message/d$h;,
        Lcom/kwai/filedownloader/message/d$d;,
        Lcom/kwai/filedownloader/message/d$b;,
        Lcom/kwai/filedownloader/message/d$a;,
        Lcom/kwai/filedownloader/message/d$g;,
        Lcom/kwai/filedownloader/message/d$c;,
        Lcom/kwai/filedownloader/message/d$f;
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;-><init>(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwai/filedownloader/message/MessageSnapshot;->b:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public i()I
    .registers 5

    invoke-virtual {p0}, Lcom/kwai/filedownloader/message/MessageSnapshot;->f()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    const v0, 0x7fffffff

    :goto_e
    return v0

    :cond_f
    invoke-virtual {p0}, Lcom/kwai/filedownloader/message/MessageSnapshot;->f()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_e
.end method

.method public j()I
    .registers 5

    invoke-virtual {p0}, Lcom/kwai/filedownloader/message/MessageSnapshot;->g()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    const v0, 0x7fffffff

    :goto_e
    return v0

    :cond_f
    invoke-virtual {p0}, Lcom/kwai/filedownloader/message/MessageSnapshot;->g()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_e
.end method
