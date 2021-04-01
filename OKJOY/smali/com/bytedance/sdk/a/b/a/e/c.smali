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

    .prologue
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
    .registers 5

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/c;->g:Lcom/bytedance/sdk/a/a/f;

    .line 54
    iput-object p2, p0, Lcom/bytedance/sdk/a/b/a/e/c;->h:Lcom/bytedance/sdk/a/a/f;

    .line 55
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/a/f;->g()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    invoke-virtual {p2}, Lcom/bytedance/sdk/a/a/f;->g()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/e/c;->i:I

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/a/a/f;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 49
    invoke-static {p2}, Lcom/bytedance/sdk/a/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/a/b/a/e/c;-><init>(Lcom/bytedance/sdk/a/a/f;Lcom/bytedance/sdk/a/a/f;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 45
    invoke-static {p1}, Lcom/bytedance/sdk/a/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    invoke-static {p2}, Lcom/bytedance/sdk/a/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/a/b/a/e/c;-><init>(Lcom/bytedance/sdk/a/a/f;Lcom/bytedance/sdk/a/a/f;)V

    .line 46
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 60
    instance-of v1, p1, Lcom/bytedance/sdk/a/b/a/e/c;

    if-eqz v1, :cond_1c

    .line 61
    check-cast p1, Lcom/bytedance/sdk/a/b/a/e/c;

    .line 62
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/c;->g:Lcom/bytedance/sdk/a/a/f;

    iget-object v2, p1, Lcom/bytedance/sdk/a/b/a/e/c;->g:Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/a/a/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/c;->h:Lcom/bytedance/sdk/a/a/f;

    iget-object v2, p1, Lcom/bytedance/sdk/a/b/a/e/c;->h:Lcom/bytedance/sdk/a/a/f;

    .line 63
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/a/a/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v0, 0x1

    .line 65
    :cond_1c
    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 70
    .line 71
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/c;->g:Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/f;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 72
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/c;->h:Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/a/f;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 78
    const-string v0, "%s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/c;->g:Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/a/f;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/c;->h:Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/a/f;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
