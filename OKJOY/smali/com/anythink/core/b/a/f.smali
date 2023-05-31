.class public final Lcom/anythink/core/b/a/f;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/anythink/core/b/a/f;


# instance fields
.field final a:I

.field b:Landroid/content/Context;

.field c:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v3, 0x2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, -0x64

    iput v0, p0, Lcom/anythink/core/b/a/f;->a:I

    .line 31
    iput v3, p0, Lcom/anythink/core/b/a/f;->c:I

    .line 34
    if-eqz p1, :cond_12

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/b/a/f;->b:Landroid/content/Context;

    .line 37
    :cond_12
    iget-object v0, p0, Lcom/anythink/core/b/a/f;->b:Landroid/content/Context;

    sget-object v1, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    const-string v2, "UPLOAD_DATA_LEVEL"

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/b/g/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/anythink/core/b/a/f;->c:I

    .line 39
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/anythink/core/b/a/f;
    .registers 2

    .prologue
    .line 42
    sget-object v0, Lcom/anythink/core/b/a/f;->d:Lcom/anythink/core/b/a/f;

    if-nez v0, :cond_b

    .line 43
    new-instance v0, Lcom/anythink/core/b/a/f;

    invoke-direct {v0, p0}, Lcom/anythink/core/b/a/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/anythink/core/b/a/f;->d:Lcom/anythink/core/b/a/f;

    .line 45
    :cond_b
    sget-object v0, Lcom/anythink/core/b/a/f;->d:Lcom/anythink/core/b/a/f;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Lcom/anythink/core/b/a/f;->c:I

    return v0
.end method

.method public final a(I)V
    .registers 5

    .prologue
    .line 49
    iput p1, p0, Lcom/anythink/core/b/a/f;->c:I

    .line 50
    iget-object v0, p0, Lcom/anythink/core/b/a/f;->b:Landroid/content/Context;

    sget-object v1, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    const-string v2, "UPLOAD_DATA_LEVEL"

    invoke-static {v0, v1, v2, p1}, Lcom/anythink/core/b/g/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 51
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/anythink/core/api/ATGDPRAuthCallback;)V
    .registers 5

    .prologue
    .line 154
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/b/a/f$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/anythink/core/b/a/f$1;-><init>(Lcom/anythink/core/b/a/f;Lcom/anythink/core/api/ATGDPRAuthCallback;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 163
    return-void
.end method

.method public final a(Lcom/anythink/core/api/NetTrafficeCallback;)V
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, -0x64

    .line 171
    iget-object v0, p0, Lcom/anythink/core/b/a/f;->b:Landroid/content/Context;

    sget-object v1, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    const-string v2, "EU_INFO"

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/b/g/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 172
    if-ne v0, v3, :cond_1e

    .line 173
    new-instance v0, Lcom/anythink/core/b/e/d;

    invoke-direct {v0}, Lcom/anythink/core/b/e/d;-><init>()V

    new-instance v1, Lcom/anythink/core/b/a/f$2;

    invoke-direct {v1, p0, p1}, Lcom/anythink/core/b/a/f$2;-><init>(Lcom/anythink/core/b/a/f;Lcom/anythink/core/api/NetTrafficeCallback;)V

    invoke-virtual {v0, v4, v1}, Lcom/anythink/core/b/e/d;->a(ILcom/anythink/core/b/e/e;)V

    .line 239
    :cond_1d
    :goto_1d
    return-void

    .line 229
    :cond_1e
    if-ne v0, v5, :cond_26

    .line 230
    if-eqz p1, :cond_1d

    .line 231
    invoke-interface {p1, v5}, Lcom/anythink/core/api/NetTrafficeCallback;->onResultCallback(Z)V

    goto :goto_1d

    .line 234
    :cond_26
    if-eqz p1, :cond_1d

    .line 235
    invoke-interface {p1, v4}, Lcom/anythink/core/api/NetTrafficeCallback;->onResultCallback(Z)V

    goto :goto_1d
.end method

.method public final b()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 64
    iget-object v2, p0, Lcom/anythink/core/b/a/f;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v2

    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/b/a/e;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v3

    .line 67
    if-eqz v3, :cond_1c

    invoke-virtual {v3}, Lcom/anythink/core/c/a;->f()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 68
    :cond_1c
    iget v2, p0, Lcom/anythink/core/b/a/f;->c:I

    if-ne v2, v0, :cond_21

    move v0, v1

    .line 90
    :cond_21
    :goto_21
    return v0

    .line 76
    :cond_22
    invoke-virtual {v3}, Lcom/anythink/core/c/a;->u()I

    move-result v2

    if-eqz v2, :cond_21

    .line 80
    iget v2, p0, Lcom/anythink/core/b/a/f;->c:I

    .line 83
    invoke-virtual {v3}, Lcom/anythink/core/c/a;->s()I

    move-result v4

    if-ne v4, v0, :cond_34

    .line 84
    invoke-virtual {v3}, Lcom/anythink/core/c/a;->r()I

    move-result v2

    .line 87
    :cond_34
    if-eqz v2, :cond_21

    move v0, v1

    .line 90
    goto :goto_21
.end method

.method public final c()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 101
    iget-object v2, p0, Lcom/anythink/core/b/a/f;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v2

    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/b/a/e;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v2

    .line 104
    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Lcom/anythink/core/c/a;->f()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 105
    :cond_1c
    iget v2, p0, Lcom/anythink/core/b/a/f;->c:I

    if-ne v2, v0, :cond_21

    move v0, v1

    .line 136
    :cond_21
    :goto_21
    return v0

    .line 112
    :cond_22
    iget v3, p0, Lcom/anythink/core/b/a/f;->c:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2f

    .line 114
    invoke-virtual {v2}, Lcom/anythink/core/c/a;->u()I

    move-result v2

    if-eqz v2, :cond_21

    move v0, v1

    .line 117
    goto :goto_21

    .line 120
    :cond_2f
    invoke-virtual {v2}, Lcom/anythink/core/c/a;->s()I

    move-result v3

    if-ne v3, v0, :cond_3d

    .line 122
    invoke-virtual {v2}, Lcom/anythink/core/c/a;->r()I

    move-result v2

    .line 123
    if-eqz v2, :cond_21

    move v0, v1

    .line 126
    goto :goto_21

    .line 129
    :cond_3d
    iget v3, p0, Lcom/anythink/core/b/a/f;->c:I

    if-eqz v3, :cond_21

    .line 133
    invoke-virtual {v2}, Lcom/anythink/core/c/a;->u()I

    move-result v2

    if-eqz v2, :cond_21

    move v0, v1

    .line 136
    goto :goto_21
.end method

.method public final d()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 148
    iget-object v1, p0, Lcom/anythink/core/b/a/f;->b:Landroid/content/Context;

    sget-object v2, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    const-string v3, "EU_INFO"

    const/16 v4, -0x64

    invoke-static {v1, v2, v3, v4}, Lcom/anythink/core/b/g/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 149
    if-ne v1, v0, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
