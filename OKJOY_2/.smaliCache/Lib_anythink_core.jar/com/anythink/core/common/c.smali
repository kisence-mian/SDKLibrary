.class public final Lcom/anythink/core/common/c;
.super Ljava/lang/IllegalStateException;


# instance fields
.field public a:Lcom/anythink/core/api/AdError;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/anythink/core/common/c;->a:Lcom/anythink/core/api/AdError;

    .line 19
    iput-object p2, p0, Lcom/anythink/core/common/c;->b:Ljava/lang/String;

    .line 20
    return-void
.end method
