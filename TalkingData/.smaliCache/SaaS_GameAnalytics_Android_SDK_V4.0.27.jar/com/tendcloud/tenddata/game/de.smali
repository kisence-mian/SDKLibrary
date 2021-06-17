.class final Lcom/tendcloud/tenddata/game/de;
.super Landroid/telephony/PhoneStateListener;
.source "td"


# static fields
.field static final a:J = 0x2bf20L


# instance fields
.field b:J

.field c:J

.field d:I

.field e:I


# direct methods
.method constructor <init>()V
    .registers 3

    .line 258
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 260
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tendcloud/tenddata/game/de;->b:J

    .line 261
    iput-wide v0, p0, Lcom/tendcloud/tenddata/game/de;->c:J

    .line 263
    const/4 v0, 0x0

    iput v0, p0, Lcom/tendcloud/tenddata/game/de;->e:I

    return-void
.end method

.method private a()V
    .registers 3

    .line 285
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/cy;->a:Landroid/os/Handler;

    new-instance v1, Lcom/tendcloud/tenddata/game/df;

    invoke-direct {v1, p0}, Lcom/tendcloud/tenddata/game/df;-><init>(Lcom/tendcloud/tenddata/game/de;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 311
    goto :goto_f

    .line 308
    :catchall_b
    move-exception v0

    .line 310
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 312
    :goto_f
    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .registers 4

    .line 267
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 268
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    .line 269
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result p1

    iput p1, p0, Lcom/tendcloud/tenddata/game/de;->d:I

    .line 271
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/de;->a()V

    goto :goto_30

    .line 272
    :cond_18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 273
    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    .line 274
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result p1

    iput p1, p0, Lcom/tendcloud/tenddata/game/de;->d:I

    .line 275
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/de;->a()V
    :try_end_2f
    .catchall {:try_start_0 .. :try_end_2f} :catchall_32

    goto :goto_31

    .line 272
    :cond_30
    :goto_30
    nop

    .line 280
    :goto_31
    goto :goto_36

    .line 277
    :catchall_32
    move-exception p1

    .line 279
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 281
    :goto_36
    return-void
.end method
