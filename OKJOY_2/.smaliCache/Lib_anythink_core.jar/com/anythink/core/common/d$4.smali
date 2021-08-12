.class final Lcom/anythink/core/common/d$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/d;->a(Lcom/anythink/core/c/c;Ljava/lang/String;ILjava/util/List;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/anythink/core/c/c;

.field final synthetic c:I

.field final synthetic d:J

.field final synthetic e:Ljava/util/List;

.field final synthetic f:Lcom/anythink/core/common/d;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/d;Ljava/lang/String;Lcom/anythink/core/c/c;IJLjava/util/List;)V
    .registers 8

    .line 974
    iput-object p1, p0, Lcom/anythink/core/common/d$4;->f:Lcom/anythink/core/common/d;

    iput-object p2, p0, Lcom/anythink/core/common/d$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/core/common/d$4;->b:Lcom/anythink/core/c/c;

    iput p4, p0, Lcom/anythink/core/common/d$4;->c:I

    iput-wide p5, p0, Lcom/anythink/core/common/d$4;->d:J

    iput-object p7, p0, Lcom/anythink/core/common/d$4;->e:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 14

    .line 977
    iget-object v0, p0, Lcom/anythink/core/common/d$4;->f:Lcom/anythink/core/common/d;

    invoke-static {v0}, Lcom/anythink/core/common/d;->f(Lcom/anythink/core/common/d;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitGroupInfo Finish HeadBidding Tracking"

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 980
    new-instance v1, Lcom/anythink/core/common/d/d;

    invoke-direct {v1}, Lcom/anythink/core/common/d/d;-><init>()V

    .line 981
    iget-object v2, p0, Lcom/anythink/core/common/d$4;->f:Lcom/anythink/core/common/d;

    iget-object v2, v2, Lcom/anythink/core/common/d;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/d/d;->q(Ljava/lang/String;)V

    .line 982
    iget-object v2, p0, Lcom/anythink/core/common/d$4;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/d/d;->r(Ljava/lang/String;)V

    .line 983
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/core/common/d$4;->b:Lcom/anythink/core/c/c;

    invoke-virtual {v3}, Lcom/anythink/core/c/c;->y()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/d/d;->s(Ljava/lang/String;)V

    .line 984
    iget-object v2, p0, Lcom/anythink/core/common/d$4;->b:Lcom/anythink/core/c/c;

    invoke-virtual {v2}, Lcom/anythink/core/c/c;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/d/d;->p(Ljava/lang/String;)V

    .line 985
    iget v2, p0, Lcom/anythink/core/common/d$4;->c:I

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/d/d;->n(I)V

    .line 986
    iget-wide v2, p0, Lcom/anythink/core/common/d$4;->d:J

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/common/d/d;->e(J)V

    .line 987
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/common/d/d;->f(J)V

    .line 988
    iget-object v2, p0, Lcom/anythink/core/common/d$4;->b:Lcom/anythink/core/c/c;

    invoke-virtual {v2}, Lcom/anythink/core/c/c;->p()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/d/d;->s(I)V

    .line 989
    iget-object v2, p0, Lcom/anythink/core/common/d$4;->b:Lcom/anythink/core/c/c;

    invoke-virtual {v2}, Lcom/anythink/core/c/c;->F()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/d/d;->p(I)V

    .line 993
    const/4 v2, 0x0

    move v3, v2

    :goto_65
    iget-object v4, p0, Lcom/anythink/core/common/d$4;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_e3

    .line 995
    iget-object v4, p0, Lcom/anythink/core/common/d$4;->e:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/core/c/c$b;

    .line 996
    iget-object v5, p0, Lcom/anythink/core/common/d$4;->f:Lcom/anythink/core/common/d;

    invoke-static {v5}, Lcom/anythink/core/common/d;->f(Lcom/anythink/core/common/d;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "UnitGroupInfo requestLevel:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " || layer:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2052
    iget v7, v4, Lcom/anythink/core/c/c$b;->A:I

    .line 996
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    :try_start_99
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1000
    const-string v6, "sortpriority"

    iget v7, v4, Lcom/anythink/core/c/c$b;->a:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_a6

    move v8, v3

    :cond_a6
    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1001
    const-string v6, "sorttype"

    iget v7, v4, Lcom/anythink/core/c/c$b;->n:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_b3

    iget v7, v4, Lcom/anythink/core/c/c$b;->q:I

    goto :goto_b4

    :cond_b3
    move v7, v8

    :goto_b4
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1002
    const-string v6, "unit_id"

    .line 2956
    iget-object v7, v4, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    .line 1002
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1003
    const-string v6, "bidresult"

    iget-wide v9, v4, Lcom/anythink/core/c/c$b;->m:D

    const-wide/16 v11, 0x0

    cmpl-double v7, v9, v11

    if-lez v7, :cond_c9

    goto :goto_ca

    :cond_c9
    move v8, v2

    :goto_ca
    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1004
    const-string v6, "bidprice"

    .line 2988
    iget-wide v7, v4, Lcom/anythink/core/c/c$b;->m:D

    .line 1004
    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1005
    const-string v6, "errormsg"

    .line 3012
    iget-object v4, v4, Lcom/anythink/core/c/c$b;->p:Ljava/lang/String;

    .line 1005
    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1006
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_de} :catch_df

    .line 1009
    goto :goto_e0

    .line 1007
    :catch_df
    move-exception v4

    .line 993
    :goto_e0
    add-int/lit8 v3, v3, 0x1

    goto :goto_65

    .line 1012
    :cond_e3
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/d/d;->n(Ljava/lang/String;)V

    .line 1014
    iget-object v0, p0, Lcom/anythink/core/common/d$4;->f:Lcom/anythink/core/common/d;

    iget-object v0, v0, Lcom/anythink/core/common/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object v0

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;)V

    .line 1015
    return-void
.end method
