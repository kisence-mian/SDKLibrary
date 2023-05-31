.class final Lcom/alphab/a/b/d$2;
.super Ljava/lang/Object;
.source "ReqPKGAndReportManager.java"

# interfaces
.implements Lcom/mintegral/msdk/base/common/f/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alphab/a/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alphab/a/b/d;


# direct methods
.method constructor <init>(Lcom/alphab/a/b/d;)V
    .registers 2

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alphab/a/b/d$2;->a:Lcom/alphab/a/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 4

    .prologue
    .line 90
    sget v0, Lcom/mintegral/msdk/base/common/f/a$a;->e:I

    if-ne p1, v0, :cond_1b

    iget-object v0, p0, Lcom/alphab/a/b/d$2;->a:Lcom/alphab/a/b/d;

    iget-object v0, v0, Lcom/alphab/a/b/d;->a:Landroid/content/Context;

    if-eqz v0, :cond_1b

    .line 91
    iget-object v0, p0, Lcom/alphab/a/b/d$2;->a:Lcom/alphab/a/b/d;

    iget-object v0, v0, Lcom/alphab/a/b/d;->h:Landroid/os/Handler;

    if-eqz v0, :cond_1b

    .line 92
    iget-object v0, p0, Lcom/alphab/a/b/d$2;->a:Lcom/alphab/a/b/d;

    iget-object v0, v0, Lcom/alphab/a/b/d;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alphab/a/b/d$2;->a:Lcom/alphab/a/b/d;

    iget v1, v1, Lcom/alphab/a/b/d;->d:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 95
    :cond_1b
    return-void
.end method
