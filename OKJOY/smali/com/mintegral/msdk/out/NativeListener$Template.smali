.class public Lcom/mintegral/msdk/out/NativeListener$Template;
.super Ljava/lang/Object;
.source "NativeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/out/NativeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Template"
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Lcom/mintegral/msdk/out/NativeListener$Template;->a:I

    .line 74
    iput p2, p0, Lcom/mintegral/msdk/out/NativeListener$Template;->b:I

    .line 75
    return-void
.end method


# virtual methods
.method public getAdNum()I
    .registers 2

    .prologue
    .line 86
    iget v0, p0, Lcom/mintegral/msdk/out/NativeListener$Template;->b:I

    return v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 78
    iget v0, p0, Lcom/mintegral/msdk/out/NativeListener$Template;->a:I

    return v0
.end method

.method public setAdNum(I)V
    .registers 2

    .prologue
    .line 90
    iput p1, p0, Lcom/mintegral/msdk/out/NativeListener$Template;->b:I

    .line 91
    return-void
.end method

.method public setId(I)V
    .registers 2

    .prologue
    .line 82
    iput p1, p0, Lcom/mintegral/msdk/out/NativeListener$Template;->a:I

    .line 83
    return-void
.end method
