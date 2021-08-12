.class public final Lcom/anythink/core/common/d/m;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/anythink/core/common/d/m;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/anythink/core/common/d/m;->d:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/anythink/core/common/d/m;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/anythink/core/common/d/m;->a:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/anythink/core/common/d/m;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/anythink/core/common/d/m;->b:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/anythink/core/common/d/m;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/anythink/core/common/d/m;->c:Ljava/lang/String;

    .line 46
    return-void
.end method
