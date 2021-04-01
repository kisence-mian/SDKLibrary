.class final Lcom/mintegral/msdk/d/a$1;
.super Lcom/mintegral/msdk/base/common/f/a;
.source "ShortCutsDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/d/a;->a(Landroid/content/Context;ILcom/mintegral/msdk/d/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/mintegral/msdk/d/a/a;

.field final synthetic c:I

.field final synthetic d:Lcom/mintegral/msdk/d/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/d/a;Landroid/content/Context;Lcom/mintegral/msdk/d/a/a;I)V
    .registers 5

    .prologue
    .line 55
    iput-object p1, p0, Lcom/mintegral/msdk/d/a$1;->d:Lcom/mintegral/msdk/d/a;

    iput-object p2, p0, Lcom/mintegral/msdk/d/a$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/mintegral/msdk/d/a$1;->b:Lcom/mintegral/msdk/d/a/a;

    iput p4, p0, Lcom/mintegral/msdk/d/a$1;->c:I

    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/f/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 7

    .prologue
    .line 58
    new-instance v1, Lcom/mintegral/msdk/d/b/a;

    iget-object v0, p0, Lcom/mintegral/msdk/d/a$1;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/mintegral/msdk/d/b/a;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v2, Lcom/mintegral/msdk/base/common/net/l;

    invoke-direct {v2}, Lcom/mintegral/msdk/base/common/net/l;-><init>()V

    .line 60
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 61
    if-nez v0, :cond_24

    .line 62
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 64
    :cond_24
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->j()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 66
    iget-object v0, p0, Lcom/mintegral/msdk/d/a$1;->b:Lcom/mintegral/msdk/d/a/a;

    invoke-interface {v0}, Lcom/mintegral/msdk/d/a/a;->a()V

    .line 111
    :goto_33
    return-void

    .line 69
    :cond_34
    const-string v3, "app_id"

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v3, "sign"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mintegral/msdk/base/controller/a;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mintegral/msdk/base/utils/CommonMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v3, "jm_a"

    iget-object v4, p0, Lcom/mintegral/msdk/d/a$1;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/mintegral/msdk/d/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/d/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mintegral/msdk/d/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v3, "jm_n"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mintegral/msdk/d/a$1;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/mintegral/msdk/d/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/d/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mintegral/msdk/d/b;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v3, "jm_l"

    iget-object v4, p0, Lcom/mintegral/msdk/d/a$1;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/mintegral/msdk/d/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/d/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mintegral/msdk/d/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v3, "unit_id"

    invoke-virtual {v2, v3, v0}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v3

    .line 76
    invoke-static {v3}, Lcom/mintegral/msdk/base/b/f;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/f;

    move-result-object v3

    .line 78
    const-string v4, "jm_dp_ads"

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/b/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v3, "req_type"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/mintegral/msdk/d/a$1;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v3, "ad_type"

    const-string v4, "289"

    invoke-virtual {v2, v3, v4}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 82
    new-instance v3, Lcom/mintegral/msdk/d/a$1$1;

    invoke-direct {v3, p0}, Lcom/mintegral/msdk/d/a$1$1;-><init>(Lcom/mintegral/msdk/d/a$1;)V

    .line 1044
    iput-object v0, v3, Lcom/mintegral/msdk/base/common/net/a/a;->d:Ljava/lang/String;

    .line 109
    sget-object v0, Lcom/mintegral/msdk/base/common/a;->k:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/mintegral/msdk/d/b/a;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/l;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;

    .line 110
    invoke-static {}, Landroid/os/Looper;->loop()V

    goto/16 :goto_33
.end method

.method public final b()V
    .registers 1

    .prologue
    .line 116
    return-void
.end method
