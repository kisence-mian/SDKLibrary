.class public Lcom/JoyFramework/remote/bean/ab;
.super Lcom/JoyFramework/remote/bean/e;
.source "SourceFile"


# instance fields
.field b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OrderId"
    .end annotation
.end field

.field c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Channel"
    .end annotation
.end field

.field d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Amount"
    .end annotation
.end field

.field e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Subject"
    .end annotation
.end field

.field f:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Ext"
    .end annotation
.end field

.field g:[Lcom/JoyFramework/remote/bean/ae;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PayType"
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/JoyFramework/remote/bean/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 53
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/ab;->b:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public a([Lcom/JoyFramework/remote/bean/ae;)V
    .registers 2

    .prologue
    .line 45
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/ab;->g:[Lcom/JoyFramework/remote/bean/ae;

    .line 46
    return-void
.end method

.method public a()[Lcom/JoyFramework/remote/bean/ae;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/ab;->g:[Lcom/JoyFramework/remote/bean/ae;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/ab;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 61
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/ab;->c:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/ab;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 69
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/ab;->d:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/ab;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 77
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/ab;->e:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/ab;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 85
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/ab;->f:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/ab;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 106
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/ab;->r:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/ab;->r:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 114
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/ab;->k:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/ab;->k:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 122
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/ab;->p:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/ab;->p:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 130
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/ab;->q:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/ab;->q:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 138
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/ab;->s:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/ab;->s:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 146
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/ab;->h:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/ab;->h:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 154
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/ab;->i:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/ab;->i:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 162
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/ab;->l:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public o()Ljava/lang/String;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/ab;->l:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 170
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/ab;->j:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public p()Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/ab;->j:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 178
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/ab;->m:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public q()Ljava/lang/String;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/ab;->m:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 186
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/ab;->o:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public r()Ljava/lang/String;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/ab;->o:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 194
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/ab;->n:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public s()Ljava/lang/String;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/ab;->n:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x27

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PayOrderDao{OrderId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/remote/bean/ab;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Channel=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/remote/bean/ab;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Amount=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/remote/bean/ab;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Subject=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/remote/bean/ab;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Ext=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/remote/bean/ab;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", PayType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/remote/bean/ab;->g:[Lcom/JoyFramework/remote/bean/ae;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
