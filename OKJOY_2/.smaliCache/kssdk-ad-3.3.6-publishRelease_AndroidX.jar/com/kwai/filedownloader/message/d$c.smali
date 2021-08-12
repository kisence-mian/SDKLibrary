.class public Lcom/kwai/filedownloader/message/d$c;
.super Lcom/kwai/filedownloader/message/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/message/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final b:Z

.field private final c:J

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method constructor <init>(IZJLjava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/message/d;-><init>(I)V

    iput-boolean p2, p0, Lcom/kwai/filedownloader/message/d$c;->b:Z

    iput-wide p3, p0, Lcom/kwai/filedownloader/message/d$c;->c:J

    iput-object p5, p0, Lcom/kwai/filedownloader/message/d$c;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/kwai/filedownloader/message/d$c;->e:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/message/d;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Lcom/kwai/filedownloader/message/d$c;->b:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwai/filedownloader/message/d$c;->c:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/message/d$c;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kwai/filedownloader/message/d$c;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()B
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public d()J
    .registers 3

    iget-wide v0, p0, Lcom/kwai/filedownloader/message/d$c;->c:J

    return-wide v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/message/d$c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwai/filedownloader/message/d$c;->b:Z

    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/message/d$c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/kwai/filedownloader/message/d;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean p2, p0, Lcom/kwai/filedownloader/message/d$c;->b:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v0, p0, Lcom/kwai/filedownloader/message/d$c;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/kwai/filedownloader/message/d$c;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/kwai/filedownloader/message/d$c;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
