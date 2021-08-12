.class public Lcom/kwai/filedownloader/message/MessageSnapshot$b;
.super Lcom/kwai/filedownloader/message/MessageSnapshot;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/message/MessageSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;-><init>(I)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public b()B
    .registers 2

    const/4 v0, 0x6

    return v0
.end method
