.class public Lcom/tendcloud/tenddata/game/dj;
.super Ljava/lang/Object;
.source "td"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/tendcloud/tenddata/game/dj;->a:I

    .line 25
    iput v0, p0, Lcom/tendcloud/tenddata/game/dj;->b:I

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/tendcloud/tenddata/game/dj;->c:I

    .line 45
    const/4 v0, 0x3

    iput v0, p0, Lcom/tendcloud/tenddata/game/dj;->d:I

    return-void
.end method
