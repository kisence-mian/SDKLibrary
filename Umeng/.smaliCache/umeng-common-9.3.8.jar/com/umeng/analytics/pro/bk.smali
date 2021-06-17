.class public Lcom/umeng/analytics/pro/bk;
.super Ljava/lang/Object;
.source "TField.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:B

.field public final c:S


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 28
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/umeng/analytics/pro/bk;-><init>(Ljava/lang/String;BS)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;BS)V
    .registers 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/umeng/analytics/pro/bk;->a:Ljava/lang/String;

    .line 33
    iput-byte p2, p0, Lcom/umeng/analytics/pro/bk;->b:B

    .line 34
    iput-short p3, p0, Lcom/umeng/analytics/pro/bk;->c:S

    .line 35
    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/analytics/pro/bk;)Z
    .registers 4

    .line 46
    iget-byte v0, p0, Lcom/umeng/analytics/pro/bk;->b:B

    iget-byte v1, p1, Lcom/umeng/analytics/pro/bk;->b:B

    if-ne v0, v1, :cond_e

    iget-short v0, p0, Lcom/umeng/analytics/pro/bk;->c:S

    iget-short p1, p1, Lcom/umeng/analytics/pro/bk;->c:S

    if-ne v0, p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<TField name:\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/pro/bk;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/umeng/analytics/pro/bk;->b:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " field-id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/umeng/analytics/pro/bk;->c:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
