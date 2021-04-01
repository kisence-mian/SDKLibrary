.class final Lcom/mintegral/msdk/d/b$4;
.super Ljava/lang/Object;
.source "ShortCutsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/mintegral/msdk/d/b;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/d/b;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 736
    iput-object p1, p0, Lcom/mintegral/msdk/d/b$4;->b:Lcom/mintegral/msdk/d/b;

    iput-object p2, p0, Lcom/mintegral/msdk/d/b$4;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    .line 739
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 740
    if-nez v0, :cond_18

    .line 741
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 743
    :cond_18
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->h()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2f

    .line 745
    invoke-static {}, Lcom/mintegral/msdk/d/a;->a()Lcom/mintegral/msdk/d/a;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/d/b$4;->a:Landroid/content/Context;

    sget v3, Lcom/mintegral/msdk/d/a;->c:I

    new-instance v4, Lcom/mintegral/msdk/d/b$4$1;

    invoke-direct {v4, p0, v0}, Lcom/mintegral/msdk/d/b$4$1;-><init>(Lcom/mintegral/msdk/d/b$4;Lcom/mintegral/msdk/c/a;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/mintegral/msdk/d/a;->a(Landroid/content/Context;ILcom/mintegral/msdk/d/a/a;)V

    .line 765
    :cond_2f
    return-void
.end method
