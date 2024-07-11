.class public abstract Lcom/kwai/filedownloader/message/d;
.super Lcom/kwai/filedownloader/message/MessageSnapshot;


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
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;-><init>(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kwai/filedownloader/message/d;->a:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 5

    invoke-virtual {p0}, Lcom/kwai/filedownloader/message/d;->i()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    const v0, 0x7fffffff

    return v0

    :cond_f
    invoke-virtual {p0}, Lcom/kwai/filedownloader/message/d;->i()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public c()I
    .registers 5

    invoke-virtual {p0}, Lcom/kwai/filedownloader/message/d;->d()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    const v0, 0x7fffffff

    return v0

    :cond_f
    invoke-virtual {p0}, Lcom/kwai/filedownloader/message/d;->d()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
