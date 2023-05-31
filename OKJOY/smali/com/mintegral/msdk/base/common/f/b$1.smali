.class final Lcom/mintegral/msdk/base/common/f/b$1;
.super Ljava/lang/Object;
.source "CommonTaskLoader.java"

# interfaces
.implements Lcom/mintegral/msdk/base/common/f/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/base/common/f/b;->b(Lcom/mintegral/msdk/base/common/f/a;Lcom/mintegral/msdk/base/common/f/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/base/common/f/a;

.field final synthetic b:Lcom/mintegral/msdk/base/common/f/a$b;

.field final synthetic c:Lcom/mintegral/msdk/base/common/f/b;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/base/common/f/b;Lcom/mintegral/msdk/base/common/f/a;Lcom/mintegral/msdk/base/common/f/a$b;)V
    .registers 4

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mintegral/msdk/base/common/f/b$1;->c:Lcom/mintegral/msdk/base/common/f/b;

    iput-object p2, p0, Lcom/mintegral/msdk/base/common/f/b$1;->a:Lcom/mintegral/msdk/base/common/f/a;

    iput-object p3, p0, Lcom/mintegral/msdk/base/common/f/b$1;->b:Lcom/mintegral/msdk/base/common/f/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 6

    .prologue
    .line 84
    sget v0, Lcom/mintegral/msdk/base/common/f/a$a;->d:I

    if-ne p1, v0, :cond_1d

    .line 85
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/f/b$1;->c:Lcom/mintegral/msdk/base/common/f/b;

    iget-object v0, v0, Lcom/mintegral/msdk/base/common/f/b;->b:Ljava/util/HashMap;

    invoke-static {}, Lcom/mintegral/msdk/base/common/f/a;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/f/b$1;->b:Lcom/mintegral/msdk/base/common/f/a$b;

    if-eqz v0, :cond_1c

    .line 95
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/f/b$1;->b:Lcom/mintegral/msdk/base/common/f/a$b;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/base/common/f/a$b;->a(I)V

    .line 97
    :cond_1c
    return-void

    .line 86
    :cond_1d
    sget v0, Lcom/mintegral/msdk/base/common/f/a$a;->e:I

    if-ne p1, v0, :cond_31

    .line 87
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/f/b$1;->c:Lcom/mintegral/msdk/base/common/f/b;

    iget-object v0, v0, Lcom/mintegral/msdk/base/common/f/b;->b:Ljava/util/HashMap;

    invoke-static {}, Lcom/mintegral/msdk/base/common/f/a;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 88
    :cond_31
    sget v0, Lcom/mintegral/msdk/base/common/f/a$a;->b:I

    if-ne p1, v0, :cond_13

    .line 89
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/f/b$1;->c:Lcom/mintegral/msdk/base/common/f/b;

    iget-object v0, v0, Lcom/mintegral/msdk/base/common/f/b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 90
    if-nez v0, :cond_13

    .line 91
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/f/b$1;->c:Lcom/mintegral/msdk/base/common/f/b;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/common/f/b;->a()V

    goto :goto_13
.end method
