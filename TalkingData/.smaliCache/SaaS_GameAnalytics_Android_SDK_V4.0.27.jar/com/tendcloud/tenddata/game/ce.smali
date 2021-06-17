.class public Lcom/tendcloud/tenddata/game/ce;
.super Ljava/lang/Object;
.source "td"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:B

.field private d:B

.field private e:B


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ce;->a:Ljava/lang/String;

    .line 13
    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ce;->b:Ljava/lang/String;

    .line 14
    const/16 v0, -0x7f

    iput-byte v0, p0, Lcom/tendcloud/tenddata/game/ce;->c:B

    .line 15
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/tendcloud/tenddata/game/ce;->d:B

    .line 16
    iput-byte v0, p0, Lcom/tendcloud/tenddata/game/ce;->e:B

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;BBB)V
    .registers 6

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ce;->a:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/tendcloud/tenddata/game/ce;->b:Ljava/lang/String;

    .line 24
    iput-byte p3, p0, Lcom/tendcloud/tenddata/game/ce;->c:B

    .line 25
    iput-byte p4, p0, Lcom/tendcloud/tenddata/game/ce;->d:B

    .line 26
    iput-byte p5, p0, Lcom/tendcloud/tenddata/game/ce;->e:B

    .line 27
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ce;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ce;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()B
    .registers 2

    .line 42
    iget-byte v0, p0, Lcom/tendcloud/tenddata/game/ce;->c:B

    return v0
.end method

.method public d()B
    .registers 2

    .line 48
    iget-byte v0, p0, Lcom/tendcloud/tenddata/game/ce;->d:B

    return v0
.end method

.method public e()B
    .registers 2

    .line 54
    iget-byte v0, p0, Lcom/tendcloud/tenddata/game/ce;->e:B

    return v0
.end method

.method public f()Lcom/tendcloud/tenddata/game/ce;
    .registers 8

    .line 61
    new-instance v6, Lcom/tendcloud/tenddata/game/ce;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ce;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ce;->b:Ljava/lang/String;

    iget-byte v3, p0, Lcom/tendcloud/tenddata/game/ce;->c:B

    iget-byte v4, p0, Lcom/tendcloud/tenddata/game/ce;->d:B

    iget-byte v5, p0, Lcom/tendcloud/tenddata/game/ce;->e:B

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/tendcloud/tenddata/game/ce;-><init>(Ljava/lang/String;Ljava/lang/String;BBB)V

    return-object v6
.end method

.method public setBand(B)V
    .registers 2

    .line 51
    iput-byte p1, p0, Lcom/tendcloud/tenddata/game/ce;->d:B

    .line 52
    return-void
.end method

.method public setBssid(Ljava/lang/String;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ce;->b:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setChannel(B)V
    .registers 2

    .line 57
    iput-byte p1, p0, Lcom/tendcloud/tenddata/game/ce;->e:B

    .line 58
    return-void
.end method

.method public setRssi(B)V
    .registers 2

    .line 45
    iput-byte p1, p0, Lcom/tendcloud/tenddata/game/ce;->c:B

    .line 46
    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ce;->a:Ljava/lang/String;

    .line 34
    return-void
.end method
