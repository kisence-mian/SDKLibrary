.class final Lcom/alphab/i/a$2;
.super Lcom/mintegral/msdk/base/common/f/a;
.source "AlphabImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alphab/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alphab/i/a;


# direct methods
.method constructor <init>(Lcom/alphab/i/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 330
    iput-object p1, p0, Lcom/alphab/i/a$2;->d:Lcom/alphab/i/a;

    iput-object p2, p0, Lcom/alphab/i/a$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alphab/i/a$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alphab/i/a$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/f/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    .line 333
    const/4 v0, 0x3

    .line 334
    iget-object v1, p0, Lcom/alphab/i/a$2;->d:Lcom/alphab/i/a;

    invoke-static {v1}, Lcom/alphab/i/a;->b(Lcom/alphab/i/a;)Lcom/mintegral/msdk/c/a;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 335
    iget-object v0, p0, Lcom/alphab/i/a$2;->d:Lcom/alphab/i/a;

    invoke-static {v0}, Lcom/alphab/i/a;->b(Lcom/alphab/i/a;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->am()I

    move-result v0

    .line 337
    :cond_13
    new-instance v1, Lcom/alphab/b/a;

    iget-object v2, p0, Lcom/alphab/i/a$2;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/alphab/b/a;-><init>(Ljava/lang/String;I)V

    .line 338
    new-instance v0, Lcom/alphab/i/a$2$1;

    invoke-direct {v0, p0}, Lcom/alphab/i/a$2$1;-><init>(Lcom/alphab/i/a$2;)V

    invoke-virtual {v1, v0}, Lcom/alphab/b/a;->a(Lcom/alphab/b/b;)V

    .line 349
    invoke-virtual {v1}, Lcom/alphab/b/a;->a()V

    .line 350
    return-void
.end method

.method public final b()V
    .registers 1

    .prologue
    .line 355
    return-void
.end method
