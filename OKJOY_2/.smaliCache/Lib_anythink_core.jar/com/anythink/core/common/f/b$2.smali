.class final Lcom/anythink/core/common/f/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/e/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/f/b;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/f/b;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/anythink/core/common/f/b$2;->a:Lcom/anythink/core/common/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/anythink/core/common/f/b$2;->a:Lcom/anythink/core/common/f/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/anythink/core/common/f/b;->a(Lcom/anythink/core/common/f/b;Z)Z

    .line 101
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 6

    .line 91
    instance-of v0, p1, Lcom/anythink/core/common/e/a/a;

    if-eqz v0, :cond_26

    .line 92
    iget-object v0, p0, Lcom/anythink/core/common/f/b$2;->a:Lcom/anythink/core/common/f/b;

    check-cast p1, Lcom/anythink/core/common/e/a/a;

    invoke-virtual {p1}, Lcom/anythink/core/common/e/a/a;->a()I

    move-result p1

    invoke-static {v0, p1}, Lcom/anythink/core/common/f/b;->a(Lcom/anythink/core/common/f/b;I)V

    .line 93
    iget-object p1, p0, Lcom/anythink/core/common/f/b$2;->a:Lcom/anythink/core/common/f/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/anythink/core/common/f/b;->a(Lcom/anythink/core/common/f/b;Z)Z

    .line 94
    iget-object p1, p0, Lcom/anythink/core/common/f/b$2;->a:Lcom/anythink/core/common/f/b;

    invoke-static {p1}, Lcom/anythink/core/common/f/b;->a(Lcom/anythink/core/common/f/b;)Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "LOG_SEND_TIME"

    invoke-static {p1, v0, v3, v1, v2}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 96
    :cond_26
    return-void
.end method
