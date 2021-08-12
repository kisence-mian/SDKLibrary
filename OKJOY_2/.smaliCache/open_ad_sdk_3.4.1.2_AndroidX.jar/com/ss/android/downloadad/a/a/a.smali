.class public Lcom/ss/android/downloadad/a/a/a;
.super Ljava/lang/Object;
.source "AdDownloadController.java"

# interfaces
.implements Lcom/ss/android/a/a/b/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadad/a/a/a$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private g:Lorg/json/JSONObject;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/Object;

.field private l:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/a/a;->h:Z

    .line 51
    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/a/a;->j:Z

    .line 59
    return-void
.end method

.method private constructor <init>(Lcom/ss/android/downloadad/a/a/a$a;)V
    .registers 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/a/a;->h:Z

    .line 51
    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/a/a;->j:Z

    .line 62
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/a$a;->a(Lcom/ss/android/downloadad/a/a/a$a;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/downloadad/a/a/a;->a:I

    .line 63
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/a$a;->b(Lcom/ss/android/downloadad/a/a/a$a;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/downloadad/a/a/a;->b:I

    .line 64
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/a$a;->c(Lcom/ss/android/downloadad/a/a/a$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/a/a;->c:Z

    .line 65
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/a$a;->d(Lcom/ss/android/downloadad/a/a/a$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/a/a;->d:Z

    .line 66
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/a$a;->e(Lcom/ss/android/downloadad/a/a/a$a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/a;->k:Ljava/lang/Object;

    .line 67
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/a$a;->f(Lcom/ss/android/downloadad/a/a/a$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/a/a;->e:Z

    .line 68
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/a$a;->g(Lcom/ss/android/downloadad/a/a/a$a;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/downloadad/a/a/a;->f:I

    .line 69
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/a$a;->h(Lcom/ss/android/downloadad/a/a/a$a;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/a;->g:Lorg/json/JSONObject;

    .line 70
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/a$a;->i(Lcom/ss/android/downloadad/a/a/a$a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/a;->l:Ljava/lang/Object;

    .line 71
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/a$a;->j(Lcom/ss/android/downloadad/a/a/a$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/a/a;->h:Z

    .line 72
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/a$a;->k(Lcom/ss/android/downloadad/a/a/a$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/a/a;->i:Z

    .line 73
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/a$a;->l(Lcom/ss/android/downloadad/a/a/a$a;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ss/android/downloadad/a/a/a;->j:Z

    .line 74
    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/downloadad/a/a/a$a;Lcom/ss/android/downloadad/a/a/a$1;)V
    .registers 3

    .line 12
    invoke-direct {p0, p1}, Lcom/ss/android/downloadad/a/a/a;-><init>(Lcom/ss/android/downloadad/a/a/a$a;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 78
    iget v0, p0, Lcom/ss/android/downloadad/a/a/a;->a:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .line 133
    iput p1, p0, Lcom/ss/android/downloadad/a/a/a;->b:I

    .line 134
    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 176
    iput-boolean p1, p0, Lcom/ss/android/downloadad/a/a/a;->j:Z

    .line 177
    return-void
.end method

.method public b()I
    .registers 2

    .line 83
    iget v0, p0, Lcom/ss/android/downloadad/a/a/a;->b:I

    return v0
.end method

.method public b(I)V
    .registers 2

    .line 138
    iput p1, p0, Lcom/ss/android/downloadad/a/a/a;->a:I

    .line 139
    return-void
.end method

.method public c()Z
    .registers 2

    .line 88
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/a/a;->c:Z

    return v0
.end method

.method public d()Z
    .registers 2

    .line 93
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/a/a;->d:Z

    return v0
.end method

.method public e()Z
    .registers 2

    .line 147
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/a/a;->h:Z

    return v0
.end method

.method public f()Z
    .registers 2

    .line 162
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/a/a;->i:Z

    return v0
.end method

.method public g()Z
    .registers 2

    .line 167
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/a/a;->j:Z

    return v0
.end method
