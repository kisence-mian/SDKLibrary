.class final Lcom/alphab/a/b/c$2;
.super Ljava/lang/Object;
.source "ReqCampaignManager.java"

# interfaces
.implements Lcom/mintegral/msdk/base/common/f/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alphab/a/b/c;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alphab/a/b/c;


# direct methods
.method constructor <init>(Lcom/alphab/a/b/c;)V
    .registers 2

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alphab/a/b/c$2;->a:Lcom/alphab/a/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 4

    .prologue
    .line 109
    sget v0, Lcom/mintegral/msdk/base/common/f/a$a;->e:I

    if-ne p1, v0, :cond_1b

    iget-object v0, p0, Lcom/alphab/a/b/c$2;->a:Lcom/alphab/a/b/c;

    iget-object v0, v0, Lcom/alphab/a/b/c;->a:Landroid/content/Context;

    if-eqz v0, :cond_1b

    .line 110
    iget-object v0, p0, Lcom/alphab/a/b/c$2;->a:Lcom/alphab/a/b/c;

    iget-object v0, v0, Lcom/alphab/a/b/c;->h:Landroid/os/Handler;

    if-eqz v0, :cond_1b

    .line 111
    iget-object v0, p0, Lcom/alphab/a/b/c$2;->a:Lcom/alphab/a/b/c;

    iget-object v0, v0, Lcom/alphab/a/b/c;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alphab/a/b/c$2;->a:Lcom/alphab/a/b/c;

    iget v1, v1, Lcom/alphab/a/b/c;->c:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 114
    :cond_1b
    return-void
.end method
