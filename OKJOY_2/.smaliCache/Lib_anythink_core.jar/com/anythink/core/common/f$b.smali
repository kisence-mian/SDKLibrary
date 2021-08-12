.class final Lcom/anythink/core/common/f$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Lcom/anythink/core/common/d/d;

.field b:Z

.field final synthetic c:Lcom/anythink/core/common/f;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/f;Lcom/anythink/core/common/d/d;Z)V
    .registers 4

    .line 1272
    iput-object p1, p0, Lcom/anythink/core/common/f$b;->c:Lcom/anythink/core/common/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1273
    iput-object p2, p0, Lcom/anythink/core/common/f$b;->a:Lcom/anythink/core/common/d/d;

    .line 1274
    iput-boolean p3, p0, Lcom/anythink/core/common/f$b;->b:Z

    .line 1275
    return-void
.end method
