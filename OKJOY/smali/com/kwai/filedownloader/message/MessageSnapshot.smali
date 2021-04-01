.class public abstract Lcom/kwai/filedownloader/message/MessageSnapshot;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwai/filedownloader/message/c;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/message/MessageSnapshot$c;,
        Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;,
        Lcom/kwai/filedownloader/message/MessageSnapshot$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kwai/filedownloader/message/MessageSnapshot;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field protected b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/kwai/filedownloader/message/MessageSnapshot$a;

    invoke-direct {v0}, Lcom/kwai/filedownloader/message/MessageSnapshot$a;-><init>()V

    sput-object v0, Lcom/kwai/filedownloader/message/MessageSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/kwai/filedownloader/message/MessageSnapshot;->a:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kwai/filedownloader/message/MessageSnapshot;->a:I

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .registers 3

    new-instance v0, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;

    const-string v1, "getEtag"

    invoke-direct {v0, v1, p0}, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;-><init>(Ljava/lang/String;Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    throw v0
.end method

.method public d()Ljava/lang/String;
    .registers 3

    new-instance v0, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;

    const-string v1, "getFileName"

    invoke-direct {v0, v1, p0}, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;-><init>(Ljava/lang/String;Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    throw v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/kwai/filedownloader/message/MessageSnapshot;->a:I

    return v0
.end method

.method public f()J
    .registers 3

    new-instance v0, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;

    const-string v1, "getLargeSofarBytes"

    invoke-direct {v0, v1, p0}, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;-><init>(Ljava/lang/String;Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    throw v0
.end method

.method public g()J
    .registers 3

    new-instance v0, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;

    const-string v1, "getLargeTotalBytes"

    invoke-direct {v0, v1, p0}, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;-><init>(Ljava/lang/String;Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    throw v0
.end method

.method public h()I
    .registers 3

    new-instance v0, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;

    const-string v1, "getRetryingTimes"

    invoke-direct {v0, v1, p0}, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;-><init>(Ljava/lang/String;Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    throw v0
.end method

.method public i()I
    .registers 3

    new-instance v0, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;

    const-string v1, "getSmallSofarBytes"

    invoke-direct {v0, v1, p0}, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;-><init>(Ljava/lang/String;Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    throw v0
.end method

.method public j()I
    .registers 3

    new-instance v0, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;

    const-string v1, "getSmallTotalBytes"

    invoke-direct {v0, v1, p0}, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;-><init>(Ljava/lang/String;Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    throw v0
.end method

.method public abstract synthetic k()B
.end method

.method public l()Ljava/lang/Throwable;
    .registers 3

    new-instance v0, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;

    const-string v1, "getThrowable"

    invoke-direct {v0, v1, p0}, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;-><init>(Ljava/lang/String;Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    throw v0
.end method

.method public m()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwai/filedownloader/message/MessageSnapshot;->b:Z

    return v0
.end method

.method public n()Z
    .registers 3

    new-instance v0, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;

    const-string v1, "isResuming"

    invoke-direct {v0, v1, p0}, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;-><init>(Ljava/lang/String;Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    throw v0
.end method

.method public o()Z
    .registers 3

    new-instance v0, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;

    const-string v1, "isReusedDownloadedFile"

    invoke-direct {v0, v1, p0}, Lcom/kwai/filedownloader/message/MessageSnapshot$NoFieldException;-><init>(Ljava/lang/String;Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-boolean v0, p0, Lcom/kwai/filedownloader/message/MessageSnapshot;->b:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    invoke-virtual {p0}, Lcom/kwai/filedownloader/message/MessageSnapshot;->k()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/kwai/filedownloader/message/MessageSnapshot;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
