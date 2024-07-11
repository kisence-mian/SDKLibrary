.class final Lcom/anythink/core/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/a/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/a/a;


# direct methods
.method constructor <init>(Lcom/anythink/core/a/a;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/anythink/core/a/a$1;->a:Lcom/anythink/core/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 56
    iget-object v0, p0, Lcom/anythink/core/a/a$1;->a:Lcom/anythink/core/a/a;

    iget-object v0, v0, Lcom/anythink/core/a/a;->a:Lcom/anythink/core/common/c/f;

    iget-object v1, p0, Lcom/anythink/core/a/a$1;->a:Lcom/anythink/core/a/a;

    iget-object v1, v1, Lcom/anythink/core/a/a;->b:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/c/f;->a(Ljava/lang/String;)V

    .line 57
    return-void
.end method
