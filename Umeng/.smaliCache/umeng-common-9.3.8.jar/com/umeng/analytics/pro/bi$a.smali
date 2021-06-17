.class public Lcom/umeng/analytics/pro/bi$a;
.super Ljava/lang/Object;
.source "TBinaryProtocol.java"

# interfaces
.implements Lcom/umeng/analytics/pro/br;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/bi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 58
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/umeng/analytics/pro/bi$a;-><init>(ZZ)V

    .line 59
    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 4

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/umeng/analytics/pro/bi$a;-><init>(ZZI)V

    .line 63
    return-void
.end method

.method public constructor <init>(ZZI)V
    .registers 5

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/analytics/pro/bi$a;->a:Z

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/analytics/pro/bi$a;->b:Z

    .line 66
    iput-boolean p1, p0, Lcom/umeng/analytics/pro/bi$a;->a:Z

    .line 67
    iput-boolean p2, p0, Lcom/umeng/analytics/pro/bi$a;->b:Z

    .line 68
    iput p3, p0, Lcom/umeng/analytics/pro/bi$a;->c:I

    .line 69
    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/analytics/pro/cd;)Lcom/umeng/analytics/pro/bp;
    .registers 5

    .line 72
    new-instance v0, Lcom/umeng/analytics/pro/bi;

    iget-boolean v1, p0, Lcom/umeng/analytics/pro/bi$a;->a:Z

    iget-boolean v2, p0, Lcom/umeng/analytics/pro/bi$a;->b:Z

    invoke-direct {v0, p1, v1, v2}, Lcom/umeng/analytics/pro/bi;-><init>(Lcom/umeng/analytics/pro/cd;ZZ)V

    .line 73
    iget p1, p0, Lcom/umeng/analytics/pro/bi$a;->c:I

    if-eqz p1, :cond_10

    .line 74
    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/bi;->c(I)V

    .line 76
    :cond_10
    return-object v0
.end method
