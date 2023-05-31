.class final Lcom/mintegral/msdk/mtgnative/c/b$9;
.super Ljava/lang/Object;
.source "NativeController.java"

# interfaces
.implements Lcom/mintegral/msdk/base/common/f/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/mtgnative/c/b;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/view/View;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/mtgnative/c/b$f;

.field final synthetic b:Lcom/mintegral/msdk/mtgnative/c/b;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgnative/c/b;Lcom/mintegral/msdk/mtgnative/c/b$f;)V
    .registers 3

    .prologue
    .line 1631
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/b$9;->b:Lcom/mintegral/msdk/mtgnative/c/b;

    iput-object p2, p0, Lcom/mintegral/msdk/mtgnative/c/b$9;->a:Lcom/mintegral/msdk/mtgnative/c/b$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 4

    .prologue
    .line 1634
    sget v0, Lcom/mintegral/msdk/base/common/f/a$a;->e:I

    if-ne p1, v0, :cond_31

    .line 1635
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$9;->b:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->i(Lcom/mintegral/msdk/mtgnative/c/b;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$9;->b:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->i(Lcom/mintegral/msdk/mtgnative/c/b;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_31

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$9;->b:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->i(Lcom/mintegral/msdk/mtgnative/c/b;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$9;->a:Lcom/mintegral/msdk/mtgnative/c/b$f;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1636
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$9;->b:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->i(Lcom/mintegral/msdk/mtgnative/c/b;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$9;->a:Lcom/mintegral/msdk/mtgnative/c/b$f;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1639
    :cond_31
    return-void
.end method
