.class public final Lcom/anythink/core/common/d/f;
.super Lcom/anythink/core/common/d/u;


# instance fields
.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/anythink/core/common/d/u;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/anythink/core/common/d/f;->z:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/anythink/core/common/d/f;->z:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public final b()I
    .registers 2

    .line 27
    const/4 v0, 0x2

    return v0
.end method
