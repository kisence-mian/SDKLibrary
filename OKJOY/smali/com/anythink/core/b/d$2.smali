.class final Lcom/anythink/core/b/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/d;->a(Lcom/anythink/core/b/a/b;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/b/a/b;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/anythink/core/b/d;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/d;Lcom/anythink/core/b/a/b;ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/anythink/core/b/d$2;->d:Lcom/anythink/core/b/d;

    iput-object p2, p0, Lcom/anythink/core/b/d$2;->a:Lcom/anythink/core/b/a/b;

    iput p3, p0, Lcom/anythink/core/b/d$2;->b:I

    iput-object p4, p0, Lcom/anythink/core/b/d$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/anythink/core/b/d$2;->a:Lcom/anythink/core/b/a/b;

    invoke-virtual {v0}, Lcom/anythink/core/b/a/b;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v0

    .line 1047
    iget-object v1, p0, Lcom/anythink/core/b/d$2;->a:Lcom/anythink/core/b/a/b;

    invoke-virtual {v1}, Lcom/anythink/core/b/a/b;->getmUnitgroupInfo()Lcom/anythink/core/c/c$b;

    move-result-object v1

    .line 1050
    iget-object v2, p0, Lcom/anythink/core/b/d$2;->d:Lcom/anythink/core/b/d;

    iget v2, v2, Lcom/anythink/core/b/d;->l:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_28

    iget-object v2, p0, Lcom/anythink/core/b/d$2;->d:Lcom/anythink/core/b/d;

    iget v2, v2, Lcom/anythink/core/b/d;->l:I

    iget v3, p0, Lcom/anythink/core/b/d$2;->b:I

    if-ge v2, v3, :cond_28

    iget-object v2, p0, Lcom/anythink/core/b/d$2;->d:Lcom/anythink/core/b/d;

    iget-object v2, v2, Lcom/anythink/core/b/d;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/core/b/d$2;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1071
    :cond_27
    :goto_27
    return-void

    .line 1054
    :cond_28
    if-eqz v0, :cond_27

    if-eqz v1, :cond_27

    .line 1058
    invoke-virtual {v0}, Lcom/anythink/core/b/c/b;->x()I

    move-result v2

    const/16 v3, 0x23

    if-eq v2, v3, :cond_27

    .line 1062
    iget-object v2, p0, Lcom/anythink/core/b/d$2;->d:Lcom/anythink/core/b/d;

    iget v3, p0, Lcom/anythink/core/b/d$2;->b:I

    iput v3, v2, Lcom/anythink/core/b/d;->l:I

    .line 1063
    iget-object v2, p0, Lcom/anythink/core/b/d$2;->d:Lcom/anythink/core/b/d;

    iget-object v3, p0, Lcom/anythink/core/b/d$2;->c:Ljava/lang/String;

    iput-object v3, v2, Lcom/anythink/core/b/d;->m:Ljava/lang/String;

    .line 1065
    iget-object v2, p0, Lcom/anythink/core/b/d$2;->d:Lcom/anythink/core/b/d;

    iget-object v2, v2, Lcom/anythink/core/b/d;->k:Lcom/anythink/core/b/e;

    if-eqz v2, :cond_52

    .line 1066
    iget-object v2, p0, Lcom/anythink/core/b/d$2;->d:Lcom/anythink/core/b/d;

    iget-object v2, v2, Lcom/anythink/core/b/d;->k:Lcom/anythink/core/b/e;

    invoke-virtual {v2}, Lcom/anythink/core/b/e;->cancel()V

    .line 1067
    iget-object v2, p0, Lcom/anythink/core/b/d$2;->d:Lcom/anythink/core/b/d;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/anythink/core/b/d;->k:Lcom/anythink/core/b/e;

    .line 1070
    :cond_52
    iget-object v2, p0, Lcom/anythink/core/b/d$2;->d:Lcom/anythink/core/b/d;

    invoke-virtual {v2, v1, v0}, Lcom/anythink/core/b/d;->a(Lcom/anythink/core/c/c$b;Lcom/anythink/core/b/c/b;)V

    goto :goto_27
.end method
