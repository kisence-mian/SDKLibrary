.class public final Lcom/anythink/china/common/a/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/china/common/a/e$a;
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

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field private volatile l:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget v0, Lcom/anythink/china/common/a/e$a;->a:I

    iput v0, p0, Lcom/anythink/china/common/a/e;->l:I

    return-void
.end method

.method private h()Z
    .registers 3

    .line 39
    iget v0, p0, Lcom/anythink/china/common/a/e;->l:I

    sget v1, Lcom/anythink/china/common/a/e$a;->d:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()Z
    .registers 3

    .line 31
    iget v0, p0, Lcom/anythink/china/common/a/e;->l:I

    sget v1, Lcom/anythink/china/common/a/e$a;->a:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Z
    .registers 3

    .line 35
    iget v0, p0, Lcom/anythink/china/common/a/e;->l:I

    sget v1, Lcom/anythink/china/common/a/e$a;->c:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .registers 3

    .line 43
    iget v0, p0, Lcom/anythink/china/common/a/e;->l:I

    sget v1, Lcom/anythink/china/common/a/e$a;->b:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final d()V
    .registers 2

    .line 47
    sget v0, Lcom/anythink/china/common/a/e$a;->a:I

    iput v0, p0, Lcom/anythink/china/common/a/e;->l:I

    .line 48
    return-void
.end method

.method public final e()V
    .registers 2

    .line 58
    sget v0, Lcom/anythink/china/common/a/e$a;->b:I

    iput v0, p0, Lcom/anythink/china/common/a/e;->l:I

    .line 59
    return-void
.end method

.method public final f()V
    .registers 2

    .line 62
    sget v0, Lcom/anythink/china/common/a/e$a;->d:I

    iput v0, p0, Lcom/anythink/china/common/a/e;->l:I

    .line 63
    return-void
.end method

.method public final g()V
    .registers 2

    .line 66
    sget v0, Lcom/anythink/china/common/a/e$a;->c:I

    iput v0, p0, Lcom/anythink/china/common/a/e;->l:I

    .line 67
    return-void
.end method
