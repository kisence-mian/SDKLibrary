.class public final Lcom/umeng/analytics/pro/bt;
.super Ljava/lang/Object;
.source "TSet.java"


# instance fields
.field public final a:B

.field public final b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/umeng/analytics/pro/bt;-><init>(BI)V

    .line 29
    return-void
.end method

.method public constructor <init>(BI)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-byte p1, p0, Lcom/umeng/analytics/pro/bt;->a:B

    .line 33
    iput p2, p0, Lcom/umeng/analytics/pro/bt;->b:I

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/pro/bl;)V
    .registers 3

    .line 37
    iget-byte v0, p1, Lcom/umeng/analytics/pro/bl;->a:B

    iget p1, p1, Lcom/umeng/analytics/pro/bl;->b:I

    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/bt;-><init>(BI)V

    .line 38
    return-void
.end method
