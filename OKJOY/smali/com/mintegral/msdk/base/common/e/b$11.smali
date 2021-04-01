.class final Lcom/mintegral/msdk/base/common/e/b$11;
.super Lcom/mintegral/msdk/base/common/e/d/b;
.source "ReportController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/base/common/e/b;->a(Lcom/mintegral/msdk/base/entity/o;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/base/entity/o;

.field final synthetic b:Ljava/lang/Boolean;

.field final synthetic c:Lcom/mintegral/msdk/base/common/e/b;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/base/common/e/b;Lcom/mintegral/msdk/base/entity/o;Ljava/lang/Boolean;)V
    .registers 4

    .prologue
    .line 140
    iput-object p1, p0, Lcom/mintegral/msdk/base/common/e/b$11;->c:Lcom/mintegral/msdk/base/common/e/b;

    iput-object p2, p0, Lcom/mintegral/msdk/base/common/e/b$11;->a:Lcom/mintegral/msdk/base/entity/o;

    iput-object p3, p0, Lcom/mintegral/msdk/base/common/e/b$11;->b:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/e/d/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 159
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 144
    sget-object v0, Lcom/mintegral/msdk/base/common/e/b;->a:Ljava/lang/String;

    const-string v1, "report success"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/e/b$11;->c:Lcom/mintegral/msdk/base/common/e/b;

    invoke-static {v0}, Lcom/mintegral/msdk/base/common/e/b;->a(Lcom/mintegral/msdk/base/common/e/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/r;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/base/common/e/b$11;->a:Lcom/mintegral/msdk/base/entity/o;

    .line 147
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/o;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/b/r;->a(Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/e/b$11;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 149
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/e/b$11;->c:Lcom/mintegral/msdk/base/common/e/b;

    invoke-static {v0}, Lcom/mintegral/msdk/base/common/e/b;->a(Lcom/mintegral/msdk/base/common/e/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/r;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/r;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/b/r;->d()I

    move-result v0

    .line 151
    const/16 v1, 0x14

    if-le v0, v1, :cond_43

    .line 152
    invoke-static {}, Lcom/mintegral/msdk/base/controller/b;->a()Lcom/mintegral/msdk/base/controller/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/b;->c()V

    .line 155
    :cond_43
    return-void
.end method
