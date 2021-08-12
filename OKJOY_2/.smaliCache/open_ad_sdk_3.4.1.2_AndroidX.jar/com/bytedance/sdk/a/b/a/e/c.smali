.class public final Lcom/bytedance/sdk/a/b/a/e/c;
.super Ljava/lang/Object;
.source "Header.java"


# static fields
.field public static final a:Lcom/bytedance/sdk/a/a/f;

.field public static final b:Lcom/bytedance/sdk/a/a/f;

.field public static final c:Lcom/bytedance/sdk/a/a/f;

.field public static final d:Lcom/bytedance/sdk/a/a/f;

.field public static final e:Lcom/bytedance/sdk/a/a/f;

.field public static final f:Lcom/bytedance/sdk/a/a/f;


# instance fields
.field public final g:Lcom/bytedance/sdk/a/a/f;

.field public final h:Lcom/bytedance/sdk/a/a/f;

.field final i:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    const-string v0, ":"

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/e/c;->a:Lcom/bytedance/sdk/a/a/f;

    .line 27
    const-string v0, ":status"

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/e/c;->b:Lcom/bytedance/sdk/a/a/f;

    .line 28
    const-string v0, ":method"

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/e/c;->c:Lcom/bytedance/sdk/a/a/f;

    .line 29
    const-string v0, ":path"

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/e/c;->d:Lcom/bytedance/sdk/a/a/f;

    .line 30
    const-string v0, ":scheme"

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/e/c;->e:Lcom/bytedance/sdk/a/a/f;

    .line 31
    const-string v0, ":authority"

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/e/c;->f:Lcom/bytedance/sdk/a/a/f;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/a/a/f;Lcom/bytedance/sdk/a/a/f;)V
    .registers 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/c;->g:Lcom/bytedance/sdk/a/a/f;

    .line 54
    iput-object p2, p0, Lcom/bytedance/sdk/a/b/a/e/c;->h:Lcom/bytedance/sdk/a/a/f;

    .line 55
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/a/f;->g()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, Lcom/bytedance/sdk/a/a/f;->g()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/bytedance/sdk/a/b/a/e/c;->i:I

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/a/a/f;Ljava/lang/String;)V
    .registers 3

    .line 49
    invoke-static {p2}, Lcom/bytedance/sdk/a/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/a/b/a/e/c;-><init>(Lcom/bytedance/sdk/a/a/f;Lcom/bytedance/sdk/a/a/f;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 45
    invoke-static {p1}, Lcom/bytedance/sdk/a/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object p1

    invoke-static {p2}, Lcom/bytedance/sdk/a/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/a/b/a/e/c;-><init>(Lcom/bytedance/sdk/a/a/f;Lcom/bytedance/sdk/a/a/f;)V

    .line 46
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 60
    instance-of v0, p1, Lcom/bytedance/sdk/a/b/a/e/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 61
    check-cast p1, Lcom/bytedance/sdk/a/b/a/e/c;

    .line 62
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/c;->g:Lcom/bytedance/sdk/a/a/f;

    iget-object v2, p1, Lcom/bytedance/sdk/a/b/a/e/c;->g:Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/a/a/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/c;->h:Lcom/bytedance/sdk/a/a/f;

    iget-object p1, p1, Lcom/bytedance/sdk/a/b/a/e/c;->h:Lcom/bytedance/sdk/a/a/f;

    .line 63
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/a/f;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    nop

    .line 62
    :goto_1e
    return v1

    .line 65
    :cond_1f
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 70
    nop

    .line 71
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/c;->g:Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/f;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    .line 72
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/c;->h:Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/f;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 73
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/c;->g:Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/a/f;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/c;->h:Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/a/f;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s: %s"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
