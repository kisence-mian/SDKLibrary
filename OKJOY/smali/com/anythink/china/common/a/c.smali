.class public final Lcom/anythink/china/common/a/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/china/common/a/c$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Landroid/graphics/Bitmap;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:J

.field public h:J

.field public i:J

.field private volatile j:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget v0, Lcom/anythink/china/common/a/c$a;->a:I

    iput v0, p0, Lcom/anythink/china/common/a/c;->j:I

    return-void
.end method

.method private h()Z
    .registers 3

    .prologue
    .line 29
    iget v0, p0, Lcom/anythink/china/common/a/c;->j:I

    sget v1, Lcom/anythink/china/common/a/c$a;->d:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public final a()Z
    .registers 3

    .prologue
    .line 21
    iget v0, p0, Lcom/anythink/china/common/a/c;->j:I

    sget v1, Lcom/anythink/china/common/a/c$a;->a:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final b()Z
    .registers 3

    .prologue
    .line 25
    iget v0, p0, Lcom/anythink/china/common/a/c;->j:I

    sget v1, Lcom/anythink/china/common/a/c$a;->c:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final c()Z
    .registers 3

    .prologue
    .line 33
    iget v0, p0, Lcom/anythink/china/common/a/c;->j:I

    sget v1, Lcom/anythink/china/common/a/c$a;->b:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final d()V
    .registers 2

    .prologue
    .line 37
    sget v0, Lcom/anythink/china/common/a/c$a;->a:I

    iput v0, p0, Lcom/anythink/china/common/a/c;->j:I

    .line 38
    return-void
.end method

.method public final e()V
    .registers 2

    .prologue
    .line 48
    sget v0, Lcom/anythink/china/common/a/c$a;->b:I

    iput v0, p0, Lcom/anythink/china/common/a/c;->j:I

    .line 49
    return-void
.end method

.method public final f()V
    .registers 2

    .prologue
    .line 52
    sget v0, Lcom/anythink/china/common/a/c$a;->d:I

    iput v0, p0, Lcom/anythink/china/common/a/c;->j:I

    .line 53
    return-void
.end method

.method public final g()V
    .registers 2

    .prologue
    .line 56
    sget v0, Lcom/anythink/china/common/a/c$a;->c:I

    iput v0, p0, Lcom/anythink/china/common/a/c;->j:I

    .line 57
    return-void
.end method
