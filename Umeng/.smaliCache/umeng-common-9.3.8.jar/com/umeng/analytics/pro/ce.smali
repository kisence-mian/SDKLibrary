.class public Lcom/umeng/analytics/pro/ce;
.super Lcom/umeng/analytics/pro/aw;
.source "TTransportException.java"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field private static final g:J = 0x1L


# instance fields
.field protected f:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Lcom/umeng/analytics/pro/aw;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/analytics/pro/ce;->f:I

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 45
    invoke-direct {p0}, Lcom/umeng/analytics/pro/aw;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/analytics/pro/ce;->f:I

    .line 46
    iput p1, p0, Lcom/umeng/analytics/pro/ce;->f:I

    .line 47
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 50
    invoke-direct {p0, p2}, Lcom/umeng/analytics/pro/aw;-><init>(Ljava/lang/String;)V

    .line 38
    const/4 p2, 0x0

    iput p2, p0, Lcom/umeng/analytics/pro/ce;->f:I

    .line 51
    iput p1, p0, Lcom/umeng/analytics/pro/ce;->f:I

    .line 52
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 72
    invoke-direct {p0, p2, p3}, Lcom/umeng/analytics/pro/aw;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    const/4 p2, 0x0

    iput p2, p0, Lcom/umeng/analytics/pro/ce;->f:I

    .line 73
    iput p1, p0, Lcom/umeng/analytics/pro/ce;->f:I

    .line 74
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .registers 3

    .line 59
    invoke-direct {p0, p2}, Lcom/umeng/analytics/pro/aw;-><init>(Ljava/lang/Throwable;)V

    .line 38
    const/4 p2, 0x0

    iput p2, p0, Lcom/umeng/analytics/pro/ce;->f:I

    .line 60
    iput p1, p0, Lcom/umeng/analytics/pro/ce;->f:I

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 55
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/aw;-><init>(Ljava/lang/String;)V

    .line 38
    const/4 p1, 0x0

    iput p1, p0, Lcom/umeng/analytics/pro/ce;->f:I

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/umeng/analytics/pro/aw;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    const/4 p1, 0x0

    iput p1, p0, Lcom/umeng/analytics/pro/ce;->f:I

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 64
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/aw;-><init>(Ljava/lang/Throwable;)V

    .line 38
    const/4 p1, 0x0

    iput p1, p0, Lcom/umeng/analytics/pro/ce;->f:I

    .line 65
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 77
    iget v0, p0, Lcom/umeng/analytics/pro/ce;->f:I

    return v0
.end method
