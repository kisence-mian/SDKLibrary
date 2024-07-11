.class final Lcom/anythink/core/common/g/a/a$2;
.super Lcom/anythink/core/common/g/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/g/a/a;->b(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/anythink/core/common/g/a/a;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/g/a/a;Ljava/lang/Runnable;)V
    .registers 3

    .line 130
    iput-object p1, p0, Lcom/anythink/core/common/g/a/a$2;->b:Lcom/anythink/core/common/g/a/a;

    iput-object p2, p0, Lcom/anythink/core/common/g/a/a$2;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/anythink/core/common/g/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/anythink/core/common/g/a/a$2;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 135
    return-void
.end method
