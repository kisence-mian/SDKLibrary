.class public abstract Lcom/kwai/filedownloader/message/MessageSnapshot;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/kwai/filedownloader/message/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/message/MessageSnapshot$b;,
        Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;,
        Lcom/kwai/filedownloader/message/MessageSnapshot$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/kwai/filedownloader/message/MessageSnapshot;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Z

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/kwai/filedownloader/message/MessageSnapshot$1;

    invoke-direct {v0}, Lcom/kwai/filedownloader/message/MessageSnapshot$1;-><init>()V

    sput-object v0, Lcom/kwai/filedownloader/message/MessageSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/kwai/filedownloader/message/MessageSnapshot;->b:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/kwai/filedownloader/message/MessageSnapshot;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    new-instance v0, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;

    const-string v1, "getSmallSofarBytes"

    invoke-direct {v0, v1, p0}, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;-><init>(Ljava/lang/String;Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    throw v0
.end method

.method public c()I
    .registers 3

    new-instance v0, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;

    const-string v1, "getSmallTotalBytes"

    invoke-direct {v0, v1, p0}, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;-><init>(Ljava/lang/String;Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    throw v0
.end method

.method public d()J
    .registers 3

    new-instance v0, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;

    const-string v1, "getLargeTotalBytes"

    invoke-direct {v0, v1, p0}, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;-><init>(Ljava/lang/String;Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    throw v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .registers 3

    new-instance v0, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;

    const-string v1, "isReusedDownloadedFile"

    invoke-direct {v0, v1, p0}, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;-><init>(Ljava/lang/String;Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    throw v0
.end method

.method public f()Ljava/lang/String;
    .registers 3

    new-instance v0, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;

    const-string v1, "getFileName"

    invoke-direct {v0, v1, p0}, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;-><init>(Ljava/lang/String;Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    throw v0
.end method

.method public g()Z
    .registers 3

    new-instance v0, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;

    const-string v1, "isResuming"

    invoke-direct {v0, v1, p0}, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;-><init>(Ljava/lang/String;Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    throw v0
.end method

.method public h()Ljava/lang/String;
    .registers 3

    new-instance v0, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;

    const-string v1, "getEtag"

    invoke-direct {v0, v1, p0}, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;-><init>(Ljava/lang/String;Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    throw v0
.end method

.method public i()J
    .registers 3

    new-instance v0, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;

    const-string v1, "getLargeSofarBytes"

    invoke-direct {v0, v1, p0}, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;-><init>(Ljava/lang/String;Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    throw v0
.end method

.method public j()Ljava/lang/Throwable;
    .registers 3

    new-instance v0, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;

    const-string v1, "getThrowable"

    invoke-direct {v0, v1, p0}, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;-><init>(Ljava/lang/String;Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    throw v0
.end method

.method public k()I
    .registers 3

    new-instance v0, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;

    const-string v1, "getRetryingTimes"

    invoke-direct {v0, v1, p0}, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;-><init>(Ljava/lang/String;Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    throw v0
.end method

.method public m()I
    .registers 2

    iget v0, p0, Lcom/kwai/filedownloader/message/MessageSnapshot;->b:I

    return v0
.end method

.method public n()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwai/filedownloader/message/MessageSnapshot;->a:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-boolean p2, p0, Lcom/kwai/filedownloader/message/MessageSnapshot;->a:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    invoke-virtual {p0}, Lcom/kwai/filedownloader/message/MessageSnapshot;->b()B

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/kwai/filedownloader/message/MessageSnapshot;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
