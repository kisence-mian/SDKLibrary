.class public Lcom/ss/android/downloadlib/addownload/b/g;
.super Ljava/lang/Object;
.source "OpenAppResult.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .line 52
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/ss/android/downloadlib/addownload/b/g;-><init>(IILjava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/downloadlib/addownload/b/g;-><init>(IILjava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Lcom/ss/android/downloadlib/addownload/b/g;->a:I

    .line 65
    iput p2, p0, Lcom/ss/android/downloadlib/addownload/b/g;->b:I

    .line 66
    iput-object p3, p0, Lcom/ss/android/downloadlib/addownload/b/g;->c:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/ss/android/downloadlib/addownload/b/g;-><init>(IILjava/lang/String;)V

    .line 61
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 70
    iget v0, p0, Lcom/ss/android/downloadlib/addownload/b/g;->a:I

    return v0
.end method

.method public b()I
    .registers 2

    .line 74
    iget v0, p0, Lcom/ss/android/downloadlib/addownload/b/g;->b:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/g;->c:Ljava/lang/String;

    return-object v0
.end method
