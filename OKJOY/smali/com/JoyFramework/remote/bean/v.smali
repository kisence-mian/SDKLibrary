.class public Lcom/JoyFramework/remote/bean/v;
.super Lcom/JoyFramework/remote/bean/e;
.source "SourceFile"


# instance fields
.field b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "QQ"
    .end annotation
.end field

.field c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Phone"
    .end annotation
.end field

.field d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Agreement"
    .end annotation
.end field

.field e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Privacy"
    .end annotation
.end field

.field f:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Login"
    .end annotation
.end field

.field g:Lcom/JoyFramework/remote/bean/as;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Update"
    .end annotation
.end field

.field h:Lcom/JoyFramework/remote/bean/z;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Notice"
    .end annotation
.end field

.field i:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Channel"
    .end annotation
.end field

.field j:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "onlineTime"
    .end annotation
.end field

.field k:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "andOnlineTime"
    .end annotation
.end field

.field l:Lcom/JoyFramework/remote/bean/aa;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Patch"
    .end annotation
.end field

.field m:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "QQGroup"
    .end annotation
.end field

.field n:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "NewQQ"
    .end annotation
.end field

.field o:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AdverParam"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/JoyFramework/remote/bean/c;",
            ">;"
        }
    .end annotation
.end field

.field p:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "H5LoginLink"
    .end annotation
.end field

.field q:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Gift"
    .end annotation
.end field

.field r:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OfficialWebsite"
    .end annotation
.end field

.field s:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "realRestriction"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/JoyFramework/remote/bean/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/JoyFramework/remote/bean/z;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/v;->h:Lcom/JoyFramework/remote/bean/z;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 173
    iput p1, p0, Lcom/JoyFramework/remote/bean/v;->j:I

    .line 174
    return-void
.end method

.method public a(Lcom/JoyFramework/remote/bean/aa;)V
    .registers 2

    .prologue
    .line 189
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/v;->l:Lcom/JoyFramework/remote/bean/aa;

    .line 190
    return-void
.end method

.method public a(Lcom/JoyFramework/remote/bean/as;)V
    .registers 2

    .prologue
    .line 149
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/v;->g:Lcom/JoyFramework/remote/bean/as;

    .line 150
    return-void
.end method

.method public a(Lcom/JoyFramework/remote/bean/z;)V
    .registers 2

    .prologue
    .line 109
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/v;->h:Lcom/JoyFramework/remote/bean/z;

    .line 110
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 117
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/v;->i:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/JoyFramework/remote/bean/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/v;->o:Ljava/util/List;

    .line 206
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/v;->i:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .registers 2

    .prologue
    .line 221
    iput p1, p0, Lcom/JoyFramework/remote/bean/v;->k:I

    .line 222
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 125
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/v;->f:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/v;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .registers 2

    .prologue
    .line 229
    iput p1, p0, Lcom/JoyFramework/remote/bean/v;->q:I

    .line 230
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 133
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/v;->c:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/v;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .registers 2

    .prologue
    .line 245
    iput p1, p0, Lcom/JoyFramework/remote/bean/v;->s:I

    .line 246
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 141
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/v;->b:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/v;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 157
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/v;->d:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public f()Lcom/JoyFramework/remote/bean/as;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/v;->g:Lcom/JoyFramework/remote/bean/as;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 165
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/v;->e:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/v;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 181
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/v;->m:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/v;->e:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 197
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/v;->n:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public j()I
    .registers 2

    .prologue
    .line 169
    iget v0, p0, Lcom/JoyFramework/remote/bean/v;->j:I

    return v0
.end method

.method public j(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 213
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/v;->p:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/v;->m:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 237
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/v;->r:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public l()Lcom/JoyFramework/remote/bean/aa;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/v;->l:Lcom/JoyFramework/remote/bean/aa;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/v;->n:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/JoyFramework/remote/bean/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/v;->o:Ljava/util/List;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/v;->p:Ljava/lang/String;

    return-object v0
.end method

.method public p()I
    .registers 2

    .prologue
    .line 217
    iget v0, p0, Lcom/JoyFramework/remote/bean/v;->k:I

    return v0
.end method

.method public q()I
    .registers 2

    .prologue
    .line 225
    iget v0, p0, Lcom/JoyFramework/remote/bean/v;->q:I

    return v0
.end method

.method public r()Ljava/lang/String;
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/v;->r:Ljava/lang/String;

    return-object v0
.end method

.method public s()I
    .registers 2

    .prologue
    .line 241
    iget v0, p0, Lcom/JoyFramework/remote/bean/v;->s:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x27

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InitDao{QQ=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/remote/bean/v;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phone=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/remote/bean/v;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", agreement=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/remote/bean/v;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", privacy=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/remote/bean/v;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Login=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/remote/bean/v;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onLineTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/JoyFramework/remote/bean/v;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", andOnlineTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/JoyFramework/remote/bean/v;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Update="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/remote/bean/v;->g:Lcom/JoyFramework/remote/bean/as;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Notice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/remote/bean/v;->h:Lcom/JoyFramework/remote/bean/z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Channel=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/remote/bean/v;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", realRestriction=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/JoyFramework/remote/bean/v;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", qqGroup=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/remote/bean/v;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", newQQ=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/remote/bean/v;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
