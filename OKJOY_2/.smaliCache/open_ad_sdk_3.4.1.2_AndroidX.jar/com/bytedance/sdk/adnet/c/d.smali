.class public Lcom/bytedance/sdk/adnet/c/d;
.super Ljava/lang/Object;
.source "TNCConfig.java"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:Ljava/lang/String;

.field public n:I

.field public o:J


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/c/d;->a:Z

    .line 10
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/sdk/adnet/c/d;->b:Z

    .line 12
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/bytedance/sdk/adnet/c/d;->c:Ljava/util/Map;

    .line 14
    iput-object v2, p0, Lcom/bytedance/sdk/adnet/c/d;->d:Ljava/util/Map;

    .line 16
    const/16 v3, 0xa

    iput v3, p0, Lcom/bytedance/sdk/adnet/c/d;->e:I

    .line 18
    iput v1, p0, Lcom/bytedance/sdk/adnet/c/d;->f:I

    .line 20
    iput v1, p0, Lcom/bytedance/sdk/adnet/c/d;->g:I

    .line 22
    iput v3, p0, Lcom/bytedance/sdk/adnet/c/d;->h:I

    .line 24
    iput v1, p0, Lcom/bytedance/sdk/adnet/c/d;->i:I

    .line 26
    iput v1, p0, Lcom/bytedance/sdk/adnet/c/d;->j:I

    .line 28
    const/16 v1, 0x384

    iput v1, p0, Lcom/bytedance/sdk/adnet/c/d;->k:I

    .line 30
    const/16 v1, 0x78

    iput v1, p0, Lcom/bytedance/sdk/adnet/c/d;->l:I

    .line 32
    iput-object v2, p0, Lcom/bytedance/sdk/adnet/c/d;->m:Ljava/lang/String;

    .line 35
    iput v0, p0, Lcom/bytedance/sdk/adnet/c/d;->n:I

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/c/d;->o:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    const-string v1, " localEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bytedance/sdk/adnet/c/d;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, " probeEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bytedance/sdk/adnet/c/d;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, " hostFilter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/adnet/c/d;->c:Ljava/util/Map;

    const/4 v3, 0x0

    if-eqz v2, :cond_2b

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    goto :goto_2c

    :cond_2b
    move v2, v3

    :goto_2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, " hostMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/adnet/c/d;->d:Ljava/util/Map;

    if-eqz v2, :cond_3d

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    :cond_3d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, " reqTo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/adnet/c/d;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/bytedance/sdk/adnet/c/d;->f:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/bytedance/sdk/adnet/c/d;->g:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    const-string v1, " reqErr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/bytedance/sdk/adnet/c/d;->h:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/bytedance/sdk/adnet/c/d;->i:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/adnet/c/d;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, " updateInterval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/adnet/c/d;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    const-string v1, " updateRandom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/adnet/c/d;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, " httpBlack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/adnet/c/d;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
