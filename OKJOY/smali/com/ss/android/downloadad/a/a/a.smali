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

.field private g:Ljava/lang/Object;

.field private h:Z

.field private i:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method private constructor <init>(Lcom/ss/android/downloadad/a/a/a$a;)V
    .registers 3

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/a$a;->a(Lcom/ss/android/downloadad/a/a/a$a;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/downloadad/a/a/a;->a:I

    .line 26
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/a$a;->b(Lcom/ss/android/downloadad/a/a/a$a;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/downloadad/a/a/a;->b:I

    .line 27
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/a$a;->c(Lcom/ss/android/downloadad/a/a/a$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/a/a;->c:Z

    .line 28
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/a$a;->d(Lcom/ss/android/downloadad/a/a/a$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/a/a;->d:Z

    .line 29
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/a$a;->e(Lcom/ss/android/downloadad/a/a/a$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/a/a;->e:Z

    .line 30
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/a$a;->f(Lcom/ss/android/downloadad/a/a/a$a;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/downloadad/a/a/a;->f:I

    .line 31
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/a$a;->g(Lcom/ss/android/downloadad/a/a/a$a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/a;->g:Ljava/lang/Object;

    .line 32
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/a$a;->h(Lcom/ss/android/downloadad/a/a/a$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/a/a;->h:Z

    .line 33
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/a$a;->i(Lcom/ss/android/downloadad/a/a/a$a;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/downloadad/a/a/a;->i:I

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/downloadad/a/a/a$a;Lcom/ss/android/downloadad/a/a/a$1;)V
    .registers 3

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/ss/android/downloadad/a/a/a;-><init>(Lcom/ss/android/downloadad/a/a/a$a;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 38
    iget v0, p0, Lcom/ss/android/downloadad/a/a/a;->a:I

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 43
    iget v0, p0, Lcom/ss/android/downloadad/a/a/a;->b:I

    return v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/a/a;->c:Z

    return v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/a/a;->d:Z

    return v0
.end method
