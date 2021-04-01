.class public Lcom/mintegral/msdk/video/js/a/b;
.super Ljava/lang/Object;
.source "DefaultJSCommon.java"

# interfaces
.implements Lcom/mintegral/msdk/video/js/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/video/js/a/b$a;,
        Lcom/mintegral/msdk/video/js/a/b$b;
    }
.end annotation


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:Ljava/lang/String;

.field protected h:Lcom/mintegral/msdk/videocommon/e/c;

.field protected i:Lcom/mintegral/msdk/click/a;

.field public j:Lcom/mintegral/msdk/video/js/b$a;

.field protected k:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v0, p0, Lcom/mintegral/msdk/video/js/a/b;->a:Z

    .line 23
    iput-boolean v0, p0, Lcom/mintegral/msdk/video/js/a/b;->b:Z

    .line 25
    iput v0, p0, Lcom/mintegral/msdk/video/js/a/b;->c:I

    .line 26
    iput v0, p0, Lcom/mintegral/msdk/video/js/a/b;->d:I

    .line 27
    iput v0, p0, Lcom/mintegral/msdk/video/js/a/b;->e:I

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/mintegral/msdk/video/js/a/b;->f:I

    .line 41
    new-instance v0, Lcom/mintegral/msdk/video/js/a/b$a;

    invoke-direct {v0}, Lcom/mintegral/msdk/video/js/a/b$a;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/a/b;->j:Lcom/mintegral/msdk/video/js/b$a;

    .line 46
    const/4 v0, 0x2

    iput v0, p0, Lcom/mintegral/msdk/video/js/a/b;->k:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 2

    .prologue
    .line 50
    iput p1, p0, Lcom/mintegral/msdk/video/js/a/b;->k:I

    .line 51
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 151
    const-string v0, "js"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "statistics,type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",json:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public final a(Lcom/mintegral/msdk/video/js/b$a;)V
    .registers 5

    .prologue
    .line 129
    const-string v0, "js"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setTrackingListener:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iput-object p1, p0, Lcom/mintegral/msdk/video/js/a/b;->j:Lcom/mintegral/msdk/video/js/b$a;

    .line 131
    return-void
.end method

.method public final a(Lcom/mintegral/msdk/videocommon/e/c;)V
    .registers 5

    .prologue
    .line 135
    const-string v0, "js"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setSetting:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iput-object p1, p0, Lcom/mintegral/msdk/video/js/a/b;->h:Lcom/mintegral/msdk/videocommon/e/c;

    .line 137
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 123
    const-string v0, "js"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setUnitId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iput-object p1, p0, Lcom/mintegral/msdk/video/js/a/b;->g:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public final a(Z)V
    .registers 5

    .prologue
    .line 108
    const-string v0, "js"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setIsShowingTransparent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iput-boolean p1, p0, Lcom/mintegral/msdk/video/js/a/b;->b:Z

    .line 110
    return-void
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/js/a/b;->a:Z

    return v0
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/js/a/b;->a:Z

    .line 120
    return-void
.end method

.method public final b(I)V
    .registers 2

    .prologue
    .line 61
    iput p1, p0, Lcom/mintegral/msdk/video/js/a/b;->d:I

    .line 62
    return-void
.end method

.method public b(ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 177
    const-string v0, "js"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "click:type"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 3

    .prologue
    .line 171
    const-string v0, "js"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v0, "{}"

    return-object v0
.end method

.method public final c(I)V
    .registers 2

    .prologue
    .line 56
    iput p1, p0, Lcom/mintegral/msdk/video/js/a/b;->c:I

    .line 57
    return-void
.end method

.method public c(ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 182
    const-string v0, "js"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handlerH5Exception,code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    .line 187
    const-string v0, "js"

    const-string v1, "finish"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public final d(I)V
    .registers 2

    .prologue
    .line 66
    iput p1, p0, Lcom/mintegral/msdk/video/js/a/b;->e:I

    .line 67
    return-void
.end method

.method public final e()V
    .registers 3

    .prologue
    .line 141
    const-string v0, "js"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/b;->i:Lcom/mintegral/msdk/click/a;

    if-eqz v0, :cond_1b

    .line 143
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/b;->i:Lcom/mintegral/msdk/click/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/click/a;->a()V

    .line 144
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/b;->i:Lcom/mintegral/msdk/click/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 145
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/b;->i:Lcom/mintegral/msdk/click/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/click/a;->b()V

    .line 147
    :cond_1b
    return-void
.end method

.method public final e(I)V
    .registers 2

    .prologue
    .line 161
    iput p1, p0, Lcom/mintegral/msdk/video/js/a/b;->f:I

    .line 162
    return-void
.end method

.method public f()V
    .registers 1

    .prologue
    .line 157
    return-void
.end method

.method public final g()I
    .registers 2

    .prologue
    .line 166
    iget v0, p0, Lcom/mintegral/msdk/video/js/a/b;->f:I

    return v0
.end method

.method public final h()I
    .registers 2

    .prologue
    .line 72
    iget v0, p0, Lcom/mintegral/msdk/video/js/a/b;->c:I

    if-nez v0, :cond_b

    .line 73
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/js/a/b;->b:Z

    if-eqz v0, :cond_b

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/video/js/a/b;->c:I

    .line 77
    :cond_b
    iget v0, p0, Lcom/mintegral/msdk/video/js/a/b;->c:I

    return v0
.end method

.method public final i()I
    .registers 2

    .prologue
    .line 82
    iget v0, p0, Lcom/mintegral/msdk/video/js/a/b;->d:I

    if-nez v0, :cond_b

    .line 83
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/js/a/b;->b:Z

    if-eqz v0, :cond_b

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/video/js/a/b;->d:I

    .line 87
    :cond_b
    iget v0, p0, Lcom/mintegral/msdk/video/js/a/b;->d:I

    return v0
.end method

.method public final j()I
    .registers 2

    .prologue
    .line 93
    iget v0, p0, Lcom/mintegral/msdk/video/js/a/b;->e:I

    if-nez v0, :cond_b

    .line 94
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/js/a/b;->b:Z

    if-eqz v0, :cond_b

    .line 95
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/video/js/a/b;->e:I

    .line 98
    :cond_b
    iget v0, p0, Lcom/mintegral/msdk/video/js/a/b;->e:I

    return v0
.end method

.method public final k()Z
    .registers 2

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/js/a/b;->b:Z

    return v0
.end method
