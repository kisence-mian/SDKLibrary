.class public final Lcom/umeng/analytics/pro/bl;
.super Ljava/lang/Object;
.source "TList.java"


# instance fields
.field public final a:B

.field public final b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/umeng/analytics/pro/bl;-><init>(BI)V

    .line 29
    return-void
.end method

.method public constructor <init>(BI)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-byte p1, p0, Lcom/umeng/analytics/pro/bl;->a:B

    .line 33
    iput p2, p0, Lcom/umeng/analytics/pro/bl;->b:I

    .line 34
    return-void
.end method
