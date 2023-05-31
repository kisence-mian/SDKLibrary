.class public Lcom/ss/android/downloadlib/a/b/d;
.super Ljava/lang/Object;
.source "OpenAppResult.java"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/ss/android/downloadlib/a/b/d;->a:I

    .line 30
    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/ss/android/downloadlib/a/b/d;->a:I

    .line 34
    iput p2, p0, Lcom/ss/android/downloadlib/a/b/d;->b:I

    .line 35
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 38
    iget v0, p0, Lcom/ss/android/downloadlib/a/b/d;->a:I

    return v0
.end method
