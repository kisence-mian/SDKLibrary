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

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/ss/android/a/a/c/b;->d:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/ss/android/a/a/c/b;->c:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/ss/android/a/a/c/b;->e:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/ss/android/a/a/c/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .registers 3

    .line 67
    iput-wide p1, p0, Lcom/ss/android/a/a/c/b;->a:J

    .line 68
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/ss/android/a/a/c/b;->c:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/ss/android/a/a/c/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/ss/android/a/a/c/b;->d:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/ss/android/a/a/c/b;->e:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/ss/android/a/a/c/b;->b:Ljava/lang/String;

    .line 72
    return-void
.end method
