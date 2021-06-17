.class public Lcom/tendcloud/tenddata/game/cf;
.super Ljava/lang/Object;
.source "td"


# static fields
.field public static final a:I = 0xa

.field public static final b:I = 0x3

.field public static final c:I = 0x32

.field public static final d:I = -0x55


# instance fields
.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0xa

    iput v0, p0, Lcom/tendcloud/tenddata/game/cf;->e:I

    .line 17
    const/4 v0, 0x3

    iput v0, p0, Lcom/tendcloud/tenddata/game/cf;->f:I

    .line 18
    const/16 v0, 0x32

    iput v0, p0, Lcom/tendcloud/tenddata/game/cf;->g:I

    .line 19
    const/16 v0, -0x55

    iput v0, p0, Lcom/tendcloud/tenddata/game/cf;->h:I

    .line 20
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 23
    iget v0, p0, Lcom/tendcloud/tenddata/game/cf;->e:I

    return v0
.end method

.method public b()I
    .registers 2

    .line 31
    iget v0, p0, Lcom/tendcloud/tenddata/game/cf;->f:I

    return v0
.end method

.method public c()I
    .registers 2

    .line 39
    iget v0, p0, Lcom/tendcloud/tenddata/game/cf;->g:I

    return v0
.end method

.method public d()I
    .registers 2

    .line 47
    iget v0, p0, Lcom/tendcloud/tenddata/game/cf;->h:I

    return v0
.end method

.method public setMaxBssEntries(I)V
    .registers 2

    .line 43
    iput p1, p0, Lcom/tendcloud/tenddata/game/cf;->g:I

    .line 44
    return-void
.end method

.method public setMaxFingerprints(I)V
    .registers 2

    .line 27
    iput p1, p0, Lcom/tendcloud/tenddata/game/cf;->e:I

    .line 28
    return-void
.end method

.method public setMinFingerprints(I)V
    .registers 2

    .line 35
    iput p1, p0, Lcom/tendcloud/tenddata/game/cf;->f:I

    .line 36
    return-void
.end method

.method public setRssiThreshold(I)V
    .registers 2

    .line 51
    iput p1, p0, Lcom/tendcloud/tenddata/game/cf;->h:I

    .line 52
    return-void
.end method
