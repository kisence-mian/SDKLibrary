.class public final Lcom/anythink/core/b/c;
.super Ljava/lang/IllegalStateException;


# instance fields
.field public a:Lcom/anythink/core/api/AdError;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/anythink/core/b/c;->a:Lcom/anythink/core/api/AdError;

    .line 12
    iput-object p2, p0, Lcom/anythink/core/b/c;->b:Ljava/lang/String;

    .line 13
    return-void
.end method
