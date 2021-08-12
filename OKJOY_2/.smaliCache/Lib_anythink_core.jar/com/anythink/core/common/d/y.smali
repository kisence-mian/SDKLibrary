.class public final Lcom/anythink/core/common/d/y;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/common/d/y$a;
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

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/anythink/core/common/d/y;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/anythink/core/common/d/y;->d:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/anythink/core/common/d/y;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/anythink/core/common/d/y;->a:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/anythink/core/common/d/y;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/anythink/core/common/d/y;->b:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/anythink/core/common/d/y;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/anythink/core/common/d/y;->c:Ljava/lang/String;

    .line 69
    return-void
.end method
