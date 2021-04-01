.class public abstract Lcom/sigmob/wire/AndroidMessage;
.super Lcom/sigmob/wire/Message;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/sigmob/wire/Message",
        "<TM;TB;>;B:",
        "Lcom/sigmob/wire/Message$Builder",
        "<TM;TB;>;>",
        "Lcom/sigmob/wire/Message",
        "<TM;TB;>;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/wire/ProtoAdapter",
            "<TM;>;",
            "Lcom/sigmob/wire/okio/ByteString;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sigmob/wire/Message;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public static newCreator(Lcom/sigmob/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sigmob/wire/ProtoAdapter",
            "<TE;>;)",
            "Landroid/os/Parcelable$Creator",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/sigmob/wire/AndroidMessage$ProtoAdapterCreator;

    invoke-direct {v0, p0}, Lcom/sigmob/wire/AndroidMessage$ProtoAdapterCreator;-><init>(Lcom/sigmob/wire/ProtoAdapter;)V

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-virtual {p0}, Lcom/sigmob/wire/AndroidMessage;->encode()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
