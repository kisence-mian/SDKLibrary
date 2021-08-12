.class public final Lcom/tencent/bugly/proguard/ak;
.super Lcom/tencent/bugly/proguard/k;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/k;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ak;->a:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/tencent/bugly/proguard/ak;->b:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/tencent/bugly/proguard/ak;->c:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/tencent/bugly/proguard/ak;->e:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/tencent/bugly/proguard/ak;->d:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/i;)V
    .registers 5

    .line 60
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/bugly/proguard/ak;->a:Ljava/lang/String;

    .line 61
    invoke-virtual {p1, v1, v0}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/ak;->b:Ljava/lang/String;

    .line 62
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/ak;->c:Ljava/lang/String;

    .line 63
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/ak;->e:Ljava/lang/String;

    .line 64
    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ak;->d:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public final a(Lcom/tencent/bugly/proguard/j;)V
    .registers 4

    .line 38
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ak;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 39
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ak;->b:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 41
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 43
    :cond_e
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ak;->c:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 45
    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 47
    :cond_16
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ak;->e:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 49
    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 51
    :cond_1e
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ak;->d:Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 53
    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 55
    :cond_26
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;I)V
    .registers 3

    .line 69
    return-void
.end method
