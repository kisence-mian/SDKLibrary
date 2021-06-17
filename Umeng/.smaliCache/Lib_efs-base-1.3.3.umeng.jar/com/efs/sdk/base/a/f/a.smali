.class public final Lcom/efs/sdk/base/a/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:B

.field public c:I

.field public d:Ljava/lang/String;

.field public e:I

.field f:J

.field g:I


# direct methods
.method constructor <init>(Ljava/lang/String;B)V
    .registers 6

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/efs/sdk/base/a/f/a;->b:B

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/efs/sdk/base/a/f/a;->c:I

    .line 33
    const-string v0, "none"

    iput-object v0, p0, Lcom/efs/sdk/base/a/f/a;->d:Ljava/lang/String;

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/efs/sdk/base/a/f/a;->e:I

    .line 43
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/efs/sdk/base/a/f/a;->f:J

    .line 48
    iput v0, p0, Lcom/efs/sdk/base/a/f/a;->g:I

    .line 51
    iput-object p1, p0, Lcom/efs/sdk/base/a/f/a;->a:Ljava/lang/String;

    .line 52
    nop

    .line 1061
    if-lez p2, :cond_21

    const/4 p1, 0x3

    if-lt p1, p2, :cond_21

    .line 1065
    iput-byte p2, p0, Lcom/efs/sdk/base/a/f/a;->b:B

    .line 53
    return-void

    .line 1063
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "log protocol flag invalid : "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
