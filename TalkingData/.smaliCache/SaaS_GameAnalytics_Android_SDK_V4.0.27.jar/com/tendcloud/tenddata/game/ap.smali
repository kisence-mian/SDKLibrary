.class final Lcom/tendcloud/tenddata/game/ap;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tendcloud/tenddata/game/an;
    .registers 3

    .line 124
    :try_start_0
    new-instance v0, Lcom/tendcloud/tenddata/game/an;

    invoke-direct {v0, p1}, Lcom/tendcloud/tenddata/game/an;-><init>(Landroid/os/Parcel;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    return-object v0

    .line 125
    :catchall_6
    move-exception p1

    .line 126
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 119
    invoke-virtual {p0, p1}, Lcom/tendcloud/tenddata/game/ap;->createFromParcel(Landroid/os/Parcel;)Lcom/tendcloud/tenddata/game/an;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/tendcloud/tenddata/game/an;
    .registers 2

    .line 133
    :try_start_0
    new-array p1, p1, [Lcom/tendcloud/tenddata/game/an;
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_3

    return-object p1

    .line 134
    :catchall_3
    move-exception p1

    .line 135
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 119
    invoke-virtual {p0, p1}, Lcom/tendcloud/tenddata/game/ap;->newArray(I)[Lcom/tendcloud/tenddata/game/an;

    move-result-object p1

    return-object p1
.end method
