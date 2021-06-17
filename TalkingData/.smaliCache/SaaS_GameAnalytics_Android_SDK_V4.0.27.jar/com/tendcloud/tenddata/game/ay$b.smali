.class Lcom/tendcloud/tenddata/game/ay$b;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field protected group:Ljava/lang/String;

.field protected id:I

.field protected subsystems:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tendcloud/tenddata/game/ay$b;->id:I

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ay$b;->subsystems:Ljava/lang/String;

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ay$b;->group:Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_16

    .line 384
    goto :goto_17

    .line 380
    :catchall_16
    move-exception p1

    .line 385
    :goto_17
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    :try_start_3
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 367
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tendcloud/tenddata/game/ay$b;->id:I

    .line 368
    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ay$b;->subsystems:Ljava/lang/String;

    .line 369
    const/4 v0, 0x2

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ay$b;->group:Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1d

    .line 372
    goto :goto_1e

    .line 370
    :catchall_1d
    move-exception p1

    .line 373
    :goto_1e
    return-void
.end method
