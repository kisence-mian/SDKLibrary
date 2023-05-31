.class public Lcom/ss/android/a/a/c/b;
.super Ljava/lang/Object;
.source "DeepLink.java"


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ss/android/a/a/c/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/ss/android/a/a/c/b;->a:J

    .line 65
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 32
    iput-object p1, p0, Lcom/ss/android/a/a/c/b;->c:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ss/android/a/a/c/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ss/android/a/a/c/b;->d:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 56
    iput-object p1, p0, Lcom/ss/android/a/a/c/b;->e:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 68
    iput-object p1, p0, Lcom/ss/android/a/a/c/b;->b:Ljava/lang/String;

    .line 69
    return-void
.end method
