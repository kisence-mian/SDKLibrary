.class public final Lcom/anythink/core/b/c/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/b/c/l$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/anythink/core/b/c/l;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 41
    iput-object p1, p0, Lcom/anythink/core/b/c/l;->d:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/anythink/core/b/c/l;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 49
    iput-object p1, p0, Lcom/anythink/core/b/c/l;->a:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/anythink/core/b/c/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 57
    iput-object p1, p0, Lcom/anythink/core/b/c/l;->b:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/anythink/core/b/c/l;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 65
    iput-object p1, p0, Lcom/anythink/core/b/c/l;->c:Ljava/lang/String;

    .line 66
    return-void
.end method
