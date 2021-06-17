.class public Lcom/umeng/analytics/pro/bd;
.super Ljava/lang/Object;
.source "FieldValueMetaData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Z

.field public final b:B

.field private final c:Ljava/lang/String;

.field private final d:Z


# direct methods
.method public constructor <init>(B)V
    .registers 3

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/pro/bd;-><init>(BZ)V

    .line 45
    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-byte p1, p0, Lcom/umeng/analytics/pro/bd;->b:B

    .line 49
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/umeng/analytics/pro/bd;->a:Z

    .line 50
    iput-object p2, p0, Lcom/umeng/analytics/pro/bd;->c:Ljava/lang/String;

    .line 51
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/umeng/analytics/pro/bd;->d:Z

    .line 52
    return-void
.end method

.method public constructor <init>(BZ)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-byte p1, p0, Lcom/umeng/analytics/pro/bd;->b:B

    .line 38
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/umeng/analytics/pro/bd;->a:Z

    .line 39
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/pro/bd;->c:Ljava/lang/String;

    .line 40
    iput-boolean p2, p0, Lcom/umeng/analytics/pro/bd;->d:Z

    .line 41
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 55
    iget-boolean v0, p0, Lcom/umeng/analytics/pro/bd;->a:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/umeng/analytics/pro/bd;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .registers 3

    .line 63
    iget-byte v0, p0, Lcom/umeng/analytics/pro/bd;->b:B

    const/16 v1, 0xc

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public d()Z
    .registers 3

    .line 67
    iget-byte v0, p0, Lcom/umeng/analytics/pro/bd;->b:B

    const/16 v1, 0xf

    if-eq v0, v1, :cond_11

    const/16 v1, 0xd

    if-eq v0, v1, :cond_11

    const/16 v1, 0xe

    if-ne v0, v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public e()Z
    .registers 2

    .line 71
    iget-boolean v0, p0, Lcom/umeng/analytics/pro/bd;->d:Z

    return v0
.end method
