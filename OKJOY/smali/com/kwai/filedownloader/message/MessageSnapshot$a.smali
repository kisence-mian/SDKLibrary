.class final Lcom/kwai/filedownloader/message/MessageSnapshot$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/message/MessageSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/kwai/filedownloader/message/MessageSnapshot;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/kwai/filedownloader/message/MessageSnapshot;
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v0, :cond_14

    :goto_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    packed-switch v2, :pswitch_data_98

    :pswitch_e
    const/4 v1, 0x0

    :goto_f
    if-eqz v1, :cond_7e

    iput-boolean v0, v1, Lcom/kwai/filedownloader/message/MessageSnapshot;->b:Z

    return-object v1

    :cond_14
    const/4 v0, 0x0

    goto :goto_7

    :pswitch_16
    new-instance v1, Lcom/kwai/filedownloader/message/MessageSnapshot$c;

    invoke-direct {v1, p1}, Lcom/kwai/filedownloader/message/MessageSnapshot$c;-><init>(Landroid/os/Parcel;)V

    goto :goto_f

    :pswitch_1c
    if-eqz v0, :cond_24

    new-instance v1, Lcom/kwai/filedownloader/message/d$h;

    invoke-direct {v1, p1}, Lcom/kwai/filedownloader/message/d$h;-><init>(Landroid/os/Parcel;)V

    goto :goto_f

    :cond_24
    new-instance v1, Lcom/kwai/filedownloader/message/h$h;

    invoke-direct {v1, p1}, Lcom/kwai/filedownloader/message/h$h;-><init>(Landroid/os/Parcel;)V

    goto :goto_f

    :pswitch_2a
    if-eqz v0, :cond_32

    new-instance v1, Lcom/kwai/filedownloader/message/d$g;

    invoke-direct {v1, p1}, Lcom/kwai/filedownloader/message/d$g;-><init>(Landroid/os/Parcel;)V

    goto :goto_f

    :cond_32
    new-instance v1, Lcom/kwai/filedownloader/message/h$g;

    invoke-direct {v1, p1}, Lcom/kwai/filedownloader/message/h$g;-><init>(Landroid/os/Parcel;)V

    goto :goto_f

    :pswitch_38
    if-eqz v0, :cond_40

    new-instance v1, Lcom/kwai/filedownloader/message/d$c;

    invoke-direct {v1, p1}, Lcom/kwai/filedownloader/message/d$c;-><init>(Landroid/os/Parcel;)V

    goto :goto_f

    :cond_40
    new-instance v1, Lcom/kwai/filedownloader/message/h$c;

    invoke-direct {v1, p1}, Lcom/kwai/filedownloader/message/h$c;-><init>(Landroid/os/Parcel;)V

    goto :goto_f

    :pswitch_46
    if-eqz v0, :cond_4e

    new-instance v1, Lcom/kwai/filedownloader/message/d$f;

    invoke-direct {v1, p1}, Lcom/kwai/filedownloader/message/d$f;-><init>(Landroid/os/Parcel;)V

    goto :goto_f

    :cond_4e
    new-instance v1, Lcom/kwai/filedownloader/message/h$f;

    invoke-direct {v1, p1}, Lcom/kwai/filedownloader/message/h$f;-><init>(Landroid/os/Parcel;)V

    goto :goto_f

    :pswitch_54
    if-eqz v0, :cond_5c

    new-instance v1, Lcom/kwai/filedownloader/message/d$d;

    invoke-direct {v1, p1}, Lcom/kwai/filedownloader/message/d$d;-><init>(Landroid/os/Parcel;)V

    goto :goto_f

    :cond_5c
    new-instance v1, Lcom/kwai/filedownloader/message/h$d;

    invoke-direct {v1, p1}, Lcom/kwai/filedownloader/message/h$d;-><init>(Landroid/os/Parcel;)V

    goto :goto_f

    :pswitch_62
    if-eqz v0, :cond_6a

    new-instance v1, Lcom/kwai/filedownloader/message/d$b;

    invoke-direct {v1, p1}, Lcom/kwai/filedownloader/message/d$b;-><init>(Landroid/os/Parcel;)V

    goto :goto_f

    :cond_6a
    new-instance v1, Lcom/kwai/filedownloader/message/h$b;

    invoke-direct {v1, p1}, Lcom/kwai/filedownloader/message/h$b;-><init>(Landroid/os/Parcel;)V

    goto :goto_f

    :pswitch_70
    if-eqz v0, :cond_78

    new-instance v1, Lcom/kwai/filedownloader/message/d$j;

    invoke-direct {v1, p1}, Lcom/kwai/filedownloader/message/d$j;-><init>(Landroid/os/Parcel;)V

    goto :goto_f

    :cond_78
    new-instance v1, Lcom/kwai/filedownloader/message/h$j;

    invoke-direct {v1, p1}, Lcom/kwai/filedownloader/message/h$j;-><init>(Landroid/os/Parcel;)V

    goto :goto_f

    :cond_7e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t restore the snapshot because unknown status: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_98
    .packed-switch -0x4
        :pswitch_70
        :pswitch_62
        :pswitch_e
        :pswitch_54
        :pswitch_e
        :pswitch_46
        :pswitch_38
        :pswitch_2a
        :pswitch_e
        :pswitch_1c
        :pswitch_16
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/kwai/filedownloader/message/MessageSnapshot$a;->createFromParcel(Landroid/os/Parcel;)Lcom/kwai/filedownloader/message/MessageSnapshot;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/kwai/filedownloader/message/MessageSnapshot;
    .registers 3

    new-array v0, p1, [Lcom/kwai/filedownloader/message/MessageSnapshot;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/kwai/filedownloader/message/MessageSnapshot$a;->newArray(I)[Lcom/kwai/filedownloader/message/MessageSnapshot;

    move-result-object v0

    return-object v0
.end method
