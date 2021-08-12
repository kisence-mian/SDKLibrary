.class public abstract Lcom/anythink/basead/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/d/b;


# static fields
.field private static final a:I = 0x3e8

.field private static final b:I = 0x32


# instance fields
.field private c:Z

.field private d:I

.field private e:I

.field private f:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/anythink/basead/d/a;->d:I

    .line 30
    const/16 v0, 0x32

    iput v0, p0, Lcom/anythink/basead/d/a;->e:I

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/basead/d/a;->f:Ljava/lang/Integer;

    .line 32
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final b()I
    .registers 2

    .line 39
    iget v0, p0, Lcom/anythink/basead/d/a;->e:I

    return v0
.end method

.method public final c()I
    .registers 2

    .line 44
    iget v0, p0, Lcom/anythink/basead/d/a;->d:I

    return v0
.end method

.method public final d()Ljava/lang/Integer;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/anythink/basead/d/a;->f:Ljava/lang/Integer;

    return-object v0
.end method

.method public final e()Z
    .registers 2

    .line 54
    iget-boolean v0, p0, Lcom/anythink/basead/d/a;->c:Z

    return v0
.end method

.method public final f()V
    .registers 2

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/d/a;->c:Z

    .line 60
    return-void
.end method
