.class public final Lcom/alphab/a/a/a;
.super Ljava/lang/Object;
.source "PackageBean.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alphab/a/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 34
    iget v0, p0, Lcom/alphab/a/a/a;->b:I

    return v0
.end method
