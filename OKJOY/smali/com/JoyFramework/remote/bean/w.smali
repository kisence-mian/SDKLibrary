.class public Lcom/JoyFramework/remote/bean/w;
.super Lcom/JoyFramework/remote/bean/e;
.source "SourceFile"


# instance fields
.field b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UserCode"
    .end annotation
.end field

.field c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UserName"
    .end annotation
.end field

.field d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LoginToken"
    .end annotation
.end field

.field e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SecretToken"
    .end annotation
.end field

.field f:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Mobile"
    .end annotation
.end field

.field g:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IDCard"
    .end annotation
.end field

.field h:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OneKey"
    .end annotation
.end field

.field i:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MobileNum"
    .end annotation
.end field

.field j:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AccountName"
    .end annotation
.end field

.field k:Ljava/lang/String;

.field l:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LoginStatus"
    .end annotation
.end field

.field m:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Register"
    .end annotation
.end field

.field n:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IDCardKey"
    .end annotation
.end field

.field o:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Adult"
    .end annotation
.end field

.field p:Ljava/lang/String;

.field private q:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/JoyFramework/remote/bean/e;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/JoyFramework/remote/bean/w;->b:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/JoyFramework/remote/bean/w;->c:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/JoyFramework/remote/bean/w;->d:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/JoyFramework/remote/bean/w;->e:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/JoyFramework/remote/bean/w;->k:Ljava/lang/String;

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/JoyFramework/remote/bean/w;->n:I

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/JoyFramework/remote/bean/w;->o:I

    .line 49
    const-string v0, "0"

    iput-object v0, p0, Lcom/JoyFramework/remote/bean/w;->p:Ljava/lang/String;

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/JoyFramework/remote/bean/w;->q:Z

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Lcom/JoyFramework/remote/bean/w;->h:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 73
    iput p1, p0, Lcom/JoyFramework/remote/bean/w;->h:I

    .line 74
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 81
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/w;->k:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/JoyFramework/remote/bean/w;->q:Z

    .line 181
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/w;->k:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .registers 2

    .prologue
    .line 121
    iput p1, p0, Lcom/JoyFramework/remote/bean/w;->f:I

    .line 122
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 89
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/w;->b:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/w;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .registers 2

    .prologue
    .line 129
    iput p1, p0, Lcom/JoyFramework/remote/bean/w;->g:I

    .line 130
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 97
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/w;->c:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/w;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .registers 2

    .prologue
    .line 153
    iput p1, p0, Lcom/JoyFramework/remote/bean/w;->l:I

    .line 154
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 105
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/w;->d:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/w;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e(I)V
    .registers 2

    .prologue
    .line 161
    iput p1, p0, Lcom/JoyFramework/remote/bean/w;->m:I

    .line 162
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 113
    .line 114
    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/w;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f(I)V
    .registers 2

    .prologue
    .line 169
    iput p1, p0, Lcom/JoyFramework/remote/bean/w;->n:I

    .line 170
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 137
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/w;->i:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public g(I)V
    .registers 2

    .prologue
    .line 188
    iput p1, p0, Lcom/JoyFramework/remote/bean/w;->o:I

    .line 189
    return-void
.end method

.method public h()I
    .registers 2

    .prologue
    .line 117
    iget v0, p0, Lcom/JoyFramework/remote/bean/w;->f:I

    return v0
.end method

.method public h(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 145
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/w;->j:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public i()I
    .registers 2

    .prologue
    .line 125
    iget v0, p0, Lcom/JoyFramework/remote/bean/w;->g:I

    return v0
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 196
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/w;->p:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/w;->i:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/w;->j:Ljava/lang/String;

    return-object v0
.end method

.method public l()I
    .registers 2

    .prologue
    .line 149
    iget v0, p0, Lcom/JoyFramework/remote/bean/w;->l:I

    return v0
.end method

.method public m()I
    .registers 2

    .prologue
    .line 157
    iget v0, p0, Lcom/JoyFramework/remote/bean/w;->m:I

    return v0
.end method

.method public n()I
    .registers 2

    .prologue
    .line 165
    iget v0, p0, Lcom/JoyFramework/remote/bean/w;->n:I

    return v0
.end method

.method public o()Z
    .registers 2

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/JoyFramework/remote/bean/w;->q:Z

    return v0
.end method

.method public p()I
    .registers 2

    .prologue
    .line 184
    iget v0, p0, Lcom/JoyFramework/remote/bean/w;->o:I

    return v0
.end method

.method public q()Ljava/lang/String;
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/w;->p:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x27

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoginDao{UserCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/remote/bean/w;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", UserName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/remote/bean/w;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", LoginToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/remote/bean/w;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SecretToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/remote/bean/w;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Mobile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/JoyFramework/remote/bean/w;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", IDCard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/JoyFramework/remote/bean/w;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", OneKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/JoyFramework/remote/bean/w;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", MobileNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/remote/bean/w;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", AccountName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/remote/bean/w;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", loginStatus=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/JoyFramework/remote/bean/w;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", register=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/JoyFramework/remote/bean/w;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
