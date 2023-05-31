.class public Lcom/qq/gdt/action/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:J

.field private final f:J

.field private g:Lorg/json/JSONObject;

.field private final h:I


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;I)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/qq/gdt/action/a/a;->a:J

    iput-object p3, p0, Lcom/qq/gdt/action/a/a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/qq/gdt/action/a/a;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/qq/gdt/action/a/a;->d:Ljava/lang/String;

    iput-wide p6, p0, Lcom/qq/gdt/action/a/a;->e:J

    iput-wide p8, p0, Lcom/qq/gdt/action/a/a;->f:J

    iput-object p10, p0, Lcom/qq/gdt/action/a/a;->g:Lorg/json/JSONObject;

    iput p11, p0, Lcom/qq/gdt/action/a/a;->h:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/gdt/action/a/a;->b:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/a/a;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/qq/gdt/action/a/a;->d:Ljava/lang/String;

    iput-wide p3, p0, Lcom/qq/gdt/action/a/a;->e:J

    iput-object p5, p0, Lcom/qq/gdt/action/a/a;->g:Lorg/json/JSONObject;

    invoke-static {}, Lcom/qq/gdt/action/h/u;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qq/gdt/action/a/a;->f:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/qq/gdt/action/a/a;->h:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .registers 4

    iput-wide p1, p0, Lcom/qq/gdt/action/a/a;->a:J

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 2

    iput-object p1, p0, Lcom/qq/gdt/action/a/a;->g:Lorg/json/JSONObject;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/a/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .registers 3

    iget-wide v0, p0, Lcom/qq/gdt/action/a/a;->e:J

    return-wide v0
.end method

.method public d()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/a/a;->g:Lorg/json/JSONObject;

    return-object v0
.end method

.method public e()J
    .registers 3

    iget-wide v0, p0, Lcom/qq/gdt/action/a/a;->a:J

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()J
    .registers 3

    iget-wide v0, p0, Lcom/qq/gdt/action/a/a;->f:J

    return-wide v0
.end method

.method public h()I
    .registers 2

    iget v0, p0, Lcom/qq/gdt/action/a/a;->h:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const/16 v4, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Action{actionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/qq/gdt/action/a/a;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sessionId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/gdt/action/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", actionUniqueId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/gdt/action/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", actionType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/gdt/action/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", actionTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/qq/gdt/action/a/a;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", revisedActionTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/qq/gdt/action/a/a;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", actionParam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/gdt/action/a/a;->g:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qq/gdt/action/a/a;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
