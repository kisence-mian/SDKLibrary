.class final Lcom/kwai/filedownloader/message/MessageSnapshot$1;
.super Ljava/lang/Object;

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
        "Landroid/os/Parcelable$Creator<",
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
.method public a(Landroid/os/Parcel;)Lcom/kwai/filedownloader/message/MessageSnapshot;
    .registers 5

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    packed-switch v0, :pswitch_data_9a

    :pswitch_10
    const/4 v2, 0x0

    goto/16 :goto_7b

    :pswitch_13
    new-instance v2, Lcom/kwai/filedownloader/message/MessageSnapshot$b;

    invoke-direct {v2, p1}, Lcom/kwai/filedownloader/message/MessageSnapshot$b;-><init>(Landroid/os/Parcel;)V

    goto/16 :goto_7b

    :pswitch_1a
    if-eqz v1, :cond_22

    new-instance v2, Lcom/kwai/filedownloader/message/d$h;

    invoke-direct {v2, p1}, Lcom/kwai/filedownloader/message/d$h;-><init>(Landroid/os/Parcel;)V

    goto :goto_7b

    :cond_22
    new-instance v2, Lcom/kwai/filedownloader/message/h$h;

    invoke-direct {v2, p1}, Lcom/kwai/filedownloader/message/h$h;-><init>(Landroid/os/Parcel;)V

    goto :goto_7b

    :pswitch_28
    if-eqz v1, :cond_30

    new-instance v2, Lcom/kwai/filedownloader/message/d$g;

    invoke-direct {v2, p1}, Lcom/kwai/filedownloader/message/d$g;-><init>(Landroid/os/Parcel;)V

    goto :goto_7b

    :cond_30
    new-instance v2, Lcom/kwai/filedownloader/message/h$g;

    invoke-direct {v2, p1}, Lcom/kwai/filedownloader/message/h$g;-><init>(Landroid/os/Parcel;)V

    goto :goto_7b

    :pswitch_36
    if-eqz v1, :cond_3e

    new-instance v2, Lcom/kwai/filedownloader/message/d$c;

    invoke-direct {v2, p1}, Lcom/kwai/filedownloader/message/d$c;-><init>(Landroid/os/Parcel;)V

    goto :goto_7b

    :cond_3e
    new-instance v2, Lcom/kwai/filedownloader/message/h$c;

    invoke-direct {v2, p1}, Lcom/kwai/filedownloader/message/h$c;-><init>(Landroid/os/Parcel;)V

    goto :goto_7b

    :pswitch_44
    if-eqz v1, :cond_4c

    new-instance v2, Lcom/kwai/filedownloader/message/d$f;

    invoke-direct {v2, p1}, Lcom/kwai/filedownloader/message/d$f;-><init>(Landroid/os/Parcel;)V

    goto :goto_7b

    :cond_4c
    new-instance v2, Lcom/kwai/filedownloader/message/h$f;

    invoke-direct {v2, p1}, Lcom/kwai/filedownloader/message/h$f;-><init>(Landroid/os/Parcel;)V

    goto :goto_7b

    :pswitch_52
    if-eqz v1, :cond_5a

    new-instance v2, Lcom/kwai/filedownloader/message/d$d;

    invoke-direct {v2, p1}, Lcom/kwai/filedownloader/message/d$d;-><init>(Landroid/os/Parcel;)V

    goto :goto_7b

    :cond_5a
    new-instance v2, Lcom/kwai/filedownloader/message/h$d;

    invoke-direct {v2, p1}, Lcom/kwai/filedownloader/message/h$d;-><init>(Landroid/os/Parcel;)V

    goto :goto_7b

    :pswitch_60
    if-eqz v1, :cond_68

    new-instance v2, Lcom/kwai/filedownloader/message/d$b;

    invoke-direct {v2, p1}, Lcom/kwai/filedownloader/message/d$b;-><init>(Landroid/os/Parcel;)V

    goto :goto_7b

    :cond_68
    new-instance v2, Lcom/kwai/filedownloader/message/h$b;

    invoke-direct {v2, p1}, Lcom/kwai/filedownloader/message/h$b;-><init>(Landroid/os/Parcel;)V

    goto :goto_7b

    :pswitch_6e
    if-eqz v1, :cond_76

    new-instance v2, Lcom/kwai/filedownloader/message/d$j;

    invoke-direct {v2, p1}, Lcom/kwai/filedownloader/message/d$j;-><init>(Landroid/os/Parcel;)V

    goto :goto_7b

    :cond_76
    new-instance v2, Lcom/kwai/filedownloader/message/h$j;

    invoke-direct {v2, p1}, Lcom/kwai/filedownloader/message/h$j;-><init>(Landroid/os/Parcel;)V

    :goto_7b
    if-eqz v2, :cond_80

    iput-boolean v1, v2, Lcom/kwai/filedownloader/message/MessageSnapshot;->a:Z

    return-object v2

    :cond_80
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t restore the snapshot because unknown status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_9a
    .packed-switch -0x4
        :pswitch_6e
        :pswitch_60
        :pswitch_10
        :pswitch_52
        :pswitch_10
        :pswitch_44
        :pswitch_36
        :pswitch_28
        :pswitch_10
        :pswitch_1a
        :pswitch_13
    .end packed-switch
.end method

.method public a(I)[Lcom/kwai/filedownloader/message/MessageSnapshot;
    .registers 2

    new-array p1, p1, [Lcom/kwai/filedownloader/message/MessageSnapshot;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/kwai/filedownloader/message/MessageSnapshot$1;->a(Landroid/os/Parcel;)Lcom/kwai/filedownloader/message/MessageSnapshot;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/kwai/filedownloader/message/MessageSnapshot$1;->a(I)[Lcom/kwai/filedownloader/message/MessageSnapshot;

    move-result-object p1

    return-object p1
.end method
