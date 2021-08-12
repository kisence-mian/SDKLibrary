.class public Lcom/kwai/filedownloader/message/d$j;
.super Lcom/kwai/filedownloader/message/d$f;

# interfaces
.implements Lcom/kwai/filedownloader/message/MessageSnapshot$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/message/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# direct methods
.method constructor <init>(IJJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/kwai/filedownloader/message/d$f;-><init>(IJJ)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/message/d$f;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public b()B
    .registers 2

    const/4 v0, -0x4

    return v0
.end method

.method public l()Lcom/kwai/filedownloader/message/MessageSnapshot;
    .registers 2

    new-instance v0, Lcom/kwai/filedownloader/message/d$f;

    invoke-direct {v0, p0}, Lcom/kwai/filedownloader/message/d$f;-><init>(Lcom/kwai/filedownloader/message/d$f;)V

    return-object v0
.end method
