.class public abstract Lcom/kwai/filedownloader/message/h;
.super Lcom/kwai/filedownloader/message/MessageSnapshot;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/message/h$e;,
        Lcom/kwai/filedownloader/message/h$j;,
        Lcom/kwai/filedownloader/message/h$i;,
        Lcom/kwai/filedownloader/message/h$h;,
        Lcom/kwai/filedownloader/message/h$d;,
        Lcom/kwai/filedownloader/message/h$b;,
        Lcom/kwai/filedownloader/message/h$a;,
        Lcom/kwai/filedownloader/message/h$g;,
        Lcom/kwai/filedownloader/message/h$c;,
        Lcom/kwai/filedownloader/message/h$f;
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;-><init>(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kwai/filedownloader/message/h;->a:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public d()J
    .registers 3

    invoke-virtual {p0}, Lcom/kwai/filedownloader/message/h;->c()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public i()J
    .registers 3

    invoke-virtual {p0}, Lcom/kwai/filedownloader/message/h;->a()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
