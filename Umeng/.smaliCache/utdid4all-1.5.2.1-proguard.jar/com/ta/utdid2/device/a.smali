.class public Lcom/ta/utdid2/device/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/device/a;->d:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/ta/utdid2/device/a;->e:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/ta/utdid2/device/a;->f:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/ta/utdid2/device/a;->g:Ljava/lang/String;

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ta/utdid2/device/a;->a:J

    .line 15
    iput-wide v0, p0, Lcom/ta/utdid2/device/a;->b:J

    return-void
.end method


# virtual methods
.method a()J
    .registers 3

    .line 26
    iget-wide v0, p0, Lcom/ta/utdid2/device/a;->a:J

    return-wide v0
.end method

.method a(J)V
    .registers 3

    .line 22
    iput-wide p1, p0, Lcom/ta/utdid2/device/a;->b:J

    .line 23
    return-void
.end method

.method b(J)V
    .registers 3

    .line 30
    iput-wide p1, p0, Lcom/ta/utdid2/device/a;->a:J

    .line 31
    return-void
.end method

.method b(Ljava/lang/String;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/ta/utdid2/device/a;->d:Ljava/lang/String;

    .line 39
    return-void
.end method

.method c(Ljava/lang/String;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/ta/utdid2/device/a;->e:Ljava/lang/String;

    .line 47
    return-void
.end method

.method d(Ljava/lang/String;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/ta/utdid2/device/a;->f:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/ta/utdid2/device/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method e(Ljava/lang/String;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/ta/utdid2/device/a;->g:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/ta/utdid2/device/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/ta/utdid2/device/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/ta/utdid2/device/a;->e:Ljava/lang/String;

    return-object v0
.end method
