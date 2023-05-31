.class final Lcom/anythink/core/b/f/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/b/e/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/b/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    .prologue
    .line 59
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 8

    .prologue
    .line 63
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/anythink/core/b/f/b;->a(I)V

    .line 64
    invoke-static {}, Lcom/anythink/core/b/f/b;->a()Z

    .line 65
    invoke-static {}, Lcom/anythink/core/b/f/b;->b()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    const-string v2, "LOG_SEND_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v1, v2, v4, v5}, Lcom/anythink/core/b/g/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 66
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V
    .registers 3

    .prologue
    .line 70
    invoke-static {}, Lcom/anythink/core/b/f/b;->a()Z

    .line 71
    return-void
.end method

.method public final b()V
    .registers 1

    .prologue
    .line 75
    invoke-static {}, Lcom/anythink/core/b/f/b;->a()Z

    .line 76
    return-void
.end method
