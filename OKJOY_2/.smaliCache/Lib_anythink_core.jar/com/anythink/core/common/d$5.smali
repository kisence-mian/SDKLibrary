.class final Lcom/anythink/core/common/d$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/d;->a(Lcom/anythink/core/api/ATBaseAdAdapter;Ljava/lang/String;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/api/ATBaseAdAdapter;

.field final synthetic b:D

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/anythink/core/common/d;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/d;Lcom/anythink/core/api/ATBaseAdAdapter;DLjava/lang/String;)V
    .registers 6

    .line 1034
    iput-object p1, p0, Lcom/anythink/core/common/d$5;->d:Lcom/anythink/core/common/d;

    iput-object p2, p0, Lcom/anythink/core/common/d$5;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    iput-wide p3, p0, Lcom/anythink/core/common/d$5;->b:D

    iput-object p5, p0, Lcom/anythink/core/common/d$5;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 1037
    iget-object v0, p0, Lcom/anythink/core/common/d$5;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v0

    .line 1038
    iget-object v1, p0, Lcom/anythink/core/common/d$5;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {v1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getmUnitgroupInfo()Lcom/anythink/core/c/c$b;

    move-result-object v1

    .line 1040
    if-eqz v0, :cond_75

    if-nez v1, :cond_11

    goto :goto_75

    .line 1044
    :cond_11
    iget v2, v1, Lcom/anythink/core/c/c$b;->n:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    .line 1045
    return-void

    .line 1049
    :cond_17
    invoke-virtual {v0}, Lcom/anythink/core/common/d/d;->G()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_74

    invoke-virtual {v0}, Lcom/anythink/core/common/d/d;->G()Ljava/lang/String;

    move-result-object v2

    const-string v3, "4"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_30

    goto :goto_74

    .line 1054
    :cond_30
    iget-object v2, p0, Lcom/anythink/core/common/d$5;->d:Lcom/anythink/core/common/d;

    iget-wide v2, v2, Lcom/anythink/core/common/d;->j:D

    iget-wide v4, p0, Lcom/anythink/core/common/d$5;->b:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_47

    iget-object v2, p0, Lcom/anythink/core/common/d$5;->d:Lcom/anythink/core/common/d;

    iget-object v2, v2, Lcom/anythink/core/common/d;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/core/common/d$5;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 1055
    return-void

    .line 1058
    :cond_47
    invoke-virtual {v0}, Lcom/anythink/core/common/d/d;->y()I

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_50

    .line 1059
    return-void

    .line 1062
    :cond_50
    iget-object v2, p0, Lcom/anythink/core/common/d$5;->d:Lcom/anythink/core/common/d;

    iget-wide v3, p0, Lcom/anythink/core/common/d$5;->b:D

    iput-wide v3, v2, Lcom/anythink/core/common/d;->j:D

    .line 1063
    iget-object v2, p0, Lcom/anythink/core/common/d$5;->d:Lcom/anythink/core/common/d;

    iget-object v3, p0, Lcom/anythink/core/common/d$5;->c:Ljava/lang/String;

    iput-object v3, v2, Lcom/anythink/core/common/d;->k:Ljava/lang/String;

    .line 1065
    iget-object v2, p0, Lcom/anythink/core/common/d$5;->d:Lcom/anythink/core/common/d;

    iget-object v2, v2, Lcom/anythink/core/common/d;->i:Lcom/anythink/core/common/e;

    if-eqz v2, :cond_6e

    .line 1066
    iget-object v2, p0, Lcom/anythink/core/common/d$5;->d:Lcom/anythink/core/common/d;

    iget-object v2, v2, Lcom/anythink/core/common/d;->i:Lcom/anythink/core/common/e;

    invoke-virtual {v2}, Lcom/anythink/core/common/e;->cancel()V

    .line 1067
    iget-object v2, p0, Lcom/anythink/core/common/d$5;->d:Lcom/anythink/core/common/d;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/anythink/core/common/d;->i:Lcom/anythink/core/common/e;

    .line 1070
    :cond_6e
    iget-object v2, p0, Lcom/anythink/core/common/d$5;->d:Lcom/anythink/core/common/d;

    invoke-static {v2, v1, v0}, Lcom/anythink/core/common/d;->a(Lcom/anythink/core/common/d;Lcom/anythink/core/c/c$b;Lcom/anythink/core/common/d/d;)V

    .line 1071
    return-void

    .line 1050
    :cond_74
    :goto_74
    return-void

    .line 1041
    :cond_75
    :goto_75
    return-void
.end method
